# PRV_KEY for master sender 0xdE0a6d4B12667dB998Dd6A08D9B2C8FE1661da64
PRV_KEY=637e67597e9dcafd474d2cf9b6bf4cce4c54dfc5cd4dd24b32b0b710d3109888
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test result_legacyEnvConvertion (src/BlockchainTestsFiller/InvalidBlocks/bcExpectSection/result_legacyEnvConvertionFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[result_legacyEnvConvertion] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8f6e790b0eF2896f2854E8E4D4244Ba2Be7bdCF6) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x8f6e790b0eF2896f2854E8E4D4244Ba2Be7bdCF6 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[result_legacyEnvConvertion] Processing transaction number 112 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8f6e790b0eF2896f2854E8E4D4244Ba2Be7bdCF6) to None"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 51a7285b400d7806f0dae237cd82d49cea4cbe31daae5fdcbedfc6209e21c499 --timeout 20 --value 0 --create 0x600c60015560068060126000396000f300fe600f60005500 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

