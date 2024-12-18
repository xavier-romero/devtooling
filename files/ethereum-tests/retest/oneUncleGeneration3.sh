# PRV_KEY for master sender 0x615e0E7a1c49D5889D423d6d65355739d3F5B669
PRV_KEY=a53b4d0157e276ea7010ae184ed29d8d3e4c7f286619e49b2c6e301c7e96b8f1
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test oneUncleGeneration3 (src/BlockchainTestsFiller/InvalidBlocks/bcUncleTest/oneUncleGeneration3Filler.json)"

AMOUNT=$((2*150000*5*$GAS_PRICE+50))
echo "[oneUncleGeneration3] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xcd0ae0Bd20a3C96751926BDB09E2E7ae88A5b16f) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xcd0ae0Bd20a3C96751926BDB09E2E7ae88A5b16f | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration3] Processing transaction number 233 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xcd0ae0Bd20a3C96751926BDB09E2E7ae88A5b16f) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 790695915236191c2104cec55f5fba92831f1ed633ead925512df4ecf4a080b2 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration3] Processing transaction number 234 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xcd0ae0Bd20a3C96751926BDB09E2E7ae88A5b16f) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 790695915236191c2104cec55f5fba92831f1ed633ead925512df4ecf4a080b2 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration3] Processing transaction number 235 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xcd0ae0Bd20a3C96751926BDB09E2E7ae88A5b16f) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 790695915236191c2104cec55f5fba92831f1ed633ead925512df4ecf4a080b2 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration3] Processing transaction number 236 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xcd0ae0Bd20a3C96751926BDB09E2E7ae88A5b16f) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 790695915236191c2104cec55f5fba92831f1ed633ead925512df4ecf4a080b2 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration3] Processing transaction number 237 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xcd0ae0Bd20a3C96751926BDB09E2E7ae88A5b16f) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 790695915236191c2104cec55f5fba92831f1ed633ead925512df4ecf4a080b2 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

