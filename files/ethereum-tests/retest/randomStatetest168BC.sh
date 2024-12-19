# PRV_KEY for master sender 0xDF3414d34cb6b02E4F1C15f56f88aF1CCD63ceB4
PRV_KEY=2102683fabe7463e2be6e9101dbc0772dca839fb6172ea341b8d5814a502b1f4
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest168BC (src/BlockchainTestsFiller/ValidBlocks/bcRandomBlockhashTest/randomStatetest168BCFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+310398856))
echo "[randomStatetest168BC] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xcF731Aa1DA416F96AF0DF8A1DE742DdF1aC69965) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xcF731Aa1DA416F96AF0DF8A1DE742DdF1aC69965 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest168BC] Creating receiver 0x000f3df6d732807ef1319fb7b8bb8522d0beac02 with code and balance 0..."
ADDR_000F3DF6D732807EF1319FB7B8BB8522D0BEAC02=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6103b66103b6556103e86103e85561079e61079e556300000061602760003963000000616000F33373fffffffffffffffffffffffffffffffffffffffe14604d57602036146024575f5ffd5b5f35801560495762001fff810690815414603c575f5ffd5b62001fff01545f5260205ff35b5f5ffd5b62001fff42064281555f359062001fff015500 | jq -r .contractAddress)
echo $ADDR_000F3DF6D732807EF1319FB7B8BB8522D0BEAC02

echo "[randomStatetest168BC] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 0..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 630000009c6012600039630000009c6000F37fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff5b407f000000000000000000000000945304eb96065b2a98b57a48a06ae28d285a71b57ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe067f000000000000000000000000ffffffffffffffffffffffffffffffffffffffff6f618a8186756319140295026c0996875560005155 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest168BC] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest168BC] Processing transaction number 678 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xcF731Aa1DA416F96AF0DF8A1DE742DdF1aC69965) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 0e58098e6a17d33e367f95f3be70e5b57b75489b30535aa9055d3d97f7b8a6fc --timeout 20 --value 310398856 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff5b407f000000000000000000000000945304eb96065b2a98b57a48a06ae28d285a71b57ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe067f000000000000000000000000ffffffffffffffffffffffffffffffffffffffff6f618a8186756319140295026c099687 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

