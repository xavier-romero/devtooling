# PRV_KEY for master sender 0x5cbC238bDfDEDdf42Fd90cb8e8b951770cFdd87e
PRV_KEY=74cfc13ec4a1201f96c6868d8fa0eb265d30df1ada4f831ab5e8cd663a9f00c3
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest101BC (src/BlockchainTestsFiller/ValidBlocks/bcRandomBlockhashTest/randomStatetest101BCFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+1884623139))
echo "[randomStatetest101BC] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x25c8E9CEDF8F432Bf06363381384AB4CA2796bCb) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x25c8E9CEDF8F432Bf06363381384AB4CA2796bCb | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest101BC] Creating receiver 0x000f3df6d732807ef1319fb7b8bb8522d0beac02 with code and balance 0..."
ADDR_000F3DF6D732807EF1319FB7B8BB8522D0BEAC02=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6103b66103b6556103e86103e85561079e61079e556300000061602760003963000000616000F33373fffffffffffffffffffffffffffffffffffffffe14604d57602036146024575f5ffd5b5f35801560495762001fff810690815414603c575f5ffd5b62001fff01545f5260205ff35b5f5ffd5b62001fff42064281555f359062001fff015500 | jq -r .contractAddress)
echo $ADDR_000F3DF6D732807EF1319FB7B8BB8522D0BEAC02

echo "[randomStatetest101BC] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 0..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 63000000b1601260003963000000b16000F37f000000000000000000000000000000000000000000000000000000000000c3507f00000000000000000000000000000000000000000000000000000000000000017f0000000000000000000000000000000000000000000000000000000000000000407f0000000000000000000000000000000000000000000000000000000000000001357f00000000000000000000000000000000000000000000000000000000000000010b8a9e12010560005155 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest101BC] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest101BC] Processing transaction number 688 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x25c8E9CEDF8F432Bf06363381384AB4CA2796bCb) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 0b967323583375edc71deea88f7e32c3d3b78f2dad4e9b6d6330e29404e44d2a --timeout 20 --value 1884623139 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x7f000000000000000000000000000000000000000000000000000000000000c3507f00000000000000000000000000000000000000000000000000000000000000017f0000000000000000000000000000000000000000000000000000000000000000407f0000000000000000000000000000000000000000000000000000000000000001357f00000000000000000000000000000000000000000000000000000000000000010b8a9e120105 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi
