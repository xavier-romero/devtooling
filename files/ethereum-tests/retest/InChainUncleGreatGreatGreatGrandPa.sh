# PRV_KEY for master sender 0x0DB911b39dC23FC0951009Ec9694bE8c5280c977
PRV_KEY=dc4a094797e4bec9d2740284d0f244f2725e6179f9ad8aa7a38d7bf9fa5ed7c2
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test InChainUncleGreatGreatGreatGrandPa (src/BlockchainTestsFiller/InvalidBlocks/bcUncleTest/InChainUncleGreatGreatGreatGrandPaFiller.json)"

AMOUNT=$((2*150000*6*$GAS_PRICE+60))
echo "[InChainUncleGreatGreatGreatGrandPa] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x16eD695a89fCeFcb6789811929f5B1c040554C09) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x16eD695a89fCeFcb6789811929f5B1c040554C09 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleGreatGreatGreatGrandPa] Processing transaction number 257 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x16eD695a89fCeFcb6789811929f5B1c040554C09) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 89407ff3a1f7ac54d737b16d20ea208b43f764dbf74774d462a4e78dc59842b1 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleGreatGreatGreatGrandPa] Processing transaction number 258 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x16eD695a89fCeFcb6789811929f5B1c040554C09) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 89407ff3a1f7ac54d737b16d20ea208b43f764dbf74774d462a4e78dc59842b1 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleGreatGreatGreatGrandPa] Processing transaction number 259 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x16eD695a89fCeFcb6789811929f5B1c040554C09) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 89407ff3a1f7ac54d737b16d20ea208b43f764dbf74774d462a4e78dc59842b1 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleGreatGreatGreatGrandPa] Processing transaction number 260 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x16eD695a89fCeFcb6789811929f5B1c040554C09) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 89407ff3a1f7ac54d737b16d20ea208b43f764dbf74774d462a4e78dc59842b1 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleGreatGreatGreatGrandPa] Processing transaction number 261 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x16eD695a89fCeFcb6789811929f5B1c040554C09) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 89407ff3a1f7ac54d737b16d20ea208b43f764dbf74774d462a4e78dc59842b1 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleGreatGreatGreatGrandPa] Processing transaction number 262 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x16eD695a89fCeFcb6789811929f5B1c040554C09) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 89407ff3a1f7ac54d737b16d20ea208b43f764dbf74774d462a4e78dc59842b1 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

