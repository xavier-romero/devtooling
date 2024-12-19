# PRV_KEY for master sender 0xB4E1e1E6258176453A5fFd72252bC06b18879F2B
PRV_KEY=42c02acc5cc3663a393ae19d646acee3b55106d456651edb3634d6363ab9ae52
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test InChainUncle (src/BlockchainTestsFiller/InvalidBlocks/bcUncleTest/InChainUncleFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[InChainUncle] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xB263cF16dd637944e6E0Ea40e42C7e2DAfE2B24C) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xB263cF16dd637944e6E0Ea40e42C7e2DAfE2B24C | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncle] Processing transaction number 190 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xB263cF16dd637944e6E0Ea40e42C7e2DAfE2B24C) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 2e5f1a47b7d8b5e45823facb155a7a8084cc22adc5bcab7f7e4d02cfa02c5010 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncle] Processing transaction number 191 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xB263cF16dd637944e6E0Ea40e42C7e2DAfE2B24C) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 2e5f1a47b7d8b5e45823facb155a7a8084cc22adc5bcab7f7e4d02cfa02c5010 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncle] Processing transaction number 192 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xB263cF16dd637944e6E0Ea40e42C7e2DAfE2B24C) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 2e5f1a47b7d8b5e45823facb155a7a8084cc22adc5bcab7f7e4d02cfa02c5010 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

