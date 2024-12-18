# PRV_KEY for master sender 0x8bb7fAF1Fc2B3B2320e515672F035741867FDEbb
PRV_KEY=4323d78a2801b615e91549660a67166996d5baea5e35e2699c69da147e785f44
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest7BC (src/BlockchainTestsFiller/ValidBlocks/bcRandomBlockhashTest/randomStatetest7BCFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+826837032))
echo "[randomStatetest7BC] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xF394adFa0c70d540b4113E0D95611424d56D65A5) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xF394adFa0c70d540b4113E0D95611424d56D65A5 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest7BC] Creating receiver 0x000f3df6d732807ef1319fb7b8bb8522d0beac02 with code and balance 0..."
ADDR_000F3DF6D732807EF1319FB7B8BB8522D0BEAC02=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6103b66103b6556103e86103e85561079e61079e556300000061602760003963000000616000F33373fffffffffffffffffffffffffffffffffffffffe14604d57602036146024575f5ffd5b5f35801560495762001fff810690815414603c575f5ffd5b62001fff01545f5260205ff35b5f5ffd5b62001fff42064281555f359062001fff015500 | jq -r .contractAddress)
echo $ADDR_000F3DF6D732807EF1319FB7B8BB8522D0BEAC02

echo "[randomStatetest7BC] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 0..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6300000091601260003963000000916000F3417fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff557ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe40437f000000000000000000000000945304eb96065b2a98b57a48a06ae28d285a71b57ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe163119185560005155 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest7BC] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest7BC] Processing transaction number 676 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xF394adFa0c70d540b4113E0D95611424d56D65A5) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 62678de8d88dbe2f0a24972b3bbca8095b679b5b45dab55d475fbf4cac8e397f --timeout 20 --value 826837032 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x417fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff557ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe40437f000000000000000000000000945304eb96065b2a98b57a48a06ae28d285a71b57ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe1631191855 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

