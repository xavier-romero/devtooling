# Devtooling docker image
## ENV VARS
This env vars are supported

| Var name | Description | Default | Used by |
|------|------|--|--|
| L2_RPC_URL | Full http URL for **L2** RPC | http://localhost:8123 | Required for * |
| L2_PRV_KEY | Funded L2 private key to run tests | 0 | Required for almost * |
| BRIDGE_URL | Full http URL for BRIDGE | http://localhost:8080 | Only for bridge-related tests |
| BRIDGE_ADDR | L1/L2 address for bridge contract  | 0 | Only for bridge-related tests |
| L1_RPC_URL | Full http URL for **L1** RPC | http://localhost:18123 | Only for bridge-related tests |
| L1_PRV_KEY | Funded L1 private key for deposits | 1 | Only for bridge-related tests |
| L2_ROLLUP_ID | Full http URL for **L2** RPC URL | 1 | Only for bridge-related tests |

# Usage
## Detached mode
Run the docker image with the required config, so it will be able to execute anything later. Example:

    RPC_URL=http://127.0.0.1:32789
    PRV_KEY=0xxxxxxxxxxxf0e72c638d41108d71f1e88234fd949aa987f2c010d8xxxxxxxxxx

    docker run --name devtooling --network host --detach --rm \
        -e L2_RPC_URL=$RPC_URL \
        -e L2_PRV_KEY=$PRV_KEY \
        xavierromero/devtooling

Then you can execute things like this:

- ```docker exec devtooling x cast bn```
- ```docker exec -it devtooling x polycli monitor```
- ```docker exec devtooling x cast send --value 1ether 0x17Ff0A88371B8411730DE6D413641C7AF583d6Db```
- Etc.

### Terminate image
When done, you can simply kill it: ```docker kill devtooling```

## Run Interactive
You can also run a single command every time, like this:

    RPC_URL=http://127.0.0.1:32789
    PRV_KEY=0xxxxxxxxxxxf0e72c638d41108d71f1e88234fd949aa987f2c010d8xxxxxxxxxx

    docker run --name devtooling --network host --detach --rm \
        -e L2_RPC_URL=$RPC_URL \
        -e L2_PRV_KEY=$PRV_KEY \
        xavierromero/devtooling \
        x cast bn

Or open a bash session and run whatever from there:

    docker run --name devtooling --network host --detach --rm \
        -e L2_RPC_URL=$RPC_URL \
        -e L2_PRV_KEY=$PRV_KEY \
        xavierromero/devtooling \
        bash


# Available commands/scripts
This is the list of available/tested commands that can be run either by exec on a detached instance either running interactively:
- ```x txtest```: Just sends a single EOA transaction to validate the env works
- ```x txspam```: Sends one EOA transaction after another until the end of the days. Add ```-f``` to make it flood style, so no wait for confirmation.
- ```x cast bn```: Any cast command starting by ```x cast ...```
- ```x polycli monitor```: Any polycli command starting by ```x polycli ...```
- ```x run-fuzzed```: Run fuzzed contract deploy from [John's go-ethereum repo](https://github.com/praetoriansentry/go-ethereum/tree/master/cmd/evm/testdata/fuzz/FuzzEVMRunner)
- ```x run-zktv```: Run [zkEVM test-vectors](https://github.com/0xPolygonHermez/zkevm-testvectors/tree/main/tools-inputs/data/calldata) through the [scripted translation](https://github.com/xavier-romero/eth-bench/tree/main/scripted/zktv)
- ```ansible-playbook /ansible/evm-rpc-tests/site.yml```: Runs ansible playbook, in this example a preconfigured playbook taken from [JHilliard's repo](https://github.com/0xPolygon/jhilliard)
- ```x scripted -f /files/scripted/boundaries.json```: Run specific tests through the scripted tool, see [available tests here](https://github.com/xavier-romero/eth-bench/tree/main/scripted)
- ```x bench -c 10 -t 10 --all```: Run a bunch of different tests
- ```x bridgespam -b1 50 -b2 50```: Keep X bridges active to L1 and Y bridges active to L2
- ```x sc_chaos  -e 10 -s 100 -r 100 -t 100 -d 8192```: Whis will send random bytecode for contract creation, generating many invalid txs and consuming a lot of gas

The ```x``` before each command is just a wrapper to set the required bash environment for tools. Needed when running commands with ```docker exec/run```. If you open a bash session into the container you can directly use commands without the wrapper.


# Available files/content
On ```/files``` folder:
- ```polycli-retest.json```: Output of polycli retest as per 3rd December 2024
- ```FuzzEVMRunner```: Fuzzed bytecodes from [John's go-ethereum repo](https://github.com/praetoriansentry/go-ethereum/tree/master/cmd/evm/testdata/fuzz/FuzzEVMRunner), meant to be run with ```run-fuzzed.sh```
- ```scripted```: Folder with JSON tests for the ```scripted``` tool

On ```/repos``` folder:
- ```eth-bench```: Copy of repository https://github.com/xavier-romero/eth-bench
- ```polygon-cli```: Copy of repository https://github.com/0xPolygon/polygon-cli


## Bridging
Run the docker image with the required config, so it will be able to execute anything later.

    docker run --name devtooling --detach --rm \
        -e L2_RPC_URL=http://35.195.238.8:8123 \
        -e L2_PRV_KEY=0xxxxxxxxxxxf0e72c638d41108d71f1e88234fd949aa987f2c010d8xxxxxxxxxx \
        -e BRIDGE_URL=http://35.195.238.8:8080 \
        -e BRIDGE_ADDR=0x4F7945bc1E07Dc0FA8D00e8b66dd5e702E1D2844 \
        -e L1_RPC_URL=http://35.195.238.8:18123 \
        -e L1_PRV_KEY=xxxxxxxxc21598a807dc19d7784c71b2a7a01f6480dc6f58258f78e5xxxxxxxx \
        xavierromero/devtooling

Then you can run the bridge spammer:

```docker exec devtooling x bridgespam -b1 50 -b2 50```

