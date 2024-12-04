################################################################################
################################################################################
# Initial setup and contract deployment
################################################################################
################################################################################
echo "don't run this script in it's entirety"
exit 1;

# run the script to convert fuzzed values to deployable contracts
./scripts/go-fuzz-test-to-script.sh

# move into that directory
pushd /home/john/code/jhilliard/evm-testing/tmp.PaVz9LmSiM


private_key="0x54c44c91ffb77239eac09c97fba85298c4efcea510be12b34028ff75dd52939f"
# rpc_url="$(kurtosis port print cdk cdk-erigon-sequencer-001 rpc)"
rpc_url="http://172.16.0.57:8123"
eth_address=$(cast wallet address --private-key $private_key)
tester_addr=0xfBE07a394847c26b1d998B6e44EE78A9C8191f13

gas_tx_args="--legacy --gas-price 6000000001"
# gas_tx_args="--gas-price 1gwei --priority-gas-price 1gwei"
# gas_tx_args=""

# try to deploy all of the contracts
nonce=$(cast nonce --rpc-url $rpc_url $eth_address)
start_nonce=$nonce
find . -type f -name '*.bin' | grep deploy | sort -r | while read -r cname; do
    cast send $gas_tx_args --async --nonce $nonce --rpc-url $rpc_url --private-key $private_key --create $(cat $cname);
    nonce=$((nonce+1));
done

# At this point wait until verything is deployed properly





## WAIT
current_nonce=$(cast nonce --block pending --rpc-url $rpc_url $eth_address)
end_nonce=$current_nonce

echo $start_nonce > start.nonce
echo $end_nonce > end.nonce
test_actions="0001 0002 0003 0004 0011 0012 0013 0014 0021 0022 0023 0024 0031 0032 0033 0034 0041 0042 0043 0044 0101 0201 0301 0401 0501 0601 0701 0801 0901 1011 1012 1013 1014 2011 2012 2013 2014"

gas_price=10gwei
echo $current_nonce > nonce.number

function increment_nonce() {
    # Lock the file, update the nonce, and unlock
    nonce_file="nonce.number"

    nonce=$(flock "$nonce_file" -c "nonce=\$(cat $nonce_file); echo \$((nonce + 1)) > $nonce_file; echo \$nonce")
    echo $nonce
    >&2 echo "INCREMENTED NONCE: $nonce"
}

# since i've run this few times i'm going to shuffle the order to see if anything new turns up
seq $(cat start.nonce) $(cat end.nonce) | shuf | while read -r contract_nonce; do
    (
        trap "exit" SIGINT
        addr=$(cast compute-address --nonce $contract_nonce $eth_address | sed 's/.*: //')

        while [[ $(cast rpc --rpc-url $rpc_url txpool_status | jq -r '.pending + " " + .queued' | perl -n -e '$_ =~ /(0x.*) (0x.*)/; print hex($1) + hex($2)') -gt 5000 ]]; do
            echo "There appear to be more than 5000 pending txs... pausing"
            sleep 10
        done

        for tx_value in 0 1 10 ; do
            for gas_limit in 50000 100000 200000 500000 1000000 2000000 5000000 10000000 29999999 ; do
                cast send $gas_tx_args --async --nonce $(increment_nonce) --rpc-url $rpc_url --value $tx_value --gas-limit $gas_limit --private-key $private_key $addr
            done
        done

        for test_action in $test_actions ; do
            cast send $gas_tx_args --async --nonce $(increment_nonce) --rpc-url $rpc_url --value 10 --gas-limit 200000 --private-key $private_key $tester_addr \
                "000000000000000000000000000000000000000000000000000000000000"$test_action"000000000000000000000000"$(echo $addr | sed 's/0x//')"000000000000000000000000000000000000000000000000000000000000000F"
        done
    ) &

    if [[ $(jobs -r -p | wc -l) -ge 1 ]]; then
        echo "waiting"
        wait -n  # Wait for any job to finish before continuing
    fi
done


# watch the logs
# kurtosis service logs erigon01 sequencer001 --follow | grep -v Served | grep --line-buffered --color=always -e "^" -e "WARN" -e "EROR"
# 2>&1 docker logs --follow sequencer001--d8bccc0a20214f67920b8446dce65690 | grep -v -e "Gas estimation capped by limited funds" -e "cdk-metric" -e "Caller gas above allowance, capping" -e "Served" | grep -i -e "EROR" -e "WARN"
################################################################################
################################################################################
# This is the nonce clearing script (it requires txpool access)
################################################################################
################################################################################

