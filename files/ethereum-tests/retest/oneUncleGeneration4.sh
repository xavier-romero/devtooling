# PRV_KEY for master sender 0x7f86B4e3006DEeFE23F718bd34d7f82678920621
PRV_KEY=267110a8591f1b85c0b453e4235f20bdb4d0f2836aba27aac7914d2979c4f978
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test oneUncleGeneration4 (src/BlockchainTestsFiller/InvalidBlocks/bcUncleTest/oneUncleGeneration4Filler.json)"

AMOUNT=$((2*150000*6*$GAS_PRICE+60))
echo "[oneUncleGeneration4] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xcd9306c6a963A48B3341DC25AD046d92c2b0c298) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xcd9306c6a963A48B3341DC25AD046d92c2b0c298 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration4] Processing transaction number 184 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xcd9306c6a963A48B3341DC25AD046d92c2b0c298) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key a8aa9b6feb1b9a42dfea2044473512def95462faad83a1f50450df108d083e35 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration4] Processing transaction number 185 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xcd9306c6a963A48B3341DC25AD046d92c2b0c298) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key a8aa9b6feb1b9a42dfea2044473512def95462faad83a1f50450df108d083e35 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration4] Processing transaction number 186 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xcd9306c6a963A48B3341DC25AD046d92c2b0c298) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key a8aa9b6feb1b9a42dfea2044473512def95462faad83a1f50450df108d083e35 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration4] Processing transaction number 187 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xcd9306c6a963A48B3341DC25AD046d92c2b0c298) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key a8aa9b6feb1b9a42dfea2044473512def95462faad83a1f50450df108d083e35 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration4] Processing transaction number 188 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xcd9306c6a963A48B3341DC25AD046d92c2b0c298) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key a8aa9b6feb1b9a42dfea2044473512def95462faad83a1f50450df108d083e35 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration4] Processing transaction number 189 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xcd9306c6a963A48B3341DC25AD046d92c2b0c298) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key a8aa9b6feb1b9a42dfea2044473512def95462faad83a1f50450df108d083e35 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

