# PRV_KEY for master sender 0xF8c3fBb95eF17128ab2ea649E7e6a2B5C63908eC
PRV_KEY=d3cc141ded613e540506357debc9426ab654f11b4ccca6fae327199a27423844
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest453BC (src/BlockchainTestsFiller/ValidBlocks/bcRandomBlockhashTest/randomStatetest453BCFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+2025901210))
echo "[randomStatetest453BC] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x2a02eBdF7ECF5EF7BE064e79d8519e86b95221D3) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x2a02eBdF7ECF5EF7BE064e79d8519e86b95221D3 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest453BC] Creating receiver 0x000f3df6d732807ef1319fb7b8bb8522d0beac02 with code and balance 0..."
ADDR_000F3DF6D732807EF1319FB7B8BB8522D0BEAC02=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6103b66103b6556103e86103e85561079e61079e556300000061602760003963000000616000F33373fffffffffffffffffffffffffffffffffffffffe14604d57602036146024575f5ffd5b5f35801560495762001fff810690815414603c575f5ffd5b62001fff01545f5260205ff35b5f5ffd5b62001fff42064281555f359062001fff015500 | jq -r .contractAddress)
echo $ADDR_000F3DF6D732807EF1319FB7B8BB8522D0BEAC02

echo "[randomStatetest453BC] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 0..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 63000000ba601260003963000000ba6000F3457f000000000000000000000000000000000000000000000000000000000000c350457f000000000000000000000000ffffffffffffffffffffffffffffffffffffffff7f000000000000000000000000ffffffffffffffffffffffffffffffffffffffff7f000000000000000000000000ffffffffffffffffffffffffffffffffffffffff097f0000000000000000000000000000000000000000000000000000000000000001a0407907a0609ba280596c733c3960005155 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest453BC] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest453BC] Processing transaction number 623 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x2a02eBdF7ECF5EF7BE064e79d8519e86b95221D3) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 202ece0ad54536d30869ddf60ab9aa9e5e6efb784200c67d3f04169f22b6cfe3 --timeout 20 --value 2025901210 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x457f000000000000000000000000000000000000000000000000000000000000c350457f000000000000000000000000ffffffffffffffffffffffffffffffffffffffff7f000000000000000000000000ffffffffffffffffffffffffffffffffffffffff7f000000000000000000000000ffffffffffffffffffffffffffffffffffffffff097f0000000000000000000000000000000000000000000000000000000000000001a0407907a0609ba280596c733c39 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

