# PRV_KEY for master sender 0xB2764fBE3766D5E456a15a4AdA64866d1013858C
PRV_KEY=376025c4567303239521ee1278d1d4572b3c63d764fd1b3e240acc89ef4a5418
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test futureUncleTimestampDifficultyDrop (src/BlockchainTestsFiller/InvalidBlocks/bcUncleSpecialTests/futureUncleTimestampDifficultyDropFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[futureUncleTimestampDifficultyDrop] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x896f5D4C538aa563e9FFBB6a51c8bDEbA8D222dc) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x896f5D4C538aa563e9FFBB6a51c8bDEbA8D222dc | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[futureUncleTimestampDifficultyDrop] Processing transaction number 4 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x896f5D4C538aa563e9FFBB6a51c8bDEbA8D222dc) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key b14c90c98a065002c544da8b1700b062e626507db2622ab9b0110925f8eec5d1 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[futureUncleTimestampDifficultyDrop] Processing transaction number 5 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x896f5D4C538aa563e9FFBB6a51c8bDEbA8D222dc) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key b14c90c98a065002c544da8b1700b062e626507db2622ab9b0110925f8eec5d1 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[futureUncleTimestampDifficultyDrop] Processing transaction number 6 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x896f5D4C538aa563e9FFBB6a51c8bDEbA8D222dc) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key b14c90c98a065002c544da8b1700b062e626507db2622ab9b0110925f8eec5d1 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

