# PRV_KEY for master sender 0xB7D44CFcAA89471193cc39f7c92400648630f567
PRV_KEY=1c3fe9f56ab16f2dd574d4626fabca29a0813cfba48546176fa27ce8ff1e7033
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test timeDiff13 (src/BlockchainTestsFiller/ValidBlocks/bcValidBlockTest/timeDiff13Filler.json)"

AMOUNT=$((2*150000*2*$GAS_PRICE+12000))
echo "[timeDiff13] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x981b25f15497AfD8E7783e1EA665Eb5Cba7018Fe) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x981b25f15497AfD8E7783e1EA665Eb5Cba7018Fe | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[timeDiff13] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 100..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100 --create 630000002c6012600039630000002c6000F37fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff600052600060206000a100 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[timeDiff13] Processing transaction number 706 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x981b25f15497AfD8E7783e1EA665Eb5Cba7018Fe) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key a8f361371fa2d41a1c28b17a2ce3d33700e4f3d9a26c815871bc21a2bb77d555 --timeout 20 --value 5000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[timeDiff13] Processing transaction number 707 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x981b25f15497AfD8E7783e1EA665Eb5Cba7018Fe) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key a8f361371fa2d41a1c28b17a2ce3d33700e4f3d9a26c815871bc21a2bb77d555 --timeout 20 --value 7000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

