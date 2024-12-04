#!/bin/bash
# ./misc/run-retest-with-cast.sh < misc/simple-test-out-matrixed-w-block.json 2>&1 | tee -a local-test-oct-1-1.logs
# find /tmp -type f -newer /tmp/.retest-resume-d1c13e3e28572fa775ccc4df25307913069300677c6745f9df8b739dd833c236 -name '.retest-resume-*' | xargs rm

# TODO add some kind of basefee check with the legacy_flag. Right now the base fee can get insanely high.

# m/44'/60'/0'/0/5
private_key="0x9b51fb87ec3b44c2207314b28a6757844d9093337c76aeac8099651d2d52a220"
# rpc_url="$(kurtosis port print cdk cdk-erigon-sequencer-001 rpc)"
rpc_url=https://rpc.internal.zkevm-rpc.com
eth_address=$(cast wallet address --private-key $private_key)
tester_addr=0xfBE07a394847c26b1d998B6e44EE78A9C8191f13
test_actions="0001 0002 0003 0004 0011 0012 0013 0014 0021 0022 0023 0024 0031 0032 0033 0034 0041 0042 0043 0044 0101 0201 0301 0401 0501 0601 0701 0801 0901 1011 1012 1013 1014 2011 2012 2013 2014"

# Nonce Purge
# polycli loadtest --mode t --private-key $private_key --requests 10 --rate-limit 500 --verbosity 700 --rpc-url $rpc_url --legacy --gas-limit 21000 --gas-price 2000000000 --concurrency 250 --eth-amount 0.000000000000000001

legacy_flag="--legacy"
# legacy_flag=""
clean_up="true"
cast_timeout="20"

function print_warning() {
    >&2 echo -e "\e[41m\e[97m$1\e[0m"
}

function normalize_address() {
    sed 's/0x//' |
        tr '[:upper:]' '[:lower:]'
}

function hex_to_dec() {
    hex_in=$(sed 's/0x//' | tr '[:lower:]' '[:upper:]')
    dec_val=$(bc <<< "ibase=16; $hex_in")
    echo "$dec_val"
}

function mark_progress() {
    local bn
    local cur_time
    local test_name
    local test_file
    local test_hash
    local test_counter

    test_name=$1
    test_file=$2
    test_hash=$3
    test_counter=$4

    bn=$(cast block-number --rpc-url "$rpc_url")
    cur_time=$(date -R)
    >&2 printf "\n\n"
    >&2 echo "################################################################################"
    >&2 echo "Starting test #$test_counter $test_name at block $bn at $cur_time"
    >&2 echo "Test source $test_file with test lock /tmp/.retest-resume-$test_hash"
    >&2 echo "################################################################################"
}


function increment_nonce() {
    # Lock the file, update the nonce, and unlock
    nonce_file=$1

    nonce=$(flock "$nonce_file" -c "nonce=\$(cat $nonce_file); echo \$((nonce + 1)) > $nonce_file; echo \$nonce")
    echo $nonce
    >&2 echo "INCREMENTED NONCE: $nonce"
}

