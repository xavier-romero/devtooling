# PRV_KEY for master sender 0x1b5F56dB995207B7aB9f6eadf0b2f9054BC58bEF
PRV_KEY=c03c0b5e2569af2ad560f81b42fa10f290c159c1809d0dafaf1df6ff64066382
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test wrongParentHash2 (src/BlockchainTestsFiller/InvalidBlocks/bcInvalidHeaderTest/wrongParentHash2Filler.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+5000))
echo "[wrongParentHash2] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x11933880B5aF41b2b9282F4e91b26d0516F09314) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x11933880B5aF41b2b9282F4e91b26d0516F09314 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[wrongParentHash2] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 100..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100 --create 630000002c6012600039630000002c6000F37fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff600052600060206000a100 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[wrongParentHash2] Processing transaction number 276 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x11933880B5aF41b2b9282F4e91b26d0516F09314) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 58c7dd583f2b597070d7c600c3727e50404edce9aa9034200c7d5faafbba44ae --timeout 20 --value 5000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

