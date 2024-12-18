#!/bin/bash
CAST_ACCOUNT_NAME=default
CAST_KEYSTORE_PASSWORD=secret
WILDCARD_COMMAND=/bin/x
ETHTOOLS_PROFILES=/repos/eth-bench/profiles.json
ETHTOOLS_PROFILES_TEMPLATE=/tmp/profiles.json.template

# WILDCARD_COMMAND is a wrapper that will set all variables before executing passed command
echo "#!/bin/bash" > $WILDCARD_COMMAND
echo 'export PATH=$PATH:/scripts' >> $WILDCARD_COMMAND
chmod +x $WILDCARD_COMMAND

# Function to export and save env variables
function export_and_save {
    export $1=$2
    echo "export $1=$2" >> ~/.bashrc
    echo "export $1=$2" >> /etc/environment
    echo "export $1=$2" >> $WILDCARD_COMMAND
}

if [ -n "$KURTOSIS_FORKID" ]; then
    ENCLAVE=dt$(tr -dc A-Za-z0-9 </dev/urandom | head -c 8; echo)
    cd /repos/kurtosis-cdk-erigon
    echo "Running Kurtosis stack enclave $ENCLAVE on fork $KURTOSIS_FORKID using Erigon image $KURTOSIS_ERIGON_IMAGE"
    cat forkid${KURTOSIS_FORKID}.json | jq  '.erigon.image = "'$KURTOSIS_ERIGON_IMAGE'"' > params.json
    kurtosis run --enclave $ENCLAVE . || exit 1

    L2_RPC_URL=$(kurtosis port print $ENCLAVE rpc001 rpc8123 --cli-log-level error)
    L2_PRV_KEY=0x42b6e34dc21598a807dc19d7784c71b2a7a01f6480dc6f58258f78e539f1a1fa
    L2_ROLLUP_ID=1
    L1_RPC_URL=http://$(kurtosis port print $ENCLAVE el-1-geth-lighthouse rpc --cli-log-level error)
    L1_PRV_KEY=0x42b6e34dc21598a807dc19d7784c71b2a7a01f6480dc6f58258f78e539f1a1fa
    BRIDGE_URL=$(kurtosis port print $ENCLAVE bridge001 bridge --cli-log-level error)
    BRIDGE_ADDR=$(kurtosis service exec $ENCLAVE contracts001 "cat /output/deployment/deploy_output.json"  --cli-log-level error | tail -n +2 | jq -r .polygonZkEVMBridgeAddress)
else
    # Set default values for env variables
    L2_RPC_URL=${L2_RPC_URL:-http://localhost:8123}
    L2_PRV_KEY=${L2_PRV_KEY:-0}
    BRIDGE_URL=${BRIDGE_URL:-http://localhost:8080}
    BRIDGE_ADDR=${BRIDGE_ADDR:-0x}
    L1_RPC_URL=${L1_RPC_URL:-http://localhost:18123}
    L1_PRV_KEY=${L1_PRV_KEY:-1}
    L2_ROLLUP_ID=${L2_ROLLUP_ID:-1}
fi

# Export and save env variables
export_and_save L2_RPC_URL $L2_RPC_URL
export_and_save L2_PRV_KEY $L2_PRV_KEY
export_and_save ETH_RPC_URL $L2_RPC_URL # This is specific for cast to work
export_and_save BRIDGE_URL $BRIDGE_URL
export_and_save BRIDGE_ADDR $BRIDGE_ADDR
export_and_save L1_RPC_URL $L1_RPC_URL
export_and_save L1_PRV_KEY $L1_PRV_KEY
export_and_save L2_ROLLUP_ID $L2_ROLLUP_ID

# for policly, which uses localhost:8545 by default, this opens a local socket to the L2_RPC_URL
HOST=$(echo $ETH_RPC_URL | awk -F[/:] '{print $4}')
PORT=$(echo $ETH_RPC_URL | awk -F[/:] '{print $5}')
socat TCP-LISTEN:8545,fork tcp:$HOST:$PORT &

if [ "$L2_PRV_KEY" != "0" ]; then
    # Set required env for cast if L2_PRV_KEY is provided
    cast wallet import --private-key $L2_PRV_KEY --unsafe-password $CAST_KEYSTORE_PASSWORD $CAST_ACCOUNT_NAME
    CAST_KEYSTORE_PASSWORD_FILE=~/.foundry/keystore_${CAST_ACCOUNT_NAME}_password
    echo $CAST_KEYSTORE_PASSWORD > $CAST_KEYSTORE_PASSWORD_FILE
    export_and_save ETH_KEYSTORE_ACCOUNT $CAST_ACCOUNT_NAME
    export_and_save ETH_PASSWORD $CAST_KEYSTORE_PASSWORD_FILE
    # And also set profiles file for eth-tools
    envsubst < $ETHTOOLS_PROFILES_TEMPLATE > $ETHTOOLS_PROFILES
fi

# Finalize /bin/x and then execute or sleep
echo '$@' >> $WILDCARD_COMMAND

# Set up Ansible all.yaml
for d in /ansible/*; do
    output_file=$d/group_vars/all.yml
    echo "---" > $output_file
    echo "rpc_url: $L2_RPC_URL" >> $output_file
    echo "private_key: \"$L2_PRV_KEY\"" >> $output_file
    echo "eth_address: \"$(cast wallet address --private-key $L2_PRV_KEY)\"" >> $output_file
    echo "log_file: /ansible/evm-rpc-tests.log" >> $output_file
    echo "work_dir: /ansible/evm-rpc-tests" >> $output_file
    echo "max_block_size: 29_999_999" >> $output_file
    echo "legacy_flag: \"--legacy\"" >> $output_file
    echo "block_interval: 6" >> $output_file
    echo "cast_timeout: 30" >> $output_file
done

# If no command has been provided, run sleep forever:
if [ $# -eq 0 ]; then
    sleep infinity
else
    # Execute whatever command was passed to the container
    $@
fi
