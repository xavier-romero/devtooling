# PRV_KEY for master sender 0x3D06a99D0802d32A7ac00875F49C2820f2E6be76
PRV_KEY=214ea405dc30a81f27845b0017d2b68e35270f1f7c6661a216739a2774b7d0c9
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest375 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/randomStatetest375Filler.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+100000))
echo "[randomStatetest375] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE37ED53df40a774C0906aa9e558C46586cBB4ab0) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xE37ED53df40a774C0906aa9e558C46586cBB4ab0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest375] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 1000000000000000000..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000000000000000000 --create 6300000006601260003963000000066000F3414542084255 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest375] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest375] Processing transaction number 748 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE37ED53df40a774C0906aa9e558C46586cBB4ab0) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 7b457d36c84198ed4df4d5281ed480bf5b9c6b3f1107ea8676fa2118dfc7baa4 --timeout 20 --value 100000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x42 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

