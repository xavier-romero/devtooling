# PRV_KEY for master sender 0xaa845389C38f275AEEE5f52293D705D6b98592C6
PRV_KEY=00c24c5f0774e41d0129ffd69babaa6810557cd188666c65f794f9a3f3ed6520
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test InChainUncleGreatGreatGreatGrandPa (src/BlockchainTestsFiller/InvalidBlocks/bcUncleTest/InChainUncleGreatGreatGreatGrandPaFiller.json)"

AMOUNT=$((2*150000*6*$GAS_PRICE+60))
echo "[InChainUncleGreatGreatGreatGrandPa] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x022A27ac5B6255265738889cA17a98A29e715f71) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x022A27ac5B6255265738889cA17a98A29e715f71 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleGreatGreatGreatGrandPa] Processing transaction number 257 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x022A27ac5B6255265738889cA17a98A29e715f71) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 5fb6d3e7b726692c4e4059df95e8440cfcb6777d5f382dd62026f4d8b73c807a --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleGreatGreatGreatGrandPa] Processing transaction number 258 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x022A27ac5B6255265738889cA17a98A29e715f71) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 5fb6d3e7b726692c4e4059df95e8440cfcb6777d5f382dd62026f4d8b73c807a --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleGreatGreatGreatGrandPa] Processing transaction number 259 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x022A27ac5B6255265738889cA17a98A29e715f71) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 5fb6d3e7b726692c4e4059df95e8440cfcb6777d5f382dd62026f4d8b73c807a --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleGreatGreatGreatGrandPa] Processing transaction number 260 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x022A27ac5B6255265738889cA17a98A29e715f71) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 5fb6d3e7b726692c4e4059df95e8440cfcb6777d5f382dd62026f4d8b73c807a --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleGreatGreatGreatGrandPa] Processing transaction number 261 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x022A27ac5B6255265738889cA17a98A29e715f71) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 5fb6d3e7b726692c4e4059df95e8440cfcb6777d5f382dd62026f4d8b73c807a --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleGreatGreatGreatGrandPa] Processing transaction number 262 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x022A27ac5B6255265738889cA17a98A29e715f71) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 5fb6d3e7b726692c4e4059df95e8440cfcb6777d5f382dd62026f4d8b73c807a --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

