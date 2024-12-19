# PRV_KEY for master sender 0x91e7c0ab0503DD09260261e1619eB00DA5563E38
PRV_KEY=7304f4efc31e575fa61bd9ee7bc1311b7066bf3d81f3bd3bfb5be895282481d4
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest515BC (src/BlockchainTestsFiller/ValidBlocks/bcRandomBlockhashTest/randomStatetest515BCFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+1108434794))
echo "[randomStatetest515BC] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x53074D6d06680BdFECeb831DB8234101004870DD) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x53074D6d06680BdFECeb831DB8234101004870DD | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest515BC] Creating receiver 0x000f3df6d732807ef1319fb7b8bb8522d0beac02 with code and balance 0..."
ADDR_000F3DF6D732807EF1319FB7B8BB8522D0BEAC02=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6103b66103b6556103e86103e85561079e61079e556300000061602760003963000000616000F33373fffffffffffffffffffffffffffffffffffffffe14604d57602036146024575f5ffd5b5f35801560495762001fff810690815414603c575f5ffd5b62001fff01545f5260205ff35b5f5ffd5b62001fff42064281555f359062001fff015500 | jq -r .contractAddress)
echo $ADDR_000F3DF6D732807EF1319FB7B8BB8522D0BEAC02

echo "[randomStatetest515BC] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 0..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 63000000bd601260003963000000bd6000F3437f000000000000000000000000000000000000000000000000000000000000c3507f000000000000000000000000000000000000000000000000000000000000c350427f000000000000000000000000ffffffffffffffffffffffffffffffffffffffff407ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff6f9283944569657e135a7e38997986955560005155 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest515BC] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest515BC] Processing transaction number 636 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x53074D6d06680BdFECeb831DB8234101004870DD) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 061de9c4e4fe297a49be14c835994ce39857fee24ca2a21cc4578b7f51d268cb --timeout 20 --value 1108434794 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x437f000000000000000000000000000000000000000000000000000000000000c3507f000000000000000000000000000000000000000000000000000000000000c350427f000000000000000000000000ffffffffffffffffffffffffffffffffffffffff407ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff6f9283944569657e135a7e3899798695 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

