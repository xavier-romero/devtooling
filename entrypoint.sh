#!/bin/bash
CAST_ACCOUNT_NAME=default
CAST_KEYSTORE_PASSWORD=secret
WILDCARD_COMMAND=/bin/x
ETHTOOLS_PROFILES=/tools/profiles.json
ETHTOOLS_PROFILES_TEMPLATE=/tools/profiles.json.template

echo "#!/bin/bash" > $WILDCARD_COMMAND
chmod +x $WILDCARD_COMMAND

function export_and_save {
    export $1=$2
    echo "export $1=$2" >> ~/.bashrc
    echo "export $1=$2" >> /etc/environment
    echo "export $1=$2" >> $WILDCARD_COMMAND
}

export_and_save L2_RPC_URL $L2_RPC_URL
# for cast to work
export_and_save ETH_RPC_URL $L2_RPC_URL

# for policly, that uses localhost:8545 by default
HOST=$(echo $ETH_RPC_URL | awk -F[/:] '{print $4}')
PORT=$(echo $ETH_RPC_URL | awk -F[/:] '{print $5}')
socat TCP-LISTEN:8545,fork tcp:$HOST:$PORT &

# Set required env for cast
L2_PRV_KEY=${L2_PRV_KEY:-0}
if [ "$L2_PRV_KEY" != "0" ]; then
    cast wallet import --private-key $L2_PRV_KEY --unsafe-password $CAST_KEYSTORE_PASSWORD $CAST_ACCOUNT_NAME
    CAST_KEYSTORE_PASSWORD_FILE=~/.foundry/keystore_${CAST_ACCOUNT_NAME}_password
    echo $CAST_KEYSTORE_PASSWORD > $CAST_KEYSTORE_PASSWORD_FILE
    export_and_save ETH_KEYSTORE_ACCOUNT $CAST_ACCOUNT_NAME
    export_and_save ETH_PASSWORD $CAST_KEYSTORE_PASSWORD_FILE
    # For eth-tools
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
