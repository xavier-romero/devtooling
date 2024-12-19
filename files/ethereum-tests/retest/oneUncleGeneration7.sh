# PRV_KEY for master sender 0x95809B2E23a9b2DA9938E2330189d04494874E19
PRV_KEY=d26d70074e148c44848a6afd6cd20ebbe251b9d6144a3370a2697a178b22a24c
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test oneUncleGeneration7 (src/BlockchainTestsFiller/InvalidBlocks/bcUncleTest/oneUncleGeneration7Filler.json)"

AMOUNT=$((2*150000*9*$GAS_PRICE+90))
echo "[oneUncleGeneration7] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8Ad505C242F7F6c08a1268c16065F0E3186aEb3d) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x8Ad505C242F7F6c08a1268c16065F0E3186aEb3d | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration7] Processing transaction number 221 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8Ad505C242F7F6c08a1268c16065F0E3186aEb3d) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 3102ca5bf415bd37dbea9f671d126ec717d4d938265ea3c5babd90bd40d65e16 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration7] Processing transaction number 222 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8Ad505C242F7F6c08a1268c16065F0E3186aEb3d) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 3102ca5bf415bd37dbea9f671d126ec717d4d938265ea3c5babd90bd40d65e16 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration7] Processing transaction number 223 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8Ad505C242F7F6c08a1268c16065F0E3186aEb3d) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 3102ca5bf415bd37dbea9f671d126ec717d4d938265ea3c5babd90bd40d65e16 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration7] Processing transaction number 224 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8Ad505C242F7F6c08a1268c16065F0E3186aEb3d) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 3102ca5bf415bd37dbea9f671d126ec717d4d938265ea3c5babd90bd40d65e16 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration7] Processing transaction number 225 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8Ad505C242F7F6c08a1268c16065F0E3186aEb3d) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 3102ca5bf415bd37dbea9f671d126ec717d4d938265ea3c5babd90bd40d65e16 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration7] Processing transaction number 226 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8Ad505C242F7F6c08a1268c16065F0E3186aEb3d) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 3102ca5bf415bd37dbea9f671d126ec717d4d938265ea3c5babd90bd40d65e16 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration7] Processing transaction number 227 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8Ad505C242F7F6c08a1268c16065F0E3186aEb3d) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 3102ca5bf415bd37dbea9f671d126ec717d4d938265ea3c5babd90bd40d65e16 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration7] Processing transaction number 228 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8Ad505C242F7F6c08a1268c16065F0E3186aEb3d) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 3102ca5bf415bd37dbea9f671d126ec717d4d938265ea3c5babd90bd40d65e16 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration7] Processing transaction number 229 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8Ad505C242F7F6c08a1268c16065F0E3186aEb3d) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 3102ca5bf415bd37dbea9f671d126ec717d4d938265ea3c5babd90bd40d65e16 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

