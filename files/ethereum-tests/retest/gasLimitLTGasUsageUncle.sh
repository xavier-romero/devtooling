# PRV_KEY for master sender 0x93B0435Dd75fc307551a7AE857f5BF8f82A2A4A9
PRV_KEY=22fa6ebf98c59ab03da2b92e548552acd0b6b34cdb843a229c36aac6d756d96e
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test gasLimitLTGasUsageUncle (src/BlockchainTestsFiller/InvalidBlocks/bcUncleHeaderValidity/gasLimitLTGasUsageUncleFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[gasLimitLTGasUsageUncle] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x38c4D0595E31916E650C152C216f16dDA4ec6De3) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x38c4D0595E31916E650C152C216f16dDA4ec6De3 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[gasLimitLTGasUsageUncle] Processing transaction number 43 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x38c4D0595E31916E650C152C216f16dDA4ec6De3) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key b0f43bd52a8b098a2e72d0bcefe8a5821507273cc34716444412344a67d6a644 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[gasLimitLTGasUsageUncle] Processing transaction number 44 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x38c4D0595E31916E650C152C216f16dDA4ec6De3) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key b0f43bd52a8b098a2e72d0bcefe8a5821507273cc34716444412344a67d6a644 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[gasLimitLTGasUsageUncle] Processing transaction number 45 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x38c4D0595E31916E650C152C216f16dDA4ec6De3) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key b0f43bd52a8b098a2e72d0bcefe8a5821507273cc34716444412344a67d6a644 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

