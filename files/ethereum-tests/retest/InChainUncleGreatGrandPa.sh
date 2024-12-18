# PRV_KEY for master sender 0xbd7BE52A4EcC5264AB979973a6A406CA2B700C27
PRV_KEY=9bf2e9a8b4b7ad6e19e40405015a368fe0a02060b04f65165ad4dff5744e03eb
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test InChainUncleGreatGrandPa (src/BlockchainTestsFiller/InvalidBlocks/bcUncleTest/InChainUncleGreatGrandPaFiller.json)"

AMOUNT=$((2*150000*4*$GAS_PRICE+40))
echo "[InChainUncleGreatGrandPa] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xED2E7B24ace4BB20D5cea944de98C96B39a23366) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xED2E7B24ace4BB20D5cea944de98C96B39a23366 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleGreatGrandPa] Processing transaction number 193 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xED2E7B24ace4BB20D5cea944de98C96B39a23366) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 7e5d023311675736609c24c76323809486398bc63f2c158d6a4ddf6182ebe954 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleGreatGrandPa] Processing transaction number 194 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xED2E7B24ace4BB20D5cea944de98C96B39a23366) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 7e5d023311675736609c24c76323809486398bc63f2c158d6a4ddf6182ebe954 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleGreatGrandPa] Processing transaction number 195 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xED2E7B24ace4BB20D5cea944de98C96B39a23366) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 7e5d023311675736609c24c76323809486398bc63f2c158d6a4ddf6182ebe954 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleGreatGrandPa] Processing transaction number 196 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xED2E7B24ace4BB20D5cea944de98C96B39a23366) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 7e5d023311675736609c24c76323809486398bc63f2c158d6a4ddf6182ebe954 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

