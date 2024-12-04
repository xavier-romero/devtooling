#!/bin/bash

rpc_url="http://127.0.0.1:3001"
private_key="0x9d689ab7a9b4988e0fbebd51e132769ee9a3dd9bf0c91969ac3022e41f8b88ec"
eth_address="$(cast wallet address --private-key $private_key)"

for i in {1..50}; do
    # tx_hash=$(cast send --gas-limit 115644 --async --legacy --private-key "$private_key" --rpc-url "$rpc_url" --value 1 "0xCb31D71c184a83831670dc46AEa45b5eBEa281A9" 0000000000000000000000000000000000000000000000000000000000000005)
    tx_hash=$(cast send --gas-price 24gwei --gas-limit 450000 --async --legacy --private-key "$private_key" --rpc-url "$rpc_url" --value 1 "0xCb31D71c184a83831670dc46AEa45b5eBEa281A9" 0000000000000000000000000000000000000000000000000000000000000005)
    if [[ $? -ne 0 ]]; then
        echo "sending the tx failed (I think)"
        exit 1
    fi
    sent_time="$(date +%s)"

    receipt=$(cast receipt --json --rpc-url "$rpc_url" "$tx_hash")
    finish_time="$(date +%s)"

    bn=$(echo $receipt | jq -r '.blockNumber' | perl -nl -e 'print hex')
    block_time=$(cast block --json --rpc-url "$rpc_url" "$bn" | jq -r '.timestamp' | perl -nl -e 'print hex')

    printf "%s\t%s\t%s\n" $sent_time $finish_time $block_time
done

# This is strange... It seems like the clock on the sequencer must be a few seconds behind
# cast send --async --legacy --private-key "$private_key" --rpc-url "$rpc_url" --value 1 "$eth_address" $(printf "0x%x" $(date +%s))
# cast block --full --rpc-url "$rpc_url" --json 7896221 | jq '.'
