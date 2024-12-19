# PRV_KEY for master sender 0xE3314d5F4396113953Fc22E4F86B285CED6157D3
PRV_KEY=147fd8ee7b4a00ea425fd4b19b57ca28a2c49d0c86895e420227198cfff0b3d7
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test SimpleTx (src/BlockchainTestsFiller/ValidBlocks/bcValidBlockTest/SimpleTxFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+10))
echo "[SimpleTx] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0d1422Fc991A44D66768C004e355C8A466e250d1) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x0d1422Fc991A44D66768C004e355C8A466e250d1 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[SimpleTx] Processing transaction number 712 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0d1422Fc991A44D66768C004e355C8A466e250d1) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 69b00243ba9072979c9b7247243e81e24d9775a3424b23e8f7f5fffb50f2f2b3 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

