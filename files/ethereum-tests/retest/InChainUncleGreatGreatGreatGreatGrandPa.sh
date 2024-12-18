# PRV_KEY for master sender 0x16887Cb50db266fE0981Dda8A88dd3444233C4d4
PRV_KEY=df8b29ffdb4918a604985a60dcd3c0a43ecf7927d338d81096e1198d48661497
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test InChainUncleGreatGreatGreatGreatGrandPa (src/BlockchainTestsFiller/InvalidBlocks/bcUncleTest/InChainUncleGreatGreatGreatGreatGrandPaFiller.json)"

AMOUNT=$((2*150000*7*$GAS_PRICE+70))
echo "[InChainUncleGreatGreatGreatGreatGrandPa] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x9F3448D1e530E18d98138Fafa9b0B94b449b8441) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x9F3448D1e530E18d98138Fafa9b0B94b449b8441 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleGreatGreatGreatGreatGrandPa] Processing transaction number 197 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x9F3448D1e530E18d98138Fafa9b0B94b449b8441) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 1f73f191c1c7b6ad5e9d139b7ea6234314429a11b8517a831a3645d8b880c675 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleGreatGreatGreatGreatGrandPa] Processing transaction number 198 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x9F3448D1e530E18d98138Fafa9b0B94b449b8441) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 1f73f191c1c7b6ad5e9d139b7ea6234314429a11b8517a831a3645d8b880c675 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleGreatGreatGreatGreatGrandPa] Processing transaction number 199 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x9F3448D1e530E18d98138Fafa9b0B94b449b8441) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 1f73f191c1c7b6ad5e9d139b7ea6234314429a11b8517a831a3645d8b880c675 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleGreatGreatGreatGreatGrandPa] Processing transaction number 200 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x9F3448D1e530E18d98138Fafa9b0B94b449b8441) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 1f73f191c1c7b6ad5e9d139b7ea6234314429a11b8517a831a3645d8b880c675 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleGreatGreatGreatGreatGrandPa] Processing transaction number 201 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x9F3448D1e530E18d98138Fafa9b0B94b449b8441) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 1f73f191c1c7b6ad5e9d139b7ea6234314429a11b8517a831a3645d8b880c675 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleGreatGreatGreatGreatGrandPa] Processing transaction number 202 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x9F3448D1e530E18d98138Fafa9b0B94b449b8441) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 1f73f191c1c7b6ad5e9d139b7ea6234314429a11b8517a831a3645d8b880c675 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleGreatGreatGreatGreatGrandPa] Processing transaction number 203 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x9F3448D1e530E18d98138Fafa9b0B94b449b8441) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 1f73f191c1c7b6ad5e9d139b7ea6234314429a11b8517a831a3645d8b880c675 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

