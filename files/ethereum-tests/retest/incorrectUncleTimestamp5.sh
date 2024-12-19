# PRV_KEY for master sender 0xc1c9A9a7134cb1e4c250435531C92ba1C86F3E47
PRV_KEY=cd9e0fadcdff7ed46f288dfa271ef693c44dcb380ed7c628910b3c444480a7fe
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test incorrectUncleTimestamp5 (src/BlockchainTestsFiller/InvalidBlocks/bcUncleHeaderValidity/incorrectUncleTimestamp5Filler.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[incorrectUncleTimestamp5] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xc4AD5135475ef38C32A5b1D420450E8076CBC18E) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xc4AD5135475ef38C32A5b1D420450E8076CBC18E | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[incorrectUncleTimestamp5] Processing transaction number 61 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xc4AD5135475ef38C32A5b1D420450E8076CBC18E) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 9c2e73990b52b871ba4441bac6fd2c4ec9c4f422b74b74bbbe91fbb021396f4f --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[incorrectUncleTimestamp5] Processing transaction number 62 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xc4AD5135475ef38C32A5b1D420450E8076CBC18E) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 9c2e73990b52b871ba4441bac6fd2c4ec9c4f422b74b74bbbe91fbb021396f4f --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[incorrectUncleTimestamp5] Processing transaction number 63 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xc4AD5135475ef38C32A5b1D420450E8076CBC18E) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 9c2e73990b52b871ba4441bac6fd2c4ec9c4f422b74b74bbbe91fbb021396f4f --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

