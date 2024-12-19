# PRV_KEY for master sender 0xF7b30CFC4cb090153Bb52737570BBBe38B564Bf3
PRV_KEY=de56d3b65105c8b81bea34e4b2f019a721f2b3db8537e9e0ff789dd13b3014f4
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test incorrectUncleTimestamp3 (src/BlockchainTestsFiller/InvalidBlocks/bcUncleHeaderValidity/incorrectUncleTimestamp3Filler.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[incorrectUncleTimestamp3] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x596a3D451655D1b4b048A9852a53a4Ef841918C3) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x596a3D451655D1b4b048A9852a53a4Ef841918C3 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[incorrectUncleTimestamp3] Processing transaction number 73 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x596a3D451655D1b4b048A9852a53a4Ef841918C3) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key df95e339bb20324db5de1e5872c8374dda8075a16f1c1afcdce707ab08cb7b55 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[incorrectUncleTimestamp3] Processing transaction number 74 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x596a3D451655D1b4b048A9852a53a4Ef841918C3) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key df95e339bb20324db5de1e5872c8374dda8075a16f1c1afcdce707ab08cb7b55 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[incorrectUncleTimestamp3] Processing transaction number 75 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x596a3D451655D1b4b048A9852a53a4Ef841918C3) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key df95e339bb20324db5de1e5872c8374dda8075a16f1c1afcdce707ab08cb7b55 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

