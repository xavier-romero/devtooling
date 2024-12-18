# PRV_KEY for master sender 0x1053f8145F62CCa40aef8fa0a69700d14757A21C
PRV_KEY=9b7f4e4fac1cd6be17526dcbbd4a7f3ab07ef4b6a9c0d7de641beef1ac8d1098
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest113BC (src/BlockchainTestsFiller/ValidBlocks/bcRandomBlockhashTest/randomStatetest113BCFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+855218549))
echo "[randomStatetest113BC] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0Cc2BAfd8725731b9d79c84EA3F920D17a99a10C) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x0Cc2BAfd8725731b9d79c84EA3F920D17a99a10C | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest113BC] Creating receiver 0x000f3df6d732807ef1319fb7b8bb8522d0beac02 with code and balance 0..."
ADDR_000F3DF6D732807EF1319FB7B8BB8522D0BEAC02=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6103b66103b6556103e86103e85561079e61079e556300000061602760003963000000616000F33373fffffffffffffffffffffffffffffffffffffffe14604d57602036146024575f5ffd5b5f35801560495762001fff810690815414603c575f5ffd5b62001fff01545f5260205ff35b5f5ffd5b62001fff42064281555f359062001fff015500 | jq -r .contractAddress)
echo $ADDR_000F3DF6D732807EF1319FB7B8BB8522D0BEAC02

echo "[randomStatetest113BC] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 0..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 63000000fd601260003963000000fd6000F37fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff407f00000000000000000000000100000000000000000000000000000000000000007f00000000000000000000000100000000000000000000000000000000000000007fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff7f000000000000000000000000945304eb96065b2a98b57a48a06ae28d285a71b57f00000000000000000000000100000000000000000000000000000000000000007fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff6f6582a26ef383339ff078f0f00779785560005155 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest113BC] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest113BC] Processing transaction number 625 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0Cc2BAfd8725731b9d79c84EA3F920D17a99a10C) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key c8479d08e712a57a1f4d240b1d3d1bb73c9cc58fc0134ddc262725bfd27087c7 --timeout 20 --value 855218549 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff407f00000000000000000000000100000000000000000000000000000000000000007f00000000000000000000000100000000000000000000000000000000000000007fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff7f000000000000000000000000945304eb96065b2a98b57a48a06ae28d285a71b57f00000000000000000000000100000000000000000000000000000000000000007fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff6f6582a26ef383339ff078f0f0077978 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

