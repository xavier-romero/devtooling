# PRV_KEY for master sender 0x381ED012BAb08A847D1DC985630F7D708dF027E2
PRV_KEY=e1b5b845ceb6cddda6be35a4242d0e0e23fcd64d412bf5b85b9fd9a9f156a74d
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test DifferentExtraData1025 (src/BlockchainTestsFiller/InvalidBlocks/bcInvalidHeaderTest/DifferentExtraData1025Filler.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+5000))
echo "[DifferentExtraData1025] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xfED7126d36462ACf85348a5657B43D87b15CecDC) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xfED7126d36462ACf85348a5657B43D87b15CecDC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DifferentExtraData1025] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 100..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100 --create 630000002c6012600039630000002c6000F37fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff600052600060206000a100 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[DifferentExtraData1025] Processing transaction number 274 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xfED7126d36462ACf85348a5657B43D87b15CecDC) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 9945bf3f2a7c87288fae6d914059ccc877bd46da9b9b502035ecbd4551f26e6a --timeout 20 --value 5000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

