# PRV_KEY for master sender 0x50aAB7398EDad7D7F45a49dFb9306Ff7795DC2FB
PRV_KEY=eb9ce95ab9bfd2b505aa4deb20b6479ecf73bb3d0e55ffdcab7ef58fe89445d2
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test createNameRegistratorPerTxsNotEnoughGasAfter (src/BlockchainTestsFiller/InvalidBlocks/bcStateTests/createNameRegistratorPerTxsNotEnoughGasAfterFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+100000))
echo "[createNameRegistratorPerTxsNotEnoughGasAfter] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xd4eC586a1192a4dc23C6921C86ffd2B1Ac127876) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xd4eC586a1192a4dc23C6921C86ffd2B1Ac127876 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[createNameRegistratorPerTxsNotEnoughGasAfter] Processing transaction number 135 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xd4eC586a1192a4dc23C6921C86ffd2B1Ac127876) to None"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key cea3b32919a4f1cc6c20cb71bed4bc6d0bf8be27a369e00243878730ccaf235c --timeout 20 --value 100000 --create 0x6001600155601080600c6000396000f3006000355415600957005b60203560003555 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