echo "1000000000" > .tmp.gas.price
while true ; do
    cast rpc --rpc-url $rpc_url txpool_content | jq -r ".pending + .queued + .baseFee | .[\"$eth_address\"] | to_entries[].value.nonce" > known-nonces.txt
    if [[ $? -ne 0 ]]; then
        echo "no txs"
        sleep 10
        continue
    fi
    cat known-nonces.txt | perl -n -e 'print hex . "\n"' | sort -nr > _tmp.nonces; mv _tmp.nonces known-nonces.txt
    current_nonce=$(cast nonce --rpc-url $rpc_url $eth_address)
    current_balance=$(cast balance --ether --rpc-url $rpc_url $eth_address)
    max_known=$(head -n1 known-nonces.txt)
    seq $current_nonce $max_known | sort -nr > possible-nonces.txt
    grep -f known-nonces.txt -v possible-nonces.txt > nonce-holes.txt
    # cat possible-nonces.txt > nonce-holes.txt

    echo "Current Nonce:    $current_nonce"
    echo "Current Balance:  $current_balance"
    echo "Max Known Nonce:  $max_known"
    echo "Total gap nonces: $(wc -l nonce-holes.txt)"
    cat nonce-holes.txt | sort | while read -r nonce ; do
        echo "sending filler tx for nonce $nonce"
        cast send --legacy --gas-price $(<.tmp.gas.price) --async --nonce $nonce --rpc-url $rpc_url --private-key $private_key --value 3 $eth_address
        if [[ $? -ne 0 ]]; then
            gas_price=$(<.tmp.gas.price)
            gas_price=$(bc <<< "$gas_price * 3 / 2")
            echo "$gas_price" > .tmp.gas.price
            echo "Bumping gas to $gas_price"
            break
        else
            echo "1000000000" > .tmp.gas.price
        fi
    done
    echo "sleeping"
    sleep 2
done


################################################################################
################################################################################
# This is a script to capture some diagnostic data
################################################################################
################################################################################

rpc_url="http://127.0.0.1:8545"
mkdir batch-idk-70834

find . -type d -name 'batch-*' | while read -r batch_folder; do
    batch_number=$(echo $batch_folder | awk -F- '{print $3}')
    batch_hex_number=$(printf 0x%x $batch_number)
    echo "Pulling data for batch $batch_number-$batch_hex_number"

    if [[ ! -e $batch_folder/batch-$batch_hex_number.json ]]; then
        cast rpc --rpc-url $rpc_url zkevm_getBatchByNumber $batch_hex_number > $batch_folder/batch-$batch_hex_number.json
    fi
    if [[ ! -e $batch_folder/blocks.ndjson ]]; then
        cat $batch_folder/batch-$batch_hex_number.json | jq -r '.blocks[]' | xargs -I xxx cast block --json --rpc-url $rpc_url xxx > $batch_folder/blocks.ndjson
    fi
    if [[ ! -e $batch_folder/txs.ndjson ]]; then
        cat $batch_folder/batch-$batch_hex_number.json | jq -r '.transactions[]' | xargs -I xxx cast tx --json --rpc-url $rpc_url xxx > $batch_folder/txs.ndjson
    fi
    if [[ ! -e $batch_folder/receipts.ndjson ]]; then
        cat $batch_folder/batch-$batch_hex_number.json | jq -r '.transactions[]' | xargs -I xxx cast tx --json --rpc-url $rpc_url xxx > $batch_folder/receipts.ndjson
    fi
    if [[ ! -e $batch_folder/traces.ndjson ]]; then
        cat $batch_folder/batch-$batch_hex_number.json | jq -r '.transactions[]' | xargs -I xxx cast rpc --rpc-url $rpc_url zkevm_traceTransactionCounters xxx > $batch_folder/traces.ndjson
    fi
    cat $batch_folder/txs.ndjson | jq -r '.to' | sort -u | grep -v "null" | while read -r address ; do
        cast code --rpc-url $rpc_url $address > $batch_folder/code-$address.bin
    done
done



