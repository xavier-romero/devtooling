# PRV_KEY for master sender 0x6c41b87dAb98313CDaf23AE4DcA899e85e385c9c
PRV_KEY=8ebc9d9034db7f4ff4185a6966963631f586cde3827114cfc508ce19425cc96d
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test twoEqualUncle (src/BlockchainTestsFiller/InvalidBlocks/bcUncleTest/twoEqualUncleFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[twoEqualUncle] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xaA44a0383D1A2EE5BC7165893Db6769046C6718A) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xaA44a0383D1A2EE5BC7165893Db6769046C6718A | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[twoEqualUncle] Processing transaction number 178 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xaA44a0383D1A2EE5BC7165893Db6769046C6718A) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 22153d74ba13f75d67da909af1962a0195fa4e8ba4ba4fa6b840ca934055eeaa --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[twoEqualUncle] Processing transaction number 179 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xaA44a0383D1A2EE5BC7165893Db6769046C6718A) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 22153d74ba13f75d67da909af1962a0195fa4e8ba4ba4fa6b840ca934055eeaa --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[twoEqualUncle] Processing transaction number 180 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xaA44a0383D1A2EE5BC7165893Db6769046C6718A) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 22153d74ba13f75d67da909af1962a0195fa4e8ba4ba4fa6b840ca934055eeaa --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

