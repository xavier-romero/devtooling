# PRV_KEY for master sender 0xD54d081714bD35639C36f9423A476577a12476Dc
PRV_KEY=d95664b943dfdb595f4897f8d3199109f8c116ea842bd030fb42a8f9d5e443e7
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test DaoTransactions_XBlockm1 (src/BlockchainTestsFiller/TransitionTests/bcHomesteadToDao/DaoTransactions_XBlockm1Filler.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[DaoTransactions_XBlockm1] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x4AD67733F92a6745D34b91Ee22502b90C868d40C) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x4AD67733F92a6745D34b91Ee22502b90C868d40C | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions_XBlockm1] Processing transaction number 859 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x4AD67733F92a6745D34b91Ee22502b90C868d40C) to 0x1000000000000000000000000000000000000007"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 0366fc6159dfea5012fc23cfe94c3580c803c7ba246a050b8a48c7f605cc504a --timeout 20 --value 0 0x1000000000000000000000000000000000000007 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

