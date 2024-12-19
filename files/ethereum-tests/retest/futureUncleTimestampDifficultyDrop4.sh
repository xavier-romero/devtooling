# PRV_KEY for master sender 0xC8808dC2EA35AC1586DE84740186Ca8261A797A3
PRV_KEY=c1d8cf3df6ea3f887d5e5bcefdf1a12db856909d6fdf0c39f42c3cac4efd6351
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test futureUncleTimestampDifficultyDrop4 (src/BlockchainTestsFiller/InvalidBlocks/bcUncleSpecialTests/futureUncleTimestampDifficultyDrop4Filler.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[futureUncleTimestampDifficultyDrop4] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x56b9AfBa4F3f4d25044f4F358d397A56b518B931) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x56b9AfBa4F3f4d25044f4F358d397A56b518B931 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[futureUncleTimestampDifficultyDrop4] Processing transaction number 7 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x56b9AfBa4F3f4d25044f4F358d397A56b518B931) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 527a9d248a688297e76f692a8231489b83a17b58d9f3e06cc44a62b9eb864dad --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[futureUncleTimestampDifficultyDrop4] Processing transaction number 8 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x56b9AfBa4F3f4d25044f4F358d397A56b518B931) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 527a9d248a688297e76f692a8231489b83a17b58d9f3e06cc44a62b9eb864dad --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[futureUncleTimestampDifficultyDrop4] Processing transaction number 9 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x56b9AfBa4F3f4d25044f4F358d397A56b518B931) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 527a9d248a688297e76f692a8231489b83a17b58d9f3e06cc44a62b9eb864dad --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

