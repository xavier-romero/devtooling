# PRV_KEY for master sender 0x2f8c2722baA0B0Fea0BcFA924485DF9dc960883a
PRV_KEY=a44cdfb8d53ca520e49ebcfb2909a7f39e5f3668f73e761b0a2ca4205e6a79c7
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test timestampTooHigh (src/BlockchainTestsFiller/InvalidBlocks/bcUncleHeaderValidity/timestampTooHighFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[timestampTooHigh] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x94e9Cb81b3A55F9Ec73Bc4f7605Adc34fEF1Eaac) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x94e9Cb81b3A55F9Ec73Bc4f7605Adc34fEF1Eaac | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[timestampTooHigh] Processing transaction number 76 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x94e9Cb81b3A55F9Ec73Bc4f7605Adc34fEF1Eaac) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 03e29aaddff681ff42b8bbdac7f0dcaae98735f04609c634f85ead6ee2a9a7ef --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[timestampTooHigh] Processing transaction number 77 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x94e9Cb81b3A55F9Ec73Bc4f7605Adc34fEF1Eaac) to 0x0000000000000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 03e29aaddff681ff42b8bbdac7f0dcaae98735f04609c634f85ead6ee2a9a7ef --timeout 20 --value 10 0x0000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[timestampTooHigh] Processing transaction number 78 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x94e9Cb81b3A55F9Ec73Bc4f7605Adc34fEF1Eaac) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 03e29aaddff681ff42b8bbdac7f0dcaae98735f04609c634f85ead6ee2a9a7ef --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

