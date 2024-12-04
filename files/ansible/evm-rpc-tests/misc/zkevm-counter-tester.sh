#!/bin/bash

tester_addr="0xfBE07a394847c26b1d998B6e44EE78A9C8191f13"
counter_addr="0xCb31D71c184a83831670dc46AEa45b5eBEa281A9"
# rpc_url="$(kurtosis port print cdk-v1 cdk-erigon-sequencer-001 rpc)"
rpc_url="https://rpc.internal.zkevm-rpc.com"
private_key="0xb324aea2e119902b150d4685d52e7c33d0a7e6ad09cc5f16efe207cb033a0ee8"
eth_address="$(cast wallet address --private-key $private_key)"
current_nonce="$(cast nonce --rpc-url $rpc_url $eth_address)"


test_actions="0001 0002 0003 0004 0011 0012 0013 0014 0021 0022 0023 0024 0031 0032 0033 0034 0041 0042 0043 0044 0101 0201 0301 0401 0501 0601 0701 0801 0901 1011 1012 1013 1014 2011 2012 2013 2014"
test_gas_limits="30000 50000 100000 250000 500000 1000000 2500000 5000000 10000000 25000000 29999999"
test_counter_actions="0001 0002 0003 0004 0005 0006 0007 0008 0009"


test_actions="0001"


tester_to_address="000000000000000000000000"$(echo $counter_addr | sed 's/0x//')
tester_value="000000000000000000000000000000000000000000000000000000000000000F"

test_count=0

for test_counter_action in $test_counter_actions; do
    for test_gas_limit in $test_gas_limits; do
        for test_action in $test_actions; do
            tester_action="000000000000000000000000000000000000000000000000000000000000"$test_action
            tester_extra_calldata="000000000000000000000000000000000000000000000000000000000000"$test_counter_action
            set -x
            cast send \
                 --async \
                 --nonce $current_nonce \
                 --legacy \
                 --gas-price 10gwei \
                 --rpc-url $rpc_url \
                 --value 100 \
                 --gas-limit $test_gas_limit \
                 --private-key $private_key $tester_addr \
                 $tester_action$tester_to_address$tester_value$tester_extra_calldata
            set +x
            current_nonce=$((current_nonce+1))
            test_count=$((test_count+1))
        done
    done
done

echo "Sent $test_count txs"
# polycli loadtest --rpc-url $rpc_url --gas-price 15000000000 --legacy --gas-limit 21000 --mode t --private-key $private_key  --rate-limit 100 --requests "$test_count"
# polycli loadtest --verbosity 700 --rpc-url $rpc_url --gas-price 25000000000 --legacy --gas-limit 21000 --mode t --private-key $private_key  --rate-limit 100  --requests 50 --rate-limit 1 --eth-amount 0.000000000000000001 --to-address $eth_address


