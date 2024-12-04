#!/bin/bash
# How to operate:
# send some seed money to the 0th address in the mnemonic
# cast send --legacy --rpc-url $rpc_url --value 50ether --private-key bf6d4e3d9b09b32bdb00f4d1f7874eb783cac3c9aafa97ab61208bfb534cfdef 0xbA0000dF6d222487D03E962EAe30863F5228f39B
# then...
# seq 0 4096 | parallel -j 32 -I xxx ./appleseed2.sh xxx
# then to clean up we can do
# seq 0 28000 | parallel -j 64 -I xxx './drain-wallet.sh "ghost fuel master kind winner ordinary fuel because idle bracket kidney daring" xxx 0xbA0000dF6d222487D03E962EAe30863F5228f39B http://127.0.0.1:33347'




trap 'echo "trapped - exiting"; exit' SIGINT

rpc_url="$(kurtosis port print cdk-v1-2 cdk-erigon-node-001 http-rpc)"
# 0xbA0000dF6d222487D03E962EAe30863F5228f39B
seed_mnemonic="ghost fuel master kind winner ordinary fuel because idle bracket kidney daring"
leave_behind=271828

function distribute() {

    local mnemonic_index="$1"
    local mnemonic_index_1=$((2 * mnemonic_index + 1))
    local mnemonic_index_2=$((2 * mnemonic_index + 2))

    local eth_address=$(cast wallet address --mnemonic "$seed_mnemonic" --mnemonic-index $mnemonic_index)
    local eth_address_1=$(cast wallet address --mnemonic "$seed_mnemonic" --mnemonic-index $mnemonic_index_1)
    local eth_address_2=$(cast wallet address --mnemonic "$seed_mnemonic" --mnemonic-index $mnemonic_index_2)

    local balance

    while true; do
        balance=$(cast balance --rpc-url $rpc_url $eth_address)
        min_balance_check=$(bc <<< "$balance > 1000000000") # should probably have at least 1gwei?
        if [[ $min_balance_check -eq 1 ]]; then
            break
        fi
        sleep 10
    done

    # do some work
    # do some work
    # do some work
    # cast send --legacy --gas-limit 58000 --gas-price 2gwei --mnemonic "$seed_mnemonic" --mnemonic-index "$mnemonic_index" --rpc-url "$rpc_url" --create $(cat ../../evm-testing/out/simple-limit-fibonacci.deploy.bin)

    # cast send --gas-price 5gwei --legacy --gas-limit 1341963 --rpc-url $rpc_url  --value 100 --mnemonic "$seed_mnemonic" --mnemonic-index "$mnemonic_index" 0xfBE07a394847c26b1d998B6e44EE78A9C8191f13 0000000000000000000000000000000000000000000000000000000000000001000000000000000000000000Cb31D71c184a83831670dc46AEa45b5eBEa281A9000000000000000000000000000000000000000000000000000000000000000F0000000000000000000000000000000000000000000000000000000000000003

    # finished
    # finished
    # finished

    balance=$(cast balance --rpc-url $rpc_url $eth_address)

    local gas_price="$(cast gas-price --rpc-url $rpc_url)"
    # gas_price=$((gas_price * 3 / 2)) # push the gas price up for faster mining
    gas_price=$((gas_price * 11 / 10)) # push the gas price up for faster mining

    local dist_value=$(bc <<< "($balance - $leave_behind - (2 * 21000 * $gas_price)) / 2")
    local has_enough=$(bc <<< "$dist_value > (1000000000*21000)") # let's assume we want at least enough for a tx at 1gwei
    if [[ $has_enough -eq 0 ]]; then
        echo "The address $eth_address does not have enough funds. Current balance is $balance and distribute value would be $dist_value" >&2
        exit 1
    fi

    echo "sending $dist_value from $eth_address:$mnemonic_index to $eth_address_1:$mnemonic_index_1 and $eth_address_2:$mnemonic_index_2"

    cast send --timeout 900 --legacy --mnemonic "$seed_mnemonic" --mnemonic-index "$mnemonic_index" --rpc-url "$rpc_url" --gas-price $gas_price --value $dist_value $eth_address_1 > /dev/null
    cast send --timeout 900 --legacy --mnemonic "$seed_mnemonic" --mnemonic-index "$mnemonic_index" --rpc-url "$rpc_url" --gas-price $gas_price --value $dist_value $eth_address_2 > /dev/null
}

distribute $1




