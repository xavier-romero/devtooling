# PRV_KEY for master sender 0xC1df0847C94E59D6e24b448E33b527dBFc235646
PRV_KEY=66bdb04c418c6d29a1d4a63ca8584315605e972afcea654b6c69a673b0fbd530
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test log1_wrongBloom (src/BlockchainTestsFiller/InvalidBlocks/bcInvalidHeaderTest/log1_wrongBloomFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+5000))
echo "[log1_wrongBloom] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xbf9700232079415DfE18382692250BB860D87255) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xbf9700232079415DfE18382692250BB860D87255 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[log1_wrongBloom] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 100..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100 --create 630000002c6012600039630000002c6000F37fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff600052600060206000a100 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[log1_wrongBloom] Processing transaction number 271 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xbf9700232079415DfE18382692250BB860D87255) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 6540bb07ed613de83abd77a5f3c01576b86a3fbcee58e0eca23218e2be5d3158 --timeout 20 --value 5000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

