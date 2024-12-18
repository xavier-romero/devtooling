# PRV_KEY for master sender 0x2DC3f80B240C1A70382eF7BA38175B53051dF3C4
PRV_KEY=111510a42597984f68381db42af07ce311372a3d051f4612fa665f09dcfa1a7a
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test oneUncleGeneration6 (src/BlockchainTestsFiller/InvalidBlocks/bcUncleTest/oneUncleGeneration6Filler.json)"

AMOUNT=$((2*150000*8*$GAS_PRICE+80))
echo "[oneUncleGeneration6] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xd505cD6DA4032c626182265Ff299903b586c54d4) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xd505cD6DA4032c626182265Ff299903b586c54d4 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration6] Processing transaction number 238 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xd505cD6DA4032c626182265Ff299903b586c54d4) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 7e0973ad857ca6144aaaa0b93f437ee5e596cedd346be3cada4797423fa46607 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration6] Processing transaction number 239 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xd505cD6DA4032c626182265Ff299903b586c54d4) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 7e0973ad857ca6144aaaa0b93f437ee5e596cedd346be3cada4797423fa46607 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration6] Processing transaction number 240 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xd505cD6DA4032c626182265Ff299903b586c54d4) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 7e0973ad857ca6144aaaa0b93f437ee5e596cedd346be3cada4797423fa46607 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration6] Processing transaction number 241 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xd505cD6DA4032c626182265Ff299903b586c54d4) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 7e0973ad857ca6144aaaa0b93f437ee5e596cedd346be3cada4797423fa46607 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration6] Processing transaction number 242 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xd505cD6DA4032c626182265Ff299903b586c54d4) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 7e0973ad857ca6144aaaa0b93f437ee5e596cedd346be3cada4797423fa46607 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration6] Processing transaction number 243 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xd505cD6DA4032c626182265Ff299903b586c54d4) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 7e0973ad857ca6144aaaa0b93f437ee5e596cedd346be3cada4797423fa46607 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration6] Processing transaction number 244 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xd505cD6DA4032c626182265Ff299903b586c54d4) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 7e0973ad857ca6144aaaa0b93f437ee5e596cedd346be3cada4797423fa46607 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration6] Processing transaction number 245 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xd505cD6DA4032c626182265Ff299903b586c54d4) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 7e0973ad857ca6144aaaa0b93f437ee5e596cedd346be3cada4797423fa46607 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

