# PRV_KEY for master sender 0x03363eb6A64F865274C972B3edCEB557492ADdce
PRV_KEY=10cb69d9c54a6c5747cf2f0429b60873b16618316450c0b2cded4cbb7f3fb026
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest392BC (src/BlockchainTestsFiller/ValidBlocks/bcRandomBlockhashTest/randomStatetest392BCFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+100000))
echo "[randomStatetest392BC] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xB62e6D94c667882C00b3D3d5Ef4BD1B12AE15e6C) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xB62e6D94c667882C00b3D3d5Ef4BD1B12AE15e6C | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest392BC] Creating receiver 0x000f3df6d732807ef1319fb7b8bb8522d0beac02 with code and balance 0..."
ADDR_000F3DF6D732807EF1319FB7B8BB8522D0BEAC02=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6103b66103b6556103e86103e85561079e61079e556300000061602760003963000000616000F33373fffffffffffffffffffffffffffffffffffffffe14604d57602036146024575f5ffd5b5f35801560495762001fff810690815414603c575f5ffd5b62001fff01545f5260205ff35b5f5ffd5b62001fff42064281555f359062001fff015500 | jq -r .contractAddress)
echo $ADDR_000F3DF6D732807EF1319FB7B8BB8522D0BEAC02

echo "[randomStatetest392BC] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 1000000000000000000..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000000000000000000 --create 6300000009601260003963000000096000F3424061434444413155 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest392BC] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest392BC] Processing transaction number 595 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xB62e6D94c667882C00b3D3d5Ef4BD1B12AE15e6C) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key f0e23d34c649f0a60c961facba80c186dfb8bf1feef80f7bb083b8012fd348a5 --timeout 20 --value 100000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x42 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi
