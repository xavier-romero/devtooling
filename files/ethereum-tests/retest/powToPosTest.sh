# PRV_KEY for master sender 0x074eD5981D695E42282368d0ad2172dB244601c6
PRV_KEY=a2d851a5e32272447a2c5eba19c3fe905e7daf18af7a678d0ba031ceaf99616d
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test powToPosTest (src/BlockchainTestsFiller/TransitionTests/bcArrowGlacierToParis/powToPosTestFiller.json)"

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[powToPosTest] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8f10977608038eE1Ca2fA25e4A668c5A426aF900) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x8f10977608038eE1Ca2fA25e4A668c5A426aF900 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[powToPosTest] Creating receiver 0x2adc25665018aa1fe0e6bc666dac8fc2697ff9ba with code and balance 0..."
ADDR_2ADC25665018AA1FE0E6BC666DAC8FC2697FF9BA=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 630000001b6012600039630000001b6000F3732adc25665018aa1fe0e6bc666dac8fc2697ff9ba316000355500 | jq -r .contractAddress)
echo $ADDR_2ADC25665018AA1FE0E6BC666DAC8FC2697FF9BA

echo "[powToPosTest] Processing transaction number 909 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8f10977608038eE1Ca2fA25e4A668c5A426aF900) to None"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 193f2e5d6f8d7bd0056f21311689f3a12a2c4e444d28f83aaaba41dcda85c19d --timeout 20 --value 0 --create 0x4460015560068060116000396000f300fe600f60005500 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[powToPosTest] Processing transaction number 910 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8f10977608038eE1Ca2fA25e4A668c5A426aF900) to None"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 193f2e5d6f8d7bd0056f21311689f3a12a2c4e444d28f83aaaba41dcda85c19d --timeout 20 --value 0 --create 0x4460015560068060116000396000f300fe600f60005500 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

