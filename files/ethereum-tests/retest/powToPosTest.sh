# PRV_KEY for master sender 0xBa513a156F9014db761983BFCd06DBF1CBecF866
PRV_KEY=51cb34449fa0c4a3d6d9bbaced9038e6c2ae63a338c39020617c39b6d59b6713
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test powToPosTest (src/BlockchainTestsFiller/TransitionTests/bcArrowGlacierToParis/powToPosTestFiller.json)"

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[powToPosTest] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x11Db1472Cd7c9b24B3f9e29dcb628b338336256D) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x11Db1472Cd7c9b24B3f9e29dcb628b338336256D | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[powToPosTest] Creating receiver 0x2adc25665018aa1fe0e6bc666dac8fc2697ff9ba with code and balance 0..."
ADDR_2ADC25665018AA1FE0E6BC666DAC8FC2697FF9BA=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 630000001b6012600039630000001b6000F3732adc25665018aa1fe0e6bc666dac8fc2697ff9ba316000355500 | jq -r .contractAddress)
echo $ADDR_2ADC25665018AA1FE0E6BC666DAC8FC2697FF9BA

echo "[powToPosTest] Processing transaction number 909 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x11Db1472Cd7c9b24B3f9e29dcb628b338336256D) to None"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d837f6fdcf5f8a2a1cd2e6a0c5717b1612d9fd5cac7920a98a980238841b5f86 --timeout 20 --value 0 --create 0x4460015560068060116000396000f300fe600f60005500 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[powToPosTest] Processing transaction number 910 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x11Db1472Cd7c9b24B3f9e29dcb628b338336256D) to None"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d837f6fdcf5f8a2a1cd2e6a0c5717b1612d9fd5cac7920a98a980238841b5f86 --timeout 20 --value 0 --create 0x4460015560068060116000396000f300fe600f60005500 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