function process_test_item() {
    local testfile
    local test_hash
    local test_name
    local tmp_dir
    local nonce
    local count
    local test_counter

    testfile=$1
    test_counter=$2

    test_hash=$(sha256sum "$testfile" | sed 's/ .*//')
    touch "/tmp/.retest-resume-$test_hash"

    test_name=$(jq -r '.testCases[0].name' "$testfile")
    mark_progress "$test_name" "$testfile" "$test_hash" "$test_counter"

    tmp_dir=$(mktemp -p /tmp -d retest-work-XXXXXXXXXXXX)
    pushd "$tmp_dir" || exit 1

    count=0
    jq -c '.dependencies[]' "$testfile" | while read -r pre ; do
        local reference_address
        local code_to_deploy

        count=$((count+1))
        echo "$pre" | jq '.' > "dep-$count.json"
        code_to_deploy=$(jq -r '.code' "dep-$count.json")
        reference_address=$(jq -r '.addr' "dep-$count.json" | normalize_address)
        >&2 echo "deploying dependency $count for $reference_address"
        nonce=$(increment_nonce $nonce_tmp_file)
        >&2 echo "current nonce: $nonce"

        set -x
        # shellcheck disable=SC2086
        cast send --gas-price 1000000000 $legacy_flag --timeout "$cast_timeout" --async --nonce "$nonce" --rpc-url "$rpc_url" --private-key "$private_key" --create "$code_to_deploy" | tee "$reference_address.txhash"
        set +x
        cast compute-address --nonce "$nonce" "$wallet_address" | sed 's/^.*0x/0x/' > "$reference_address.actual"

        # this particular call is not part of the typical retest execution. But since we're not entirely accurate, i think it makes sense to do some heavy calls to the dependencies with random inputs
        cast send --gas-price 1000000000 $legacy_flag --timeout "$cast_timeout" --async --nonce $(increment_nonce $nonce_tmp_file) --rpc-url $rpc_url --value 10 --gas-limit 2000000 --private-key $private_key $(cat $reference_address.actual | sed 's/0x//')
        for test_action in $test_actions ; do
            cast send --gas-price 1000000000 $legacy_flag --timeout "$cast_timeout" --async --nonce $(increment_nonce $nonce_tmp_file) --rpc-url $rpc_url --value 10 --gas-limit 2000000 --private-key $private_key $tester_addr \
                "000000000000000000000000000000000000000000000000000000000000"$test_action"000000000000000000000000"$(cat $reference_address.actual | sed 's/0x//')"000000000000000000000000000000000000000000000000000000000000000F"
        done
    done


    count=0
    jq -c '.testCases[]' "$testfile" | while read -r "test_case" ; do
        local name
        local addr
        local gas
        local val

        count=$((count+1))
        echo "$test_case" | jq '.' > "test_case_$count.json"
        tx_input=$(jq -r '.input' test_case_$count.json)
        name=$(jq -r '.name' test_case_$count.json)
        addr=$(jq -r '.to' test_case_$count.json | normalize_address)
        gas=$(jq -r '.gas' test_case_$count.json) # this value can be obscenely high in the test cases
        val=$(jq -r '.value' test_case_$count.json)
        val_arg=""
        if [[ $val != "0x0" ]] ; then
            dec_val=$(echo "$val" | hex_to_dec)
            val_arg=" --value $dec_val "
        fi

        gas_arg=""
        if [[ $gas != "" ]] ; then
            dec_val=$(echo "$gas" | hex_to_dec)
            valid_gas=$(bc <<< "$dec_val < 30000000 && $dec_val > 0")
            if [[ $valid_gas == "1" ]] ; then
                gas_arg=" --gas-limit $dec_val "
            else
                # gas_arg=" --gas-limit $gas_limit "
                # in the case where the test defined gas limit is too big, we'll do an estimate
                gas_arg=""
            fi
        fi

        local to_addr_arg=""
        if [[ $addr == "0x0000000000000000000000000000000000000000" || $addr == "" || $addr == "0000000000000000000000000000000000000000" ]] ; then
            if [[ $tx_input == "" ]]; then
                print_warning "The test $name case $count seems to have a create with an empty data... skiping"
                continue
            fi
            to_addr_arg=" --create "
        else
            if [[ ! -e $addr.actual ]]; then
                print_warning "the test file $addr.actual does not seem to exist... skipping"
                continue
            fi
            resolved_address=$(cat "$addr.actual")
            to_addr_arg=" $resolved_address "
        fi

        >&2 echo "executing tx $count for $name to alias of $addr"
        nonce=$(increment_nonce $nonce_tmp_file)
        >&2 echo "current nonce: $nonce"

        set -x
        # shellcheck disable=SC2086
        cast send --gas-price 1000000000 $legacy_flag --timeout "$cast_timeout" --async --nonce "$nonce" --rpc-url "$rpc_url" --private-key "$private_key" $gas_arg $val_arg $to_addr_arg $tx_input | tee "tx-$count-out.json"
        ret_code=$?
        set +x
        if [[ $ret_code -ne 0 ]]; then
            print_warning "it looks like this request timed out.. it might be worth checking?!"
        fi
    done

    # avoid creating too any jobs by sending a synchronous transaction. This is deliberate not configured with a timeout, it should block until the nonce is cleared
    cast send --gas-price 1000000000 $legacy_flag --timeout "$cast_timeout" --nonce "$(increment_nonce $nonce_tmp_file)" --rpc-url "$rpc_url" --private-key "$private_key" --value 1 "$wallet_address"

    popd || exit 1

    if [[ $clean_up == "true" ]] ; then
        rm -rf "$tmp_dir"
        rm "$testfile"
    fi
}

