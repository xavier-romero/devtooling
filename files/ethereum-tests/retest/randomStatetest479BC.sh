# PRV_KEY for master sender 0xcA6557Be785a622Fa13B2fE2924499Bec377cc4e
PRV_KEY=1386b0d5994bb1ba284bc6cadafaf1675e6806bf2e916cd5d7e54d06127624cc
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest479BC (src/BlockchainTestsFiller/ValidBlocks/bcRandomBlockhashTest/randomStatetest479BCFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+1867148718))
echo "[randomStatetest479BC] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x73d8921BD71748fb81bEEe660ef50557FB8A2B9C) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x73d8921BD71748fb81bEEe660ef50557FB8A2B9C | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest479BC] Creating receiver 0x000f3df6d732807ef1319fb7b8bb8522d0beac02 with code and balance 0..."
ADDR_000F3DF6D732807EF1319FB7B8BB8522D0BEAC02=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6103b66103b6556103e86103e85561079e61079e556300000061602760003963000000616000F33373fffffffffffffffffffffffffffffffffffffffe14604d57602036146024575f5ffd5b5f35801560495762001fff810690815414603c575f5ffd5b62001fff01545f5260205ff35b5f5ffd5b62001fff42064281555f359062001fff015500 | jq -r .contractAddress)
echo $ADDR_000F3DF6D732807EF1319FB7B8BB8522D0BEAC02

echo "[randomStatetest479BC] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 0..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 63000000f4601260003963000000f46000F37f000000000000000000000000ffffffffffffffffffffffffffffffffffffffff7f00000000000000000000000000000000000000000000000000000000000000017ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe7f000000000000000000000000000000000000000000000000000000000000c3507f0000000000000000000000000000000000000000000000000000000000000001407f00000000000000000000000000000000000000000000000000000000000000007f000000000000000000000000000000000000000000000000000000000000c3504035820b5079895560005155 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest479BC] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest479BC] Processing transaction number 675 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x73d8921BD71748fb81bEEe660ef50557FB8A2B9C) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 496b5b7bfaea4122ae744da019a325f9b29e0036ba573d23df350a84a1ee0b25 --timeout 20 --value 1867148718 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x7f000000000000000000000000ffffffffffffffffffffffffffffffffffffffff7f00000000000000000000000000000000000000000000000000000000000000017ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe7f000000000000000000000000000000000000000000000000000000000000c3507f0000000000000000000000000000000000000000000000000000000000000001407f00000000000000000000000000000000000000000000000000000000000000007f000000000000000000000000000000000000000000000000000000000000c3504035820b507989 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

