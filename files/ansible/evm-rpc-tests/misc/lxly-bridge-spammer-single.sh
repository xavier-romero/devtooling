#!/bin/bash


# KURTOSIS
rpc_url="$(kurtosis port print cdk el-1-geth-lighthouse rpc)"
send_flags=""
lxly_bridge_addr="0x9d6944138d94bf23a3A7a01C384ba7679Bd74798"
private_key="0x3869bfbc61895584db60067dac776d14f2eedc27495a38c860acc9a754cdaf32"
eth_address="$(cast wallet address --private-key $private_key)"
destination_network="1"
bridge_sig="bridgeAsset(uint32,address,uint256,address,bool,bytes)"

nonce=$(cast nonce --rpc-url $rpc_url "$eth_address")
nonce_file=$(mktemp -p /tmp retest-nonce-XXXXXXXXXXXX)
echo "$nonce" > "$nonce_file"

function increment_nonce() {
    # Lock the file, update the nonce, and unlock
    nonce_file=$1

    nonce=$(flock "$nonce_file" -c "nonce=\$(cat $nonce_file); echo \$((nonce + 1)) > $nonce_file; echo \$nonce")
    echo "$nonce"
    >&2 echo "INCREMENTED NONCE: $nonce"
}


function make_random_deposit() {
    local deposit_count="$1"
    local destination_address="$eth_address"
    local amount="$deposit_count"
    local token="0x0000000000000000000000000000000000000000"
    local force_update_global_exit_root="false"
    local permit_data="0x"
    local gas_price
    local timeout_flag="--async"

    if [[ $((RANDOM % 3)) -eq 0 ]]; then
        force_update_global_exit_root="true"
    fi
    timeout_flag="--timeout 600"

    gas_price="$(cast gas-price --rpc-url $rpc_url)"
    gas_price=$(bc <<< "$gas_price * 30 / 2")

    if [[ $(bc <<< "$gas_price < 1000000000") -eq 1 ]]; then
        gas_price="1500000000"
    fi

    gas_price="40000000000"

    cast send $send_flags $timeout_flag \
         --nonce "$(increment_nonce "$nonce_file")" \
         --rpc-url "$rpc_url" \
         --gas-price "$gas_price" \
         --value "$amount" \
         --private-key $private_key \
         "$lxly_bridge_addr" \
         "$bridge_sig" \
         "$destination_network" "$destination_address" "$amount" "$token" "$force_update_global_exit_root" "$permit_data"
    sleep $((RANDOM % 5))
}

deposit_count=0
while true; do
    deposit_count=$((deposit_count+1))
    echo "deposit $deposit_count"
    make_random_deposit "$deposit_count" &
    if [[ $(jobs -r -p | wc -l) -ge 4 ]]; then
        wait -n
    fi
done
