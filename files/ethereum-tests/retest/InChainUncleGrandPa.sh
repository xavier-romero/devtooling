# PRV_KEY for master sender 0x8716c19D53fE3a2Afff1C02C3dcF907f14fb7CB8
PRV_KEY=603b10badaf59acdaf7fe9c272d50093d17279bdb9b37ad40a7941ac7c0fcd32
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test InChainUncleGrandPa (src/BlockchainTestsFiller/InvalidBlocks/bcUncleTest/InChainUncleGrandPaFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[InChainUncleGrandPa] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x38B5509aF91A2999f5087350979777992E75e237) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x38B5509aF91A2999f5087350979777992E75e237 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleGrandPa] Processing transaction number 230 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x38B5509aF91A2999f5087350979777992E75e237) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 1aba859fd97ff4b3fb67312aaa8917a9b477ebe402f6b6ff4ee9713b85e7f054 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleGrandPa] Processing transaction number 231 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x38B5509aF91A2999f5087350979777992E75e237) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 1aba859fd97ff4b3fb67312aaa8917a9b477ebe402f6b6ff4ee9713b85e7f054 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleGrandPa] Processing transaction number 232 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x38B5509aF91A2999f5087350979777992E75e237) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 1aba859fd97ff4b3fb67312aaa8917a9b477ebe402f6b6ff4ee9713b85e7f054 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

