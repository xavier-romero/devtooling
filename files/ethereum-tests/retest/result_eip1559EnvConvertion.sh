# PRV_KEY for master sender 0x6870dc13bf937171D8AdCc24f67b4264bd569D5B
PRV_KEY=bd02a420ddbdf250d4822119793279fa49bcbcffcc2a79c2f3913ab5f4609d58
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test result_eip1559EnvConvertion (src/BlockchainTestsFiller/InvalidBlocks/bcExpectSection/result_eip1559EnvConvertionFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[result_eip1559EnvConvertion] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8D273Ec21082F228c2A64D02d89c580d7aAbdE9C) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x8D273Ec21082F228c2A64D02d89c580d7aAbdE9C | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[result_eip1559EnvConvertion] Processing transaction number 121 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8D273Ec21082F228c2A64D02d89c580d7aAbdE9C) to None"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 5093d114041c2944f16ac89c871e5bb23a7e83afd6147187959af5a443188c24 --timeout 20 --value 0 --create 0x600c60015560068060126000396000f300fe600f60005500 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

