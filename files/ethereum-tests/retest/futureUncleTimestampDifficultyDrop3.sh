# PRV_KEY for master sender 0x1Eb21FFAE5974ced2Ff3b0AB60032F06c81b8941
PRV_KEY=984da85895f5e7efe2e78c2ef4f6d972a4386558f1ee562456217a1682b8d8cd
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test futureUncleTimestampDifficultyDrop3 (src/BlockchainTestsFiller/InvalidBlocks/bcUncleSpecialTests/futureUncleTimestampDifficultyDrop3Filler.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[futureUncleTimestampDifficultyDrop3] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xa0B4732Fabc1E1fB677272D8F06c2D3A52d301a1) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xa0B4732Fabc1E1fB677272D8F06c2D3A52d301a1 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[futureUncleTimestampDifficultyDrop3] Processing transaction number 16 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xa0B4732Fabc1E1fB677272D8F06c2D3A52d301a1) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 42a751811b3e9c4663adad13f49ab178196be2fef607f3b4ba3f6e0f889cb3dc --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[futureUncleTimestampDifficultyDrop3] Processing transaction number 17 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xa0B4732Fabc1E1fB677272D8F06c2D3A52d301a1) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 42a751811b3e9c4663adad13f49ab178196be2fef607f3b4ba3f6e0f889cb3dc --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[futureUncleTimestampDifficultyDrop3] Processing transaction number 18 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xa0B4732Fabc1E1fB677272D8F06c2D3A52d301a1) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 42a751811b3e9c4663adad13f49ab178196be2fef607f3b4ba3f6e0f889cb3dc --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

