# PRV_KEY for master sender 0xb835Ba7DbE6C1293203a5826CF4cCf7082bd604A
PRV_KEY=5e2b4d22bc278b06ba50b7870dd0f308b2038de9e68879fae862e094a18916d6
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest344BC (src/BlockchainTestsFiller/ValidBlocks/bcRandomBlockhashTest/randomStatetest344BCFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+811058531))
echo "[randomStatetest344BC] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xbF37A12c65Bac9649F9AfeDe21242dF2e394e8a9) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xbF37A12c65Bac9649F9AfeDe21242dF2e394e8a9 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest344BC] Creating receiver 0x000f3df6d732807ef1319fb7b8bb8522d0beac02 with code and balance 0..."
ADDR_000F3DF6D732807EF1319FB7B8BB8522D0BEAC02=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6103b66103b6556103e86103e85561079e61079e556300000061602760003963000000616000F33373fffffffffffffffffffffffffffffffffffffffe14604d57602036146024575f5ffd5b5f35801560495762001fff810690815414603c575f5ffd5b62001fff01545f5260205ff35b5f5ffd5b62001fff42064281555f359062001fff015500 | jq -r .contractAddress)
echo $ADDR_000F3DF6D732807EF1319FB7B8BB8522D0BEAC02

echo "[randomStatetest344BC] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 0..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6300000094601260003963000000946000F37f000000000000000000000000ffffffffffffffffffffffffffffffffffffffff7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe33405a417fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff8509ffda551a076d60005155 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest344BC] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest344BC] Processing transaction number 629 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xbF37A12c65Bac9649F9AfeDe21242dF2e394e8a9) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key e6c609cb3158a388935dc8693aad17fbd7b9ba06f3218b5a5f865eab025341f5 --timeout 20 --value 811058531 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x7f000000000000000000000000ffffffffffffffffffffffffffffffffffffffff7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe33405a417fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff8509ffda551a076d | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi
