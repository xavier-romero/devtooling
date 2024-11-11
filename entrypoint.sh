#!/bin/bash
CAST_ACCOUNT_NAME=default
CAST_KEYSTORE_PASSWORD=secret
WILDCARD_COMMAND=/bin/x
ETHTOOLS_PROFILES=/tools/profiles.json
ETHTOOLS_PROFILES_TEMPLATE=/tools/profiles.json.template

# WILDCARD_COMMAND is a wrapper that will set all variables before executing passed command
echo "#!/bin/bash" > $WILDCARD_COMMAND
chmod +x $WILDCARD_COMMAND

# Function to export and save env variables
function export_and_save {
    export $1=$2
    echo "export $1=$2" >> ~/.bashrc
    echo "export $1=$2" >> /etc/environment
    echo "export $1=$2" >> $WILDCARD_COMMAND
}

# Set default values for env variables
L2_RPC_URL=${L2_RPC_URL:-http://localhost:8123}
L2_PRV_KEY=${L2_PRV_KEY:-0}
BRIDGE_URL=${BRIDGE_URL:-http://localhost:8080}
BRIDGE_ADDR=${BRIDGE_ADDR:-0x}
L1_RPC_URL=${L1_RPC_URL:-http://localhost:18123}
L1_PRV_KEY=${L1_PRV_KEY:-1}
L2_ROLLUP_ID=${L2_ROLLUP_ID:-1}

# Export and save env variables
export_and_save L2_RPC_URL $L2_RPC_URL
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
# If no command has been provided, run sleep forever:
if [ $# -eq 0 ]; then
    sleep infinity
else
    # Execute whatever command was passed to the container
    $@
fi
