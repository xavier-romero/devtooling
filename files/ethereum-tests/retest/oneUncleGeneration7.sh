# PRV_KEY for master sender 0xe3e2F16Fc46cc2Ed335694682D882D65d93a91ec
PRV_KEY=c5ba98bbc78a79199a30afbf4c748c248be215574a64c7ccae092ca4f3e733d2
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test oneUncleGeneration7 (src/BlockchainTestsFiller/InvalidBlocks/bcUncleTest/oneUncleGeneration7Filler.json)"

AMOUNT=$((2*150000*9*$GAS_PRICE+90))
echo "[oneUncleGeneration7] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x39575E21A8d60aB91fe3bbAF6546F7022CD7AdB3) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x39575E21A8d60aB91fe3bbAF6546F7022CD7AdB3 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration7] Processing transaction number 221 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x39575E21A8d60aB91fe3bbAF6546F7022CD7AdB3) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 93f4a7609d0aeb3fcf992e0bd7b036ce58357b5cd7f8a65083f5b2e77dd97a03 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration7] Processing transaction number 222 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x39575E21A8d60aB91fe3bbAF6546F7022CD7AdB3) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 93f4a7609d0aeb3fcf992e0bd7b036ce58357b5cd7f8a65083f5b2e77dd97a03 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration7] Processing transaction number 223 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x39575E21A8d60aB91fe3bbAF6546F7022CD7AdB3) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 93f4a7609d0aeb3fcf992e0bd7b036ce58357b5cd7f8a65083f5b2e77dd97a03 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration7] Processing transaction number 224 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x39575E21A8d60aB91fe3bbAF6546F7022CD7AdB3) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 93f4a7609d0aeb3fcf992e0bd7b036ce58357b5cd7f8a65083f5b2e77dd97a03 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration7] Processing transaction number 225 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x39575E21A8d60aB91fe3bbAF6546F7022CD7AdB3) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 93f4a7609d0aeb3fcf992e0bd7b036ce58357b5cd7f8a65083f5b2e77dd97a03 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration7] Processing transaction number 226 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x39575E21A8d60aB91fe3bbAF6546F7022CD7AdB3) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 93f4a7609d0aeb3fcf992e0bd7b036ce58357b5cd7f8a65083f5b2e77dd97a03 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration7] Processing transaction number 227 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x39575E21A8d60aB91fe3bbAF6546F7022CD7AdB3) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 93f4a7609d0aeb3fcf992e0bd7b036ce58357b5cd7f8a65083f5b2e77dd97a03 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration7] Processing transaction number 228 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x39575E21A8d60aB91fe3bbAF6546F7022CD7AdB3) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 93f4a7609d0aeb3fcf992e0bd7b036ce58357b5cd7f8a65083f5b2e77dd97a03 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration7] Processing transaction number 229 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x39575E21A8d60aB91fe3bbAF6546F7022CD7AdB3) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 93f4a7609d0aeb3fcf992e0bd7b036ce58357b5cd7f8a65083f5b2e77dd97a03 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

