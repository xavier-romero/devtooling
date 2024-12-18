# PRV_KEY for master sender 0x4C97941Af3EB3396de2027c24664d006129520bB
PRV_KEY=3dd3271ab1897ccb8ade0ed3a30f77499d71acfae25f7d7de0aa2fffd9f8dc8a
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest44BC (src/BlockchainTestsFiller/ValidBlocks/bcRandomBlockhashTest/randomStatetest44BCFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+100000))
echo "[randomStatetest44BC] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xEDc659d87FA12ba54E74EcC60a3eD2af84Cc4F66) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xEDc659d87FA12ba54E74EcC60a3eD2af84Cc4F66 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest44BC] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 1000000000000000000..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000000000000000000 --create 630000000b6012600039630000000b6000F34240444141454542530855 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest44BC] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest44BC] Processing transaction number 658 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xEDc659d87FA12ba54E74EcC60a3eD2af84Cc4F66) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 704423d6edcb2e500a3358de5e7bc76280c1cd1e68be49549b7371be3a0235ac --timeout 20 --value 100000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x42 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

