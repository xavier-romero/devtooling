# PRV_KEY for master sender 0xFCC860B0D5706fa4f1132E5c86B2fD4E37C25abc
PRV_KEY=371411ad9b285a81bfcf19d707371317ff386b4c4a53f0c8c7fe2289bfec8522
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test InChainUncleFather (src/BlockchainTestsFiller/InvalidBlocks/bcUncleTest/InChainUncleFatherFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[InChainUncleFather] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x87b52ee820d53cc58468aE35891a84d87367eB6B) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x87b52ee820d53cc58468aE35891a84d87367eB6B | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleFather] Processing transaction number 246 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x87b52ee820d53cc58468aE35891a84d87367eB6B) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 5c0647f3b6728d40aab6d25f5aa87f8a65da962ce73fa28283060724e17bac39 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleFather] Processing transaction number 247 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x87b52ee820d53cc58468aE35891a84d87367eB6B) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 5c0647f3b6728d40aab6d25f5aa87f8a65da962ce73fa28283060724e17bac39 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleFather] Processing transaction number 248 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x87b52ee820d53cc58468aE35891a84d87367eB6B) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 5c0647f3b6728d40aab6d25f5aa87f8a65da962ce73fa28283060724e17bac39 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

