# PRV_KEY for master sender 0xfD7798a897bb9d5F5981702e50286a1138bfBdfc
PRV_KEY=4f694b07c033e9223cf1b98924752db8b4d0979ee392b40a613b68924c8bc87b
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test twoUncle (src/BlockchainTestsFiller/InvalidBlocks/bcUncleTest/twoUncleFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[twoUncle] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x83D1342dF4e7044c361632702f315299dE6a27d6) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x83D1342dF4e7044c361632702f315299dE6a27d6 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[twoUncle] Processing transaction number 249 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x83D1342dF4e7044c361632702f315299dE6a27d6) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key dcaddffa69cefcf681454f30d3f142a24a512791333119d4bccf1144fc5407a1 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[twoUncle] Processing transaction number 250 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x83D1342dF4e7044c361632702f315299dE6a27d6) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key dcaddffa69cefcf681454f30d3f142a24a512791333119d4bccf1144fc5407a1 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[twoUncle] Processing transaction number 251 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x83D1342dF4e7044c361632702f315299dE6a27d6) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key dcaddffa69cefcf681454f30d3f142a24a512791333119d4bccf1144fc5407a1 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

