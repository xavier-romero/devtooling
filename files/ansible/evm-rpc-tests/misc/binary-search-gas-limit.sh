#!/usr/bin/bash

function clean_exit() {
    rm "out_file"
    exit
}

trap "clean_exit" INT

private_key="0x12d7de8621a77640c9241b2595ba78ce443d05e94090365ab3bb5e19df82c625"
rpc_url="$(kurtosis port print cdk cdk-erigon-node-001 rpc)"
eth_address=$(cast wallet address --private-key "$private_key")


wait_period=30
high_gas=400000
low_gas=350000
mid_gas=0
prev=0
gas_price_factor="1.0"


out_file=$(mktemp -p /tmp tmp.XXXXXXXXXX)

while true; do
    prev=$mid_gas
    mid_gas=$(bc <<< "(($high_gas - $low_gas) / 2) + $low_gas")
    if [[ $prev -eq $mid_gas ]]; then
        echo "Done: $mid_gas"
        exit
    fi

    echo "High: $high_gas Low: $low_gas"
    echo "Trying with gas $mid_gas"

    # this transaction is specifically meant to clear a batch before running the actual command
    cast send \
         --legacy \
         --rpc-url "$rpc_url" \
         --private-key "$private_key" \
         --gas-limit 113886 \
         --create 0x6001617000526160006110005ff05b6109c45a111560245761600061100080833c600e565b50 &> /dev/null

    gas_price=$(cast gas-price --rpc-url $rpc_url)
    gas_price=$(bc <<< "$gas_price_factor * $gas_price" | sed 's/\..*//')


    # This case for cast is hard coded for simplicity. In the future, modify this for the command being searched. The current logic here is to check for a timeout. This behavior might be specific to erigon+zkevm
    # cast send --legacy --timeout $wait_period --gas-price $gas_price --gas-limit $mid_gas --rpc-url $rpc_url  --value 100 --private-key $private_key 0xfBE07a394847c26b1d998B6e44EE78A9C8191f13 0000000000000000000000000000000000000000000000000000000000000001000000000000000000000000Cb31D71c184a83831670dc46AEa45b5eBEa281A9000000000000000000000000000000000000000000000000000000000000000F0000000000000000000000000000000000000000000000000000000000000003 2> "$out_file"
    cast send --legacy \
         --rpc-url "$rpc_url" \
         --timeout $wait_period \
         --private-key "$private_key" \
         --gas-limit $mid_gas \
         --create 5f5b60055a11156013576001810190506001565b50


    if [[ $? -eq 0 ]]; then
        low_gas=$mid_gas
    else
        error_msg=$(<$out_file)
        echo "We got the following error: $error_msg"
        if [[ $error_msg =~ replace ]]; then
            gas_price_factor=$(bc <<< "$gas_price_factor * 1.51")
        else
            high_gas=$mid_gas
            gas_price_factor="1.0"
        fi

    fi

done

clean_exit
