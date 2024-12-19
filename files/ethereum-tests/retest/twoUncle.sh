# PRV_KEY for master sender 0xd7B89E2C6CD6BBf5F9eecca56f771c6844bF070A
PRV_KEY=d496c22aad80a8d3832868c920d26add945291c488a87388ac575024505c47b4
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test twoUncle (src/BlockchainTestsFiller/InvalidBlocks/bcUncleTest/twoUncleFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[twoUncle] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x29249Cf169C8c335C64EE6b51F6D35A947e2192c) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x29249Cf169C8c335C64EE6b51F6D35A947e2192c | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[twoUncle] Processing transaction number 249 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x29249Cf169C8c335C64EE6b51F6D35A947e2192c) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 7e6aed9fc37fca501e9ae5739cb40c60f4521641204b412758b988225abff602 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[twoUncle] Processing transaction number 250 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x29249Cf169C8c335C64EE6b51F6D35A947e2192c) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 7e6aed9fc37fca501e9ae5739cb40c60f4521641204b412758b988225abff602 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[twoUncle] Processing transaction number 251 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x29249Cf169C8c335C64EE6b51F6D35A947e2192c) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 7e6aed9fc37fca501e9ae5739cb40c60f4521641204b412758b988225abff602 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

