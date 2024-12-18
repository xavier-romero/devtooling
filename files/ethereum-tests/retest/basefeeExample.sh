# PRV_KEY for master sender 0x5A962ce060bC47Cae19eA46b65cED5C95D4688A2
PRV_KEY=653f49008e87d91fb0dfbad73a7714c2f76523a470416454ed340377013cad7e
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test basefeeExample (src/BlockchainTestsFiller/ValidBlocks/bcExample/basefeeExampleFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[basefeeExample] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xCa42A7669e3255b087abD148fc32A19e94b3E3DF) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xCa42A7669e3255b087abD148fc32A19e94b3E3DF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[basefeeExample] Processing transaction number 785 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xCa42A7669e3255b087abD148fc32A19e94b3E3DF) to None"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ebf6ffb0dae194741f8fa4c6df75f9f125293ee5891bb389250aa25ca967085a --timeout 20 --value 0 --create 0x600c60015560068060126000396000f300fe600f60005500 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

