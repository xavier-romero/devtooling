# PRV_KEY for master sender 0xB618D84239755ffA30a4E50087C6688752E79624
PRV_KEY=991b664e016f2b40b25a5f846eb647486fcfbc5b03d951199df29f518169478b
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test createNameRegistratorPerTxsNotEnoughGasBefore (src/BlockchainTestsFiller/InvalidBlocks/bcStateTests/createNameRegistratorPerTxsNotEnoughGasBeforeFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+100000))
echo "[createNameRegistratorPerTxsNotEnoughGasBefore] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x121A5e93BA49c1C66e7C74eE4Cc653F99aD73501) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x121A5e93BA49c1C66e7C74eE4Cc653F99aD73501 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[createNameRegistratorPerTxsNotEnoughGasBefore] Processing transaction number 127 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x121A5e93BA49c1C66e7C74eE4Cc653F99aD73501) to None"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key a91d20cc6917c23eb9429dc5bc5a991913c49becf4c4433363d4a24419599dd4 --timeout 20 --value 100000 --create 0x6001600155601080600c6000396000f3006000355415600957005b60203560003555 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

