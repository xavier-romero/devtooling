# PRV_KEY for master sender 0xd44fD5583E864DFc92cC8b8316270edc23288d69
PRV_KEY=8552a7648a1649c2b6a8676c3e593dddf8ad54b5d0c82b5e987e530ebf4b3547
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test basefeeExample (src/BlockchainTestsFiller/ValidBlocks/bcExample/basefeeExampleFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[basefeeExample] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xEE7bDaD2aD1AD8398cC899Ea7dd3f8093f91e2A3) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xEE7bDaD2aD1AD8398cC899Ea7dd3f8093f91e2A3 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[basefeeExample] Processing transaction number 785 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xEE7bDaD2aD1AD8398cC899Ea7dd3f8093f91e2A3) to None"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key f6705850f636a463581206394ad0f7f3324e4f71957947e9d876c97f11696d0b --timeout 20 --value 0 --create 0x600c60015560068060126000396000f300fe600f60005500 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

