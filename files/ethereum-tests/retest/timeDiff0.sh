# PRV_KEY for master sender 0x49b8301e2DBC37765Cc34B88daf9C4A4e843852B
PRV_KEY=e8c7d18383114fb29430ce418b8964da81946043cb131d248297494ea66a601f
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test timeDiff0 (src/BlockchainTestsFiller/InvalidBlocks/bcInvalidHeaderTest/timeDiff0Filler.json)"

AMOUNT=$((2*150000*2*$GAS_PRICE+12000))
echo "[timeDiff0] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x5191994f0abCDD067016A56444C43A5496C031a5) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x5191994f0abCDD067016A56444C43A5496C031a5 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[timeDiff0] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 100..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100 --create 630000002c6012600039630000002c6000F37fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff600052600060206000a100 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[timeDiff0] Processing transaction number 265 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x5191994f0abCDD067016A56444C43A5496C031a5) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 2a575abe13367bb5ea41f2ebb80b3c539aa8f43c4c873cba23e7b30a593220ec --timeout 20 --value 5000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[timeDiff0] Processing transaction number 266 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x5191994f0abCDD067016A56444C43A5496C031a5) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 2a575abe13367bb5ea41f2ebb80b3c539aa8f43c4c873cba23e7b30a593220ec --timeout 20 --value 7000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

