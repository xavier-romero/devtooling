# PRV_KEY for master sender 0xDcbA3F2a8237EE51873ed061E3925c4Ec9cb15aE
PRV_KEY=34616c5157a06e787a8699136f88a52a2c7bae7414734fae79b0afeaa902b88c
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest551BC (src/BlockchainTestsFiller/ValidBlocks/bcRandomBlockhashTest/randomStatetest551BCFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+954172415))
echo "[randomStatetest551BC] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xfa5DbeCd6B49DF0Eb6D11DF8E8991d1456591249) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xfa5DbeCd6B49DF0Eb6D11DF8E8991d1456591249 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest551BC] Creating receiver 0x000f3df6d732807ef1319fb7b8bb8522d0beac02 with code and balance 0..."
ADDR_000F3DF6D732807EF1319FB7B8BB8522D0BEAC02=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6103b66103b6556103e86103e85561079e61079e556300000061602760003963000000616000F33373fffffffffffffffffffffffffffffffffffffffe14604d57602036146024575f5ffd5b5f35801560495762001fff810690815414603c575f5ffd5b62001fff01545f5260205ff35b5f5ffd5b62001fff42064281555f359062001fff015500 | jq -r .contractAddress)
echo $ADDR_000F3DF6D732807EF1319FB7B8BB8522D0BEAC02

echo "[randomStatetest551BC] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 0..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 63000000dd601260003963000000dd6000F37f000000000000000000000000945304eb96065b2a98b57a48a06ae28d285a71b57f000000000000000000000000000000000000000000000000000000000000c350407f000000000000000000000000945304eb96065b2a98b57a48a06ae28d285a71b57ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe7f000000000000000000000000000000000000000000000000000000000000c350457ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe6f68809e688f8d9841318b806c046a6e5560005155 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest551BC] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest551BC] Processing transaction number 596 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xfa5DbeCd6B49DF0Eb6D11DF8E8991d1456591249) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ec6982132175164d3a4f7767f879bc302cf5392911ace15af2d48feb63a2f704 --timeout 20 --value 954172415 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x7f000000000000000000000000945304eb96065b2a98b57a48a06ae28d285a71b57f000000000000000000000000000000000000000000000000000000000000c350407f000000000000000000000000945304eb96065b2a98b57a48a06ae28d285a71b57ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe7f000000000000000000000000000000000000000000000000000000000000c350457ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe6f68809e688f8d9841318b806c046a6e | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

