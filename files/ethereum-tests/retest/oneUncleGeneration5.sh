# PRV_KEY for master sender 0xaDd0548202c414a5bABE29aD70Aec62B4Ee8eE3c
PRV_KEY=f115b0b20a9a4b4b4576a4847e324e9bbb6cf3b1bb3ccc7334f894ec2ca99016
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test oneUncleGeneration5 (src/BlockchainTestsFiller/InvalidBlocks/bcUncleTest/oneUncleGeneration5Filler.json)"

AMOUNT=$((2*150000*7*$GAS_PRICE+70))
echo "[oneUncleGeneration5] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xFb727BED911b069cd24D75A6F4fD3F1EeB82102F) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xFb727BED911b069cd24D75A6F4fD3F1EeB82102F | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration5] Processing transaction number 204 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xFb727BED911b069cd24D75A6F4fD3F1EeB82102F) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ad8f740b8ea1e8ccc3af34e35f06515d7e73972d7b3e5a8b23e04327cd4f8622 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration5] Processing transaction number 205 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xFb727BED911b069cd24D75A6F4fD3F1EeB82102F) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ad8f740b8ea1e8ccc3af34e35f06515d7e73972d7b3e5a8b23e04327cd4f8622 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration5] Processing transaction number 206 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xFb727BED911b069cd24D75A6F4fD3F1EeB82102F) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ad8f740b8ea1e8ccc3af34e35f06515d7e73972d7b3e5a8b23e04327cd4f8622 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration5] Processing transaction number 207 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xFb727BED911b069cd24D75A6F4fD3F1EeB82102F) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ad8f740b8ea1e8ccc3af34e35f06515d7e73972d7b3e5a8b23e04327cd4f8622 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration5] Processing transaction number 208 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xFb727BED911b069cd24D75A6F4fD3F1EeB82102F) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ad8f740b8ea1e8ccc3af34e35f06515d7e73972d7b3e5a8b23e04327cd4f8622 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration5] Processing transaction number 209 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xFb727BED911b069cd24D75A6F4fD3F1EeB82102F) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ad8f740b8ea1e8ccc3af34e35f06515d7e73972d7b3e5a8b23e04327cd4f8622 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration5] Processing transaction number 210 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xFb727BED911b069cd24D75A6F4fD3F1EeB82102F) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ad8f740b8ea1e8ccc3af34e35f06515d7e73972d7b3e5a8b23e04327cd4f8622 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

