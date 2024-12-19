# PRV_KEY for master sender 0x56C92B8522564DBA89a2477d9c334615b69C74Ea
PRV_KEY=0e7912e8603a568dbc3e0f56f30f7aa546ea52076e7aa9a40ff1d1d98a5dceaa
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test incorrectUncleNumber1 (src/BlockchainTestsFiller/InvalidBlocks/bcUncleHeaderValidity/incorrectUncleNumber1Filler.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[incorrectUncleNumber1] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x7850Ec8A87f50893e589a814790b12B685d28439) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x7850Ec8A87f50893e589a814790b12B685d28439 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[incorrectUncleNumber1] Processing transaction number 79 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x7850Ec8A87f50893e589a814790b12B685d28439) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d22bd6de4472de9697dd6fc9173709097712511912cce3440ab49e00e0915a6c --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[incorrectUncleNumber1] Processing transaction number 80 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x7850Ec8A87f50893e589a814790b12B685d28439) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d22bd6de4472de9697dd6fc9173709097712511912cce3440ab49e00e0915a6c --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[incorrectUncleNumber1] Processing transaction number 81 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x7850Ec8A87f50893e589a814790b12B685d28439) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d22bd6de4472de9697dd6fc9173709097712511912cce3440ab49e00e0915a6c --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

