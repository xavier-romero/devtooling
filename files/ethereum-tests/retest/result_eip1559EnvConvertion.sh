# PRV_KEY for master sender 0xc5c9C4D1cA383d030e96691481b686e86422e31a
PRV_KEY=a0cc1fef7bdafe072dc210bfb7a40ad84ed9250416aeb5cae61e9945605a80d1
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test result_eip1559EnvConvertion (src/BlockchainTestsFiller/InvalidBlocks/bcExpectSection/result_eip1559EnvConvertionFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[result_eip1559EnvConvertion] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x6f26dDf495BB7A3a3710673217C674f49Ee8aeD6) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x6f26dDf495BB7A3a3710673217C674f49Ee8aeD6 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[result_eip1559EnvConvertion] Processing transaction number 121 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x6f26dDf495BB7A3a3710673217C674f49Ee8aeD6) to None"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key a9dc642751e244fe96357d5524138edc97be8efd7de53d9a1f395d2a94ce2472 --timeout 20 --value 0 --create 0x600c60015560068060126000396000f300fe600f60005500 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

