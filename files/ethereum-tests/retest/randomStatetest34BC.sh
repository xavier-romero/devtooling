# PRV_KEY for master sender 0x3B68EB5954e6fE199665B923621B70a33f52FC4b
PRV_KEY=b3077725146e265e8a7d4eedcbaf06480ee0c4b368b4e10bf27074f4c9cf7536
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest34BC (src/BlockchainTestsFiller/ValidBlocks/bcRandomBlockhashTest/randomStatetest34BCFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+100000))
echo "[randomStatetest34BC] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x1C9EDDC92cae51fF0e22579e34dEEcD71ba6a1D5) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x1C9EDDC92cae51fF0e22579e34dEEcD71ba6a1D5 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest34BC] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 1000000000000000000..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000000000000000000 --create 6300000009601260003963000000096000F3444140404242420555 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest34BC] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest34BC] Processing transaction number 609 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x1C9EDDC92cae51fF0e22579e34dEEcD71ba6a1D5) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 82f1309f57961d429c41690090ec29fb302c355bf99f7307b1493c2182c3295a --timeout 20 --value 100000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x42 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

