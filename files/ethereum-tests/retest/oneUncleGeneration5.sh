# PRV_KEY for master sender 0x4Af86FEb19b97fbea4B74F91039FB0F3cb448A11
PRV_KEY=2ccbe8177396b0559147b10b785c6e6ef6d403344d338f19b2b9c9d98390d93f
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test oneUncleGeneration5 (src/BlockchainTestsFiller/InvalidBlocks/bcUncleTest/oneUncleGeneration5Filler.json)"

AMOUNT=$((2*150000*7*$GAS_PRICE+70))
echo "[oneUncleGeneration5] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xDE199d92d6e577684977A38a73E8F6539173D426) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xDE199d92d6e577684977A38a73E8F6539173D426 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration5] Processing transaction number 204 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xDE199d92d6e577684977A38a73E8F6539173D426) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key bc8a248c31607bb87678afa10c99c4fa0da0452911798c0de42c83563ef29931 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration5] Processing transaction number 205 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xDE199d92d6e577684977A38a73E8F6539173D426) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key bc8a248c31607bb87678afa10c99c4fa0da0452911798c0de42c83563ef29931 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration5] Processing transaction number 206 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xDE199d92d6e577684977A38a73E8F6539173D426) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key bc8a248c31607bb87678afa10c99c4fa0da0452911798c0de42c83563ef29931 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration5] Processing transaction number 207 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xDE199d92d6e577684977A38a73E8F6539173D426) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key bc8a248c31607bb87678afa10c99c4fa0da0452911798c0de42c83563ef29931 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration5] Processing transaction number 208 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xDE199d92d6e577684977A38a73E8F6539173D426) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key bc8a248c31607bb87678afa10c99c4fa0da0452911798c0de42c83563ef29931 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration5] Processing transaction number 209 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xDE199d92d6e577684977A38a73E8F6539173D426) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key bc8a248c31607bb87678afa10c99c4fa0da0452911798c0de42c83563ef29931 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration5] Processing transaction number 210 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xDE199d92d6e577684977A38a73E8F6539173D426) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key bc8a248c31607bb87678afa10c99c4fa0da0452911798c0de42c83563ef29931 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

