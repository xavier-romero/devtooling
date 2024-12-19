# PRV_KEY for master sender 0x1155c3eD1777A9e81c164df0d0aec9b4f99423f1
PRV_KEY=ae510bf82e626427898cdf0f3bef0f4731ce5dbbb71864b534c5815a31f7ff98
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test InChainUncleGreatGreatGrandPa (src/BlockchainTestsFiller/InvalidBlocks/bcUncleTest/InChainUncleGreatGreatGrandPaFiller.json)"

AMOUNT=$((2*150000*5*$GAS_PRICE+50))
echo "[InChainUncleGreatGreatGrandPa] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x4FD96246eC0f397780cbADd30236d4CC9c443E64) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x4FD96246eC0f397780cbADd30236d4CC9c443E64 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleGreatGreatGrandPa] Processing transaction number 252 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x4FD96246eC0f397780cbADd30236d4CC9c443E64) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key e8fdba46ca7b3fba147aacb11aa3d5436bd45a68e5cfaaffe6175590ab3b51c9 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleGreatGreatGrandPa] Processing transaction number 253 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x4FD96246eC0f397780cbADd30236d4CC9c443E64) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key e8fdba46ca7b3fba147aacb11aa3d5436bd45a68e5cfaaffe6175590ab3b51c9 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleGreatGreatGrandPa] Processing transaction number 254 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x4FD96246eC0f397780cbADd30236d4CC9c443E64) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key e8fdba46ca7b3fba147aacb11aa3d5436bd45a68e5cfaaffe6175590ab3b51c9 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleGreatGreatGrandPa] Processing transaction number 255 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x4FD96246eC0f397780cbADd30236d4CC9c443E64) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key e8fdba46ca7b3fba147aacb11aa3d5436bd45a68e5cfaaffe6175590ab3b51c9 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleGreatGreatGrandPa] Processing transaction number 256 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x4FD96246eC0f397780cbADd30236d4CC9c443E64) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key e8fdba46ca7b3fba147aacb11aa3d5436bd45a68e5cfaaffe6175590ab3b51c9 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

