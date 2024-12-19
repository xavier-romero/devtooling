#!/bin/bash

wait_for_verification() {
    source ~/.bashrc

    # Get current batch:
    BATCH=$(cast rpc zkevm_batchNumber)
    BATCH=$(echo $BATCH | tr -d '"' | xargs printf "%d")
    echo "Current batch $BATCH set as target to be verified."

    VIRTUAL_BATCH=$(cast rpc zkevm_virtualBatchNumber)
    VIRTUAL_BATCH=$(echo $VIRTUAL_BATCH | tr -d '"' | xargs printf "%d")

    VERIFIED_BATCH=$(cast rpc zkevm_verifiedBatchNumber)
    VERIFIED_BATCH=$(echo $VERIFIED_BATCH | tr -d '"' | xargs printf "%d")

    # while verified batch is less than the current batch, sleep
    while [ $VERIFIED_BATCH -lt $BATCH ]; do
        echo "Verified batch is $VERIFIED_BATCH, Virtual batch is $VIRTUAL_BATCH, target batch is $BATCH. Sleeping for a while..."
        sleep 10
        VIRTUAL_BATCH=$(cast rpc zkevm_virtualBatchNumber)
        VIRTUAL_BATCH=$(echo $VIRTUAL_BATCH | tr -d '"' | xargs printf "%d")
        VERIFIED_BATCH=$(cast rpc zkevm_verifiedBatchNumber)
        VERIFIED_BATCH=$(echo $VERIFIED_BATCH | tr -d '"' | xargs printf "%d")
    done
    echo "DONE. Verified batch is $VERIFIED_BATCH, Virtual batch is $VIRTUAL_BATCH, target batch was $BATCH."
}

wait_for_verification
