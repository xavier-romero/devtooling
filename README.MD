# Devtooling docker image
## ENV VARS
This env vars are supported

| Var name | Description | Default | Used by |
|------|------|--|--|
| L2_RPC_URL | Full http URL for **L2** RPC URL | http://localhost:8545 | cast, polycli, eth-tools |
| L2_PRV_KEY | Full http URL for **L2** RPC URL | http://localhost:8545 | cast, eth-tools |


# Examples
Run the docker image with the required config, so it will be able to execute anything later.

    docker run --name devtooling --detach --rm \
        -e L2_RPC_URL=http://35.195.238.8:8123 \
        -e L2_PRV_KEY=0xff0cdcfe14f0e72c638d41108d71f1e88234fd949aa987f2c010d8de4050c1a9 \
        xavierromero/devtooling


Then you can execute things like:

```docker exec devtooling x cast bn```

```docker exec -it devtooling x polycli monitor```

```docker exec devtooling x cast send --legacy --value 1ether 0x17Ff0A88371B8411730DE6D413641C7AF583d6Db```

```docker exec devtooling x bench -c 10 -t 10 --confirmed```

The ```x``` before each command is just a wrapper to set the proper env varibles.
You can also just ```docker exec -it devtooling bash``` and run whatever inside. When done, you can simply kill it: ```docker kill devtooling```
