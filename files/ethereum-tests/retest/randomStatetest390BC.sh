# PRV_KEY for master sender 0x6b8A47B1FFa6828cDC696c110fCA39Bf2090c496
PRV_KEY=413e369d227feddf81d199e0da1d8f31432bcc60091e9e215b0e29f6caaa67e8
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest390BC (src/BlockchainTestsFiller/ValidBlocks/bcRandomBlockhashTest/randomStatetest390BCFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+1541666665))
echo "[randomStatetest390BC] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x5D8794F08D87BE866D456b5ccf4B5fb846F42213) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x5D8794F08D87BE866D456b5ccf4B5fb846F42213 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest390BC] Creating receiver 0x000f3df6d732807ef1319fb7b8bb8522d0beac02 with code and balance 0..."
ADDR_000F3DF6D732807EF1319FB7B8BB8522D0BEAC02=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6103b66103b6556103e86103e85561079e61079e556300000061602760003963000000616000F33373fffffffffffffffffffffffffffffffffffffffe14604d57602036146024575f5ffd5b5f35801560495762001fff810690815414603c575f5ffd5b62001fff01545f5260205ff35b5f5ffd5b62001fff42064281555f359062001fff015500 | jq -r .contractAddress)
echo $ADDR_000F3DF6D732807EF1319FB7B8BB8522D0BEAC02

echo "[randomStatetest390BC] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 0..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 63000000dd601260003963000000dd6000F37f000000000000000000000000945304eb96065b2a98b57a48a06ae28d285a71b57f000000000000000000000000ffffffffffffffffffffffffffffffffffffffff7f00000000000000000000000000000000000000000000000000000000000000007ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe7f0000000000000000000000010000000000000000000000000000000000000000427fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff406f6c6b30816c7a0412415a0414179b635560005155 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest390BC] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest390BC] Processing transaction number 655 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x5D8794F08D87BE866D456b5ccf4B5fb846F42213) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 96ea8d81d7718b3d9ddf49e37c86589a4f0106d46e58d5d7190a155952d8e48b --timeout 20 --value 1541666665 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x7f000000000000000000000000945304eb96065b2a98b57a48a06ae28d285a71b57f000000000000000000000000ffffffffffffffffffffffffffffffffffffffff7f00000000000000000000000000000000000000000000000000000000000000007ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe7f0000000000000000000000010000000000000000000000000000000000000000427fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff406f6c6b30816c7a0412415a0414179b63 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

