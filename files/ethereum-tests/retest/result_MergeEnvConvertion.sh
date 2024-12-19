# PRV_KEY for master sender 0x2C844bE8c7C03Ae1C8CB07b3434a580D866EAC23
PRV_KEY=cff328c9cc1f9044a36bdf7a77f91b2cba9e2628c7a068170e73b5fbb145997b
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test result_MergeEnvConvertion (src/BlockchainTestsFiller/InvalidBlocks/bcExpectSection/result_MergeEnvConvertionFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[result_MergeEnvConvertion] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xad566dD484244Fb3f11fDEc9e4d580d648499D05) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xad566dD484244Fb3f11fDEc9e4d580d648499D05 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[result_MergeEnvConvertion] Processing transaction number 115 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xad566dD484244Fb3f11fDEc9e4d580d648499D05) to None"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 1e316103f684c700e199c698281eea836c0f067824542d66d277cd5975cd9676 --timeout 20 --value 0 --create 0x600c60015560068060126000396000f300fe600f60005500 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

