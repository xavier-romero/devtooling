# PRV_KEY for master sender 0x67789906E305Fa8b8f5a8Feb8Bf1A43F23604961
PRV_KEY=a7856b46a341122d1c36c6ce2eba32f3ce57f205dec6917c11de181758a6b10e
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test oneUncleGeneration6 (src/BlockchainTestsFiller/InvalidBlocks/bcUncleTest/oneUncleGeneration6Filler.json)"

AMOUNT=$((2*150000*8*$GAS_PRICE+80))
echo "[oneUncleGeneration6] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xa268Ffb854664Ea7E458263eb44e69dB520E3542) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xa268Ffb854664Ea7E458263eb44e69dB520E3542 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration6] Processing transaction number 238 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xa268Ffb854664Ea7E458263eb44e69dB520E3542) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key af2b796207e62a43d10901659d364ab57bfb1ea3666e2097c5b19493d1025ae0 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration6] Processing transaction number 239 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xa268Ffb854664Ea7E458263eb44e69dB520E3542) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key af2b796207e62a43d10901659d364ab57bfb1ea3666e2097c5b19493d1025ae0 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration6] Processing transaction number 240 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xa268Ffb854664Ea7E458263eb44e69dB520E3542) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key af2b796207e62a43d10901659d364ab57bfb1ea3666e2097c5b19493d1025ae0 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration6] Processing transaction number 241 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xa268Ffb854664Ea7E458263eb44e69dB520E3542) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key af2b796207e62a43d10901659d364ab57bfb1ea3666e2097c5b19493d1025ae0 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration6] Processing transaction number 242 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xa268Ffb854664Ea7E458263eb44e69dB520E3542) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key af2b796207e62a43d10901659d364ab57bfb1ea3666e2097c5b19493d1025ae0 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration6] Processing transaction number 243 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xa268Ffb854664Ea7E458263eb44e69dB520E3542) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key af2b796207e62a43d10901659d364ab57bfb1ea3666e2097c5b19493d1025ae0 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration6] Processing transaction number 244 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xa268Ffb854664Ea7E458263eb44e69dB520E3542) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key af2b796207e62a43d10901659d364ab57bfb1ea3666e2097c5b19493d1025ae0 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration6] Processing transaction number 245 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xa268Ffb854664Ea7E458263eb44e69dB520E3542) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key af2b796207e62a43d10901659d364ab57bfb1ea3666e2097c5b19493d1025ae0 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

