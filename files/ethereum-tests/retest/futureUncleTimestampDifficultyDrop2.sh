# PRV_KEY for master sender 0xd07FFe15b7Be01005A30B7f1117294B1568C17ec
PRV_KEY=6eb89379ac8b1adffe1561aea40bd92929fb0cdb67ee05dc45554efe833ce29e
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test futureUncleTimestampDifficultyDrop2 (src/BlockchainTestsFiller/InvalidBlocks/bcUncleSpecialTests/futureUncleTimestampDifficultyDrop2Filler.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[futureUncleTimestampDifficultyDrop2] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xd9bf84b779200C71603780CfC034CC477B0aeA6b) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xd9bf84b779200C71603780CfC034CC477B0aeA6b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[futureUncleTimestampDifficultyDrop2] Processing transaction number 19 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xd9bf84b779200C71603780CfC034CC477B0aeA6b) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 9aeb8fc1c94402e69527d7e7230067f45437fe0a64eb41b4ecd05ce365d183a3 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[futureUncleTimestampDifficultyDrop2] Processing transaction number 20 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xd9bf84b779200C71603780CfC034CC477B0aeA6b) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 9aeb8fc1c94402e69527d7e7230067f45437fe0a64eb41b4ecd05ce365d183a3 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[futureUncleTimestampDifficultyDrop2] Processing transaction number 21 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xd9bf84b779200C71603780CfC034CC477B0aeA6b) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 9aeb8fc1c94402e69527d7e7230067f45437fe0a64eb41b4ecd05ce365d183a3 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

