# PRV_KEY for master sender 0x4a9dDbbA44dfa4D4e168cAc21e01305Fe920C5Ff
PRV_KEY=7355e70bdbe240dfcfbf429ab7740e836acc9aee929537d7daa5811e2d449f14
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test NotEnoughCashContractCreation (src/BlockchainTestsFiller/InvalidBlocks/bcStateTests/NotEnoughCashContractCreationFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+100))
echo "[NotEnoughCashContractCreation] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x77AF5009a2C59b5F684bcEA8076f7c0d8408B48b) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x77AF5009a2C59b5F684bcEA8076f7c0d8408B48b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[NotEnoughCashContractCreation] Processing transaction number 150 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x77AF5009a2C59b5F684bcEA8076f7c0d8408B48b) to None"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d529446434c8d7d337ddb58c5c5f5dd869c8a90f29e265bc95db3d07539887f9 --timeout 20 --value 100 --create 0x600a80600c6000396000f200600160008035811a8100 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

