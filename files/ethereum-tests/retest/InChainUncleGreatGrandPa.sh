# PRV_KEY for master sender 0x9688aCD25Ff6E62743Bd22c76e9AC7F87E4Aeb8B
PRV_KEY=5913b1809fc86bb2c68e07929623b20b3495fe829b429da9c235c492e146248b
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test InChainUncleGreatGrandPa (src/BlockchainTestsFiller/InvalidBlocks/bcUncleTest/InChainUncleGreatGrandPaFiller.json)"

AMOUNT=$((2*150000*4*$GAS_PRICE+40))
echo "[InChainUncleGreatGrandPa] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD24d7Ccc9504f917DDCE907b7Aa612DE23814E82) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xD24d7Ccc9504f917DDCE907b7Aa612DE23814E82 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleGreatGrandPa] Processing transaction number 193 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD24d7Ccc9504f917DDCE907b7Aa612DE23814E82) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d85515a095626e2462eb52775fdcf6079bd58bdb582e381600ff9c30eab867c7 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleGreatGrandPa] Processing transaction number 194 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD24d7Ccc9504f917DDCE907b7Aa612DE23814E82) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d85515a095626e2462eb52775fdcf6079bd58bdb582e381600ff9c30eab867c7 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleGreatGrandPa] Processing transaction number 195 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD24d7Ccc9504f917DDCE907b7Aa612DE23814E82) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d85515a095626e2462eb52775fdcf6079bd58bdb582e381600ff9c30eab867c7 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleGreatGrandPa] Processing transaction number 196 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD24d7Ccc9504f917DDCE907b7Aa612DE23814E82) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d85515a095626e2462eb52775fdcf6079bd58bdb582e381600ff9c30eab867c7 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

