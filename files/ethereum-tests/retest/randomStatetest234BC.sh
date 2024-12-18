# PRV_KEY for master sender 0xCec21911E78B74dA4e17217854fa196D04ba5C72
PRV_KEY=8f017c7948fa33c84fde687d0770c186893e5e91569e2eb37711210983552d93
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest234BC (src/BlockchainTestsFiller/ValidBlocks/bcRandomBlockhashTest/randomStatetest234BCFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+2026380732))
echo "[randomStatetest234BC] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x82790F1B0bD6Add82Dd7480B6CEe7260bF435641) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x82790F1B0bD6Add82Dd7480B6CEe7260bF435641 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest234BC] Creating receiver 0x000f3df6d732807ef1319fb7b8bb8522d0beac02 with code and balance 0..."
ADDR_000F3DF6D732807EF1319FB7B8BB8522D0BEAC02=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6103b66103b6556103e86103e85561079e61079e556300000061602760003963000000616000F33373fffffffffffffffffffffffffffffffffffffffe14604d57602036146024575f5ffd5b5f35801560495762001fff810690815414603c575f5ffd5b62001fff01545f5260205ff35b5f5ffd5b62001fff42064281555f359062001fff015500 | jq -r .contractAddress)
echo $ADDR_000F3DF6D732807EF1319FB7B8BB8522D0BEAC02

echo "[randomStatetest234BC] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 0..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 63000000f4601260003963000000f46000F37f000000000000000000000000ffffffffffffffffffffffffffffffffffffffff407f00000000000000000000000000000000000000000000000000000000000000017f000000000000000000000000945304eb96065b2a98b57a48a06ae28d285a71b57f00000000000000000000000000000000000000000000000000000000000000017ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe09a3447d617a066c9437f337 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest234BC] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest234BC] Processing transaction number 612 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x82790F1B0bD6Add82Dd7480B6CEe7260bF435641) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key b833467e6db5fd234502ac96f0f93bed483a9cf5e8affb0b8f8bafa2118f50ea --timeout 20 --value 2026380732 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x7f000000000000000000000000ffffffffffffffffffffffffffffffffffffffff407f00000000000000000000000000000000000000000000000000000000000000017f000000000000000000000000945304eb96065b2a98b57a48a06ae28d285a71b57f00000000000000000000000000000000000000000000000000000000000000017ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe09a3447d617a066c9437f337 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