function fill_nonce_holes() {
    local last_block_number=""
    local current_block_number=""
    local scaled_gas_price="1000000000"
    while true; do
        sleep 1
        if [[ ! -e $nonce_loop_file ]]; then
            break
        fi
        current_block_number=$(cast block-number --rpc-url $rpc_url)
        if [[ $last_block_number -ne $current_block_number ]]; then
            last_block_number=$current_block_number
            tx_count=$(cast block --rpc-url $rpc_url --json | jq '.transactions | length')
            if [[ $tx_count == "0" ]]; then
                peeked_nonce=$(<$nonce_tmp_file)
                current_nonce=$(cast nonce --rpc-url $rpc_url "$wallet_address")
                gap=$((peeked_nonce-current_nonce))
                if [[ $gap -gt 1 ]]; then
                    echo "There is some nonce gap"
                    set -x
                    polycli loadtest \
                            $legacy_flag \
                            --mode t \
                            --nonce $current_nonce \
                            --private-key $private_key \
                            --requests $gap \
                            --rate-limit 500 \
                            --verbosity 700 \
                            --rpc-url $rpc_url \
                            --gas-limit 21000 \
                            --concurrency 1 \
                            --blocks-to-wait 2 \
                            --gas-price "$scaled_gas_price" \
                            --eth-amount 0.000000000000000001
                    set +x
                    scaled_gas_price=$(bc <<< "$scaled_gas_price * 4 / 3")
                    continue
                fi
            fi
        fi
        scaled_gas_price="1000000000"
    done
}

wallet_address=$(cast wallet address --private-key "$private_key")
wallet_balance=$(cast balance --rpc-url $rpc_url "$wallet_address")
wallet_nonce=$(cast nonce --rpc-url $rpc_url "$wallet_address")
nonce_tmp_file=$(mktemp -p /tmp retest-nonce-XXXXXXXXXXXX)
nonce_loop_file=$(mktemp -p /tmp retest-nonce-check-XXXXXXXXXXXX)

echo $wallet_nonce > $nonce_tmp_file
>&2 echo "Address $wallet_address has a balance of $wallet_balance and nonce $wallet_nonce"

touch $nonce_loop_file

trap "rm $nonce_loop_file; exit" SIGINT

fill_nonce_holes &

test_counter=0
# Break down each test into different files
jq -c '.[]' | shuf | while read -r test_item ; do

    while [[ $(cast rpc --rpc-url $rpc_url txpool_status | jq -r '.pending + " " + .queued' | perl -n -e '$_ =~ /(0x.*) (0x.*)/; print hex($1) + hex($2)') -gt 10000 ]]; do
        echo "There appear to be more than 5000 pending txs... pausing"
        sleep 10
    done

    testfile=$(mktemp -p /tmp retest-item-jq-XXXXXXXXXXXX)
    echo "$test_item" > "$testfile"
    test_counter=$((test_counter+1))

    test_hash=$(sha256sum "$testfile" | sed 's/ .*//')
    if [[ -e "/tmp/.retest-resume-$test_hash" ]]; then
        >&2 echo "it looks like we have already tested this case. Skipping"
        continue
    fi

    log_file="$(mktemp -p /tmp process-log-XXXXXXXX)"

    # Run the test in the background and redirect its output to the log file
    (
        process_test_item "$testfile" "$test_counter" &> "$log_file"
        dt=$(date -Is)
        awk -v pid=$$ -v dt=$dt '{print dt "\t" pid "\t" $0}' "$log_file" >&2
        rm $log_file
    ) &

    if [[ $(jobs -r -p | wc -l) -ge 4 ]]; then
        echo "waiting for some tests to finish"
        wait -n  # Wait for any job to finish before continuing
    fi
done


rm $nonce_loop_file

sleep 30
# Nonce Purge
# polycli loadtest --mode t --private-key $private_key --requests 10 --rate-limit 500 --verbosity 700 --rpc-url $rpc_url --legacy --gas-limit 21000 --gas-price 2000000000 --concurrency 250
