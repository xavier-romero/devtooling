# PRV_KEY for master sender 0x3d03cA41B7456663b49799b8b1893F50E3866a39
PRV_KEY=13e2e45cf079b7fb650fe6d082cc23396aefa299d7bccb6e96a0fe23f24b8af7
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test futureUncleTimestamp3 (src/BlockchainTestsFiller/InvalidBlocks/bcUncleSpecialTests/futureUncleTimestamp3Filler.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[futureUncleTimestamp3] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xaf76c9e04770d549215aB1932C4cfc369653dEe6) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xaf76c9e04770d549215aB1932C4cfc369653dEe6 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[futureUncleTimestamp3] Processing transaction number 13 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xaf76c9e04770d549215aB1932C4cfc369653dEe6) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 1da573474d32a74bae297eb3e5e108081f618ba50ae177f780dbc2a1123c8731 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[futureUncleTimestamp3] Processing transaction number 14 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xaf76c9e04770d549215aB1932C4cfc369653dEe6) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 1da573474d32a74bae297eb3e5e108081f618ba50ae177f780dbc2a1123c8731 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[futureUncleTimestamp3] Processing transaction number 15 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xaf76c9e04770d549215aB1932C4cfc369653dEe6) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 1da573474d32a74bae297eb3e5e108081f618ba50ae177f780dbc2a1123c8731 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

