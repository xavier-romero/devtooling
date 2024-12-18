# PRV_KEY for master sender 0x686D0686757510F14B5682539F6eDBa3d28c80cE
PRV_KEY=2dffd3aa88c185d3dddbebc6f56120e7e6967e0eb3fd1a723acc8c6a5ee23565
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test incorrectUncleTimestamp2 (src/BlockchainTestsFiller/InvalidBlocks/bcUncleHeaderValidity/incorrectUncleTimestamp2Filler.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[incorrectUncleTimestamp2] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x3A9631F1240A6967Dd8797a0892aB7C570806F25) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x3A9631F1240A6967Dd8797a0892aB7C570806F25 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[incorrectUncleTimestamp2] Processing transaction number 91 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x3A9631F1240A6967Dd8797a0892aB7C570806F25) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 2142ce92f0127ccc6003c3f5a6f7da00c389ebdbdbe91b3f996d32fdedd223f5 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[incorrectUncleTimestamp2] Processing transaction number 92 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x3A9631F1240A6967Dd8797a0892aB7C570806F25) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 2142ce92f0127ccc6003c3f5a6f7da00c389ebdbdbe91b3f996d32fdedd223f5 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[incorrectUncleTimestamp2] Processing transaction number 93 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x3A9631F1240A6967Dd8797a0892aB7C570806F25) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 2142ce92f0127ccc6003c3f5a6f7da00c389ebdbdbe91b3f996d32fdedd223f5 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

