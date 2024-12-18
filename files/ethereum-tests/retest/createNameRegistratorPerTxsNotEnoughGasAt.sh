# PRV_KEY for master sender 0xDc963C3aACA831A93a629015e84242707C221427
PRV_KEY=e1d7ef9ec8e5a60bc6a6ac162ea4fa9da4084d9b0b3a86d529ed00a1a2abc04f
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test createNameRegistratorPerTxsNotEnoughGasAt (src/BlockchainTestsFiller/InvalidBlocks/bcStateTests/createNameRegistratorPerTxsNotEnoughGasAtFiller.json)"

AMOUNT=$((2*150000*2*$GAS_PRICE+200000))
echo "[createNameRegistratorPerTxsNotEnoughGasAt] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xA48510884E826643719f933074096bfc91681771) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xA48510884E826643719f933074096bfc91681771 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[createNameRegistratorPerTxsNotEnoughGasAt] Processing transaction number 144 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xA48510884E826643719f933074096bfc91681771) to None"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 5c214afc792e591884da1c6fc46687a9e41bb1f44c798cb253478cad11ed60ff --timeout 20 --value 100000 --create 0x6001600155601080600c6000396000f3006000355415600957005b60203560003555 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[createNameRegistratorPerTxsNotEnoughGasAt] Processing transaction number 145 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xA48510884E826643719f933074096bfc91681771) to None"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 5c214afc792e591884da1c6fc46687a9e41bb1f44c798cb253478cad11ed60ff --timeout 20 --value 100000 --create 0x622fffff60002000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

