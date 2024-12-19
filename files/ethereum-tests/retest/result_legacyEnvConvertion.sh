# PRV_KEY for master sender 0x706fC35b3437564dA8920070C99b4849E1D8062A
PRV_KEY=d4f9909f1ce416317c9f9792e06951cd8809ff1fbb9a36f0558018d281533485
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test result_legacyEnvConvertion (src/BlockchainTestsFiller/InvalidBlocks/bcExpectSection/result_legacyEnvConvertionFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[result_legacyEnvConvertion] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8f1bc205599741954A46352D70a42f9d28b8C536) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x8f1bc205599741954A46352D70a42f9d28b8C536 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[result_legacyEnvConvertion] Processing transaction number 112 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8f1bc205599741954A46352D70a42f9d28b8C536) to None"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 7b55656536158ede8161e0baeaf636849297e967ca2c1707f9cf892330b1068c --timeout 20 --value 0 --create 0x600c60015560068060126000396000f300fe600f60005500 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

