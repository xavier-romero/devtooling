# PRV_KEY for master sender 0x4f1Fc124ff54360dFa2bB8eb400A873733be7222
PRV_KEY=bb3b3a46f805fe6b4350c491d691a00085abe5a8bf93e64425073527e3c5e4cd
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest140BC (src/BlockchainTestsFiller/ValidBlocks/bcRandomBlockhashTest/randomStatetest140BCFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+1574880944))
echo "[randomStatetest140BC] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x816A36B7F6C7dDd8b431a40e1f7aAc340b092B10) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x816A36B7F6C7dDd8b431a40e1f7aAc340b092B10 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest140BC] Creating receiver 0x000f3df6d732807ef1319fb7b8bb8522d0beac02 with code and balance 0..."
ADDR_000F3DF6D732807EF1319FB7B8BB8522D0BEAC02=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6103b66103b6556103e86103e85561079e61079e556300000061602760003963000000616000F33373fffffffffffffffffffffffffffffffffffffffe14604d57602036146024575f5ffd5b5f35801560495762001fff810690815414603c575f5ffd5b62001fff01545f5260205ff35b5f5ffd5b62001fff42064281555f359062001fff015500 | jq -r .contractAddress)
echo $ADDR_000F3DF6D732807EF1319FB7B8BB8522D0BEAC02

echo "[randomStatetest140BC] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 0..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 63000000dd601260003963000000dd6000F37f000000000000000000000000945304eb96065b2a98b57a48a06ae28d285a71b57ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe447f0000000000000000000000000000000000000000000000000000000000000001407ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe7f000000000000000000000000945304eb96065b2a98b57a48a06ae28d285a71b57f000000000000000000000000ffffffffffffffffffffffffffffffffffffffff6f2d6f4162696d5767078708977c37545560005155 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest140BC] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest140BC] Processing transaction number 642 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x816A36B7F6C7dDd8b431a40e1f7aAc340b092B10) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 21f133e0241b4667b02088849d5b5a758da3bd070610eaad88e5a4095db72751 --timeout 20 --value 1574880944 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x7f000000000000000000000000945304eb96065b2a98b57a48a06ae28d285a71b57ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe447f0000000000000000000000000000000000000000000000000000000000000001407ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe7f000000000000000000000000945304eb96065b2a98b57a48a06ae28d285a71b57f000000000000000000000000ffffffffffffffffffffffffffffffffffffffff6f2d6f4162696d5767078708977c3754 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

