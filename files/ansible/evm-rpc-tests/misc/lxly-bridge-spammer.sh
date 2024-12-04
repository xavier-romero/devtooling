#!/bin/bash

# BALI
# l1_rpc_url="https://ethereum-sepolia-rpc.publicnode.com"
# l1_send_flags=""
# l2_rpc_url="https://rpc.internal.zkevm-rpc.com"
# l2_send_flags=" --legacy "
# lxly_bridge_addr="0x1348947e282138d8f377b467F7D9c2EB0F335d1f"
# private_key="0x4053c4801abd1cc2b078fbc6b859eba83868a0e2fc8f13ffba0677b251b56d42"
# eth_address="$(cast wallet address --private-key $private_key)"

# KURTOSIS
l1_rpc_url="$(kurtosis port print cdk el-1-geth-lighthouse rpc)"
l1_send_flags=""
l2_rpc_url="$(kurtosis port print cdk cdk-erigon-rpc-001 rpc)"
l2_send_flags=" --legacy "
lxly_bridge_addr="0x9d6944138d94bf23a3A7a01C384ba7679Bd74798"
# lxly_bridge_addr="0xD71f8F956AD979Cc2988381B8A743a2fE280537D"
private_key="0x3869bfbc61895584db60067dac776d14f2eedc27495a38c860acc9a754cdaf32"
eth_address="$(cast wallet address --private-key $private_key)"


# cast send --legacy --rpc-url $l1_rpc_url --value 10ether --private-key 0x12d7de8621a77640c9241b2595ba78ce443d05e94090365ab3bb5e19df82c625 $eth_address
# cast send --legacy --rpc-url $l2_rpc_url --value 100ether --private-key 0x12d7de8621a77640c9241b2595ba78ce443d05e94090365ab3bb5e19df82c625 $eth_address

bridge_sig="bridgeAsset(uint32,address,uint256,address,bool,bytes)"

l1_nonce=$(cast nonce --rpc-url $l1_rpc_url "$eth_address")
l1_nonce_file=$(mktemp -p /tmp retest-nonce-XXXXXXXXXXXX)
echo "$l1_nonce" > "$l1_nonce_file"

l2_nonce=$(cast nonce --rpc-url $l2_rpc_url "$eth_address")
l2_nonce_file=$(mktemp -p /tmp retest-nonce-XXXXXXXXXXXX)
echo "$l2_nonce" > "$l2_nonce_file"

function increment_nonce() {
    # Lock the file, update the nonce, and unlock
    nonce_file=$1

    nonce=$(flock "$nonce_file" -c "nonce=\$(cat $nonce_file); echo \$((nonce + 1)) > $nonce_file; echo \$nonce")
    echo "$nonce"
    >&2 echo "INCREMENTED NONCE: $nonce"
}


function make_random_deposit() {
    local deposit_count="$1"

    local destination_network="1"
    local destination_address="$eth_address"
    local amount="$deposit_count"
    local token="0x0000000000000000000000000000000000000000"
    local force_update_global_exit_root="false"
    local permit_data="0x"
    local rpc_url="$l1_rpc_url"
    local nonce_file="$l1_nonce_file"
    local send_flags="$l1_send_flags"
    local gas_price
    local timeout_flag="--async"

    if [[ $((RANDOM % 3)) -eq 0 ]]; then
        force_update_global_exit_root="true"
    fi
    if [[ $((RANDOM % 3)) -eq 0 ]]; then
        destination_network="0"
        rpc_url="$l2_rpc_url"
        nonce_file="$l2_nonce_file"
        send_flags="$l2_send_flags"
    fi
    # if [[ $((RANDOM % 3)) -eq 0 ]]; then
    #     timeout_flag="--timeout 600"
    # fi
    # run with sync mode
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
         --gas-limit 500000 \
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
