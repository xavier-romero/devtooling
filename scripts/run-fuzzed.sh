FUZZED_DIR=/files/FuzzEVMRunner

nonce=$(cast nonce $(cast wallet address))
find $FUZZED_DIR -type f -name '*.deploy.bin' | sort -r | while read -r cname; do
    echo "Deploying $cname with nonce $nonce";
    if cast send --legacy --async --nonce $nonce --create $(cat $cname); then
        nonce=$((nonce+1));
    else
        nonce=$(cast nonce --block pending $(cast wallet address));
    fi
done