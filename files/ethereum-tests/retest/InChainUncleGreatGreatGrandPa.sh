# PRV_KEY for master sender 0x4eD559F8501095ce538f708C0FA7320Dde841415
PRV_KEY=374a8840598635a1998c0c62d4dbe9eac45df0f1fd1d2da30bac3b4ee2984b76
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test InChainUncleGreatGreatGrandPa (src/BlockchainTestsFiller/InvalidBlocks/bcUncleTest/InChainUncleGreatGreatGrandPaFiller.json)"

AMOUNT=$((2*150000*5*$GAS_PRICE+50))
echo "[InChainUncleGreatGreatGrandPa] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x6207b3E5B8018D622F0b356252AeB39C4D5DA1e4) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x6207b3E5B8018D622F0b356252AeB39C4D5DA1e4 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleGreatGreatGrandPa] Processing transaction number 252 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x6207b3E5B8018D622F0b356252AeB39C4D5DA1e4) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key d65d4d6db81f5eb986b74b0be75d858a5696718cdc92a46fb7a97bbbfcaa44ad --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleGreatGreatGrandPa] Processing transaction number 253 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x6207b3E5B8018D622F0b356252AeB39C4D5DA1e4) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key d65d4d6db81f5eb986b74b0be75d858a5696718cdc92a46fb7a97bbbfcaa44ad --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleGreatGreatGrandPa] Processing transaction number 254 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x6207b3E5B8018D622F0b356252AeB39C4D5DA1e4) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key d65d4d6db81f5eb986b74b0be75d858a5696718cdc92a46fb7a97bbbfcaa44ad --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleGreatGreatGrandPa] Processing transaction number 255 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x6207b3E5B8018D622F0b356252AeB39C4D5DA1e4) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key d65d4d6db81f5eb986b74b0be75d858a5696718cdc92a46fb7a97bbbfcaa44ad --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleGreatGreatGrandPa] Processing transaction number 256 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x6207b3E5B8018D622F0b356252AeB39C4D5DA1e4) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key d65d4d6db81f5eb986b74b0be75d858a5696718cdc92a46fb7a97bbbfcaa44ad --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

