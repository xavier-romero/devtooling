# PRV_KEY for master sender 0xb43d5Bfb0a3a7d1b63B7e84c133a8c374fcb90a4
PRV_KEY=a3277d55263381da5fa6d9798f1a49d1bd44084c8b6e69a56b4b2b2ba7e71c2e
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test oneUncleGeneration3 (src/BlockchainTestsFiller/InvalidBlocks/bcUncleTest/oneUncleGeneration3Filler.json)"

AMOUNT=$((2*150000*5*$GAS_PRICE+50))
echo "[oneUncleGeneration3] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x6eF6968D1a1e39BF774CBCC77B79d3F4D02aBB61) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x6eF6968D1a1e39BF774CBCC77B79d3F4D02aBB61 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration3] Processing transaction number 233 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x6eF6968D1a1e39BF774CBCC77B79d3F4D02aBB61) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 5e99ca3e3a40aea042f5c802e272bf1fc0aa42514f790edd133044b42d7ca87d --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration3] Processing transaction number 234 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x6eF6968D1a1e39BF774CBCC77B79d3F4D02aBB61) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 5e99ca3e3a40aea042f5c802e272bf1fc0aa42514f790edd133044b42d7ca87d --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration3] Processing transaction number 235 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x6eF6968D1a1e39BF774CBCC77B79d3F4D02aBB61) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 5e99ca3e3a40aea042f5c802e272bf1fc0aa42514f790edd133044b42d7ca87d --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration3] Processing transaction number 236 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x6eF6968D1a1e39BF774CBCC77B79d3F4D02aBB61) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 5e99ca3e3a40aea042f5c802e272bf1fc0aa42514f790edd133044b42d7ca87d --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration3] Processing transaction number 237 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x6eF6968D1a1e39BF774CBCC77B79d3F4D02aBB61) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 5e99ca3e3a40aea042f5c802e272bf1fc0aa42514f790edd133044b42d7ca87d --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

