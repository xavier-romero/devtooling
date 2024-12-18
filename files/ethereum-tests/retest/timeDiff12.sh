# PRV_KEY for master sender 0x5BE3243C2D7252C0806F6bBA6A394E6aE73d70c4
PRV_KEY=468e3b867491ece16ddcee63b26e23e8dd742afad759c1c7d0eaa7a38c62477e
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test timeDiff12 (src/BlockchainTestsFiller/ValidBlocks/bcValidBlockTest/timeDiff12Filler.json)"

AMOUNT=$((2*150000*2*$GAS_PRICE+12000))
echo "[timeDiff12] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x6dAF3b7d00145A2fFC87cb8f479B1b125fdF12FF) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x6dAF3b7d00145A2fFC87cb8f479B1b125fdF12FF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[timeDiff12] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 100..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100 --create 630000002c6012600039630000002c6000F37fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff600052600060206000a100 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[timeDiff12] Processing transaction number 691 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x6dAF3b7d00145A2fFC87cb8f479B1b125fdF12FF) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key b8e373b2bac61654ee48eee580649d7783b0465c35fcd3cdf7a0b77cb3dbe44a --timeout 20 --value 5000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[timeDiff12] Processing transaction number 692 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x6dAF3b7d00145A2fFC87cb8f479B1b125fdF12FF) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key b8e373b2bac61654ee48eee580649d7783b0465c35fcd3cdf7a0b77cb3dbe44a --timeout 20 --value 7000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

