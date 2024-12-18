# PRV_KEY for master sender 0x383F304B3400c1CA2dBBa0012aBE602d86c7bf81
PRV_KEY=c5d97857fa3aab9d3cceb3a158a9486169a9054f7288cb37df95a8c7da002765
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test incorrectUncleNumber1 (src/BlockchainTestsFiller/InvalidBlocks/bcUncleHeaderValidity/incorrectUncleNumber1Filler.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[incorrectUncleNumber1] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x4e226Bf1Dbed6D67438422c821C34222a11d1D22) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x4e226Bf1Dbed6D67438422c821C34222a11d1D22 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[incorrectUncleNumber1] Processing transaction number 79 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x4e226Bf1Dbed6D67438422c821C34222a11d1D22) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 8566bbfc9f1a2f8ab2621c339128d67d744fa6874b16ae3c8e87b8217d367586 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[incorrectUncleNumber1] Processing transaction number 80 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x4e226Bf1Dbed6D67438422c821C34222a11d1D22) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 8566bbfc9f1a2f8ab2621c339128d67d744fa6874b16ae3c8e87b8217d367586 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[incorrectUncleNumber1] Processing transaction number 81 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x4e226Bf1Dbed6D67438422c821C34222a11d1D22) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 8566bbfc9f1a2f8ab2621c339128d67d744fa6874b16ae3c8e87b8217d367586 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

