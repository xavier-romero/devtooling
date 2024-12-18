# PRV_KEY for master sender 0x612Dc0ca5487B2C6Eb03556cc107168DD029Fea2
PRV_KEY=63448ea7fc50177ea64ecebd6315b229f2ceea3c0a98927c2ace22238660590e
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test filling_wrongStorage2 (src/BlockchainTestsFiller/InvalidBlocks/bcExpectSection/filling_wrongStorage2Filler.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+10))
echo "[filling_wrongStorage2] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x49bB7F707b9376418F0025Dc82E128E597f3c2c7) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x49bB7F707b9376418F0025Dc82E128E597f3c2c7 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[filling_wrongStorage2] Creating receiver 0xa94f5374fce5edbc8e2a8697c15331677e6ebf0b with code and balance 10000000000000..."
ADDR_A94F5374FCE5EDBC8E2A8697C15331677E6EBF0B=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 10000000000000 --create 6022600255 | jq -r .contractAddress)
echo $ADDR_A94F5374FCE5EDBC8E2A8697C15331677E6EBF0B

echo "[filling_wrongStorage2] Processing transaction number 117 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x49bB7F707b9376418F0025Dc82E128E597f3c2c7) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key b811ab82abfd2f4d3154b9d46a814457c2d353150d9711611a1b276d59afdbac --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

