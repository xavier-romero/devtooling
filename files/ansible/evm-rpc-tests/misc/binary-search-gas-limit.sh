#!/usr/bin/bash

function clean_exit() {
    rm "out_file"
    exit
}

trap "clean_exit" INT

rpc_url="https://rpc.internal.zkevm-rpc.com"
private_key="0xb324aea2e119902b150d4685d52e7c33d0a7e6ad09cc5f16efe207cb033a0ee8"
eth_address=$(cast wallet address --private-key "$private_key")


wait_period=30
high_gas=29999999
low_gas=75000
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
    cast send --legacy --timeout $wait_period --gas-price $gas_price --gas-limit $mid_gas --rpc-url $rpc_url  --value 100 --private-key $private_key 0xfBE07a394847c26b1d998B6e44EE78A9C8191f13 0000000000000000000000000000000000000000000000000000000000000001000000000000000000000000Cb31D71c184a83831670dc46AEa45b5eBEa281A9000000000000000000000000000000000000000000000000000000000000000F0000000000000000000000000000000000000000000000000000000000000003 2> "$out_file"


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
