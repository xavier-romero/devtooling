# PRV_KEY for master sender 0x75d43F2182a4a9Aca0229141926eEb9F8d0B015a
PRV_KEY=e49aba61074257ff8552c1e23a7892a6fd757a6e10ebfaea47d600579b06788c
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest8BC (src/BlockchainTestsFiller/ValidBlocks/bcRandomBlockhashTest/randomStatetest8BCFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+100000))
echo "[randomStatetest8BC] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x283cF00099805b8fb5B9A48B6832Da1748d86cB1) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x283cF00099805b8fb5B9A48B6832Da1748d86cB1 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest8BC] Creating receiver 0x000f3df6d732807ef1319fb7b8bb8522d0beac02 with code and balance 0..."
ADDR_000F3DF6D732807EF1319FB7B8BB8522D0BEAC02=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6103b66103b6556103e86103e85561079e61079e556300000061602760003963000000616000F33373fffffffffffffffffffffffffffffffffffffffe14604d57602036146024575f5ffd5b5f35801560495762001fff810690815414603c575f5ffd5b62001fff01545f5260205ff35b5f5ffd5b62001fff42064281555f359062001fff015500 | jq -r .contractAddress)
echo $ADDR_000F3DF6D732807EF1319FB7B8BB8522D0BEAC02

echo "[randomStatetest8BC] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 1000000000000000000..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000000000000000000 --create 6300000010601260003963000000106000F345454041444344330a78066e6da197ff | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest8BC] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest8BC] Processing transaction number 674 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x283cF00099805b8fb5B9A48B6832Da1748d86cB1) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key b59b276419bb6fc9c557487cd72df3e75b406c90f515d210dbb1a7f0c670f482 --timeout 20 --value 100000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x42 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi
