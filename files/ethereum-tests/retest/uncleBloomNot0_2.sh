# PRV_KEY for master sender 0x479d74b56920C2D4358e59466aEB05D09E825d21
PRV_KEY=52e6c2316750a83b9d42272daa1cccfc0264113945de12199b2928c7b41ac05a
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test uncleBloomNot0_2 (src/BlockchainTestsFiller/InvalidBlocks/bcUncleSpecialTests/uncleBloomNot0_2Filler.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[uncleBloomNot0_2] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x1c1c2742fAb8b7114dDCEAc2597F0c0e83370724) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x1c1c2742fAb8b7114dDCEAc2597F0c0e83370724 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[uncleBloomNot0_2] Processing transaction number 25 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x1c1c2742fAb8b7114dDCEAc2597F0c0e83370724) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 47fcb947b32306f33f8c585689ec18210d5251d6575bd1352a2156904b3bda5c --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[uncleBloomNot0_2] Processing transaction number 26 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x1c1c2742fAb8b7114dDCEAc2597F0c0e83370724) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 47fcb947b32306f33f8c585689ec18210d5251d6575bd1352a2156904b3bda5c --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[uncleBloomNot0_2] Processing transaction number 27 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x1c1c2742fAb8b7114dDCEAc2597F0c0e83370724) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 47fcb947b32306f33f8c585689ec18210d5251d6575bd1352a2156904b3bda5c --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

