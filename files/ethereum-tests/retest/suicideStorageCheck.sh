# PRV_KEY for master sender 0xfdadB776Ab5C02286453ebA6c4272c3B628dD691
PRV_KEY=4f94ec51155edea035ddbfafcff093ff1a5ca184c6d883bb5b8ef7eaac983db6
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test suicideStorageCheck (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/suicideStorageCheckFiller.json)"

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[suicideStorageCheck] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x2026604DFAa5999E324BA7fEf7392735A4e7ce02) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x2026604DFAa5999E324BA7fEf7392735A4e7ce02 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[suicideStorageCheck] Creating receiver 0xec0e71ad0a90ffe1909d27dac207f7680abba42d with code and balance 1000..."
ADDR_EC0E71AD0A90FFE1909D27DAC207F7680ABBA42D=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000 --create 6300000009601260003963000000096000F360036001556001ff00 | jq -r .contractAddress)
echo $ADDR_EC0E71AD0A90FFE1909D27DAC207F7680ABBA42D

echo "[suicideStorageCheck] Processing transaction number 718 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x2026604DFAa5999E324BA7fEf7392735A4e7ce02) to 0xec0e71ad0a90ffe1909d27dac207f7680abba42d"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 4c83caf9e250350bb4a023c55e2961fe609c3207a608efd59d25b3365764e1a5 --timeout 20 --value 0 $ADDR_EC0E71AD0A90FFE1909D27DAC207F7680ABBA42D | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[suicideStorageCheck] Processing transaction number 719 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x2026604DFAa5999E324BA7fEf7392735A4e7ce02) to None"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 4c83caf9e250350bb4a023c55e2961fe609c3207a608efd59d25b3365764e1a5 --timeout 20 --value 0 --create 0x600154600355600260025500 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

