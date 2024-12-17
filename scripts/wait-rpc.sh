#!/bin/bash

wait_for_rpc_to_be_available() {
    source ~/.bashrc
    # if L2_RPC_URL is not set yet, sleep for a while
    if [[ -z "${L2_RPC_URL}" ]]; then
        echo_ts "L2_RPC_URL is not set yet. Sleeping for a while..."
        sleep 10
    else
        echo_ts "L2_RPC_URL is set to ${L2_RPC_URL}"
        counter=0
        max_retries=20
        until cast send --rpc-url $L2_RPC_URL --private-key $L2_PRV_KEY --value 0 0x0000000000000000000000000000000000000000 &> /dev/null; do
            ((counter++))
            echo_ts "Can't send L2 transfers yet... Retrying ($counter)..."
            if [[ $counter -ge $max_retries ]]; then
                echo_ts "Exceeded maximum retry attempts. Exiting."
                exit 1
            fi
            sleep 5
        done
    fi
}

wait_for_rpc_to_be_available
