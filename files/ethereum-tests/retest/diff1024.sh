# PRV_KEY for master sender 0xE4a1b2878D530C3B5450B91bB28DE79C7A0712fB
PRV_KEY=80e558217da262109e3c3608ca9ff0e7c7541d34c8495562cb145be3e05e52ec
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test diff1024 (src/BlockchainTestsFiller/ValidBlocks/bcValidBlockTest/diff1024Filler.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+10))
echo "[diff1024] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xEF28B48f262F0d4ADC4D0D6dC94C2C74B239642C) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xEF28B48f262F0d4ADC4D0D6dC94C2C74B239642C | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[diff1024] Processing transaction number 698 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xEF28B48f262F0d4ADC4D0D6dC94C2C74B239642C) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 574de97d6c3beeedaeec8ea97f54f457eda35acff34bba002b5cb6c25ff4a9ee --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

