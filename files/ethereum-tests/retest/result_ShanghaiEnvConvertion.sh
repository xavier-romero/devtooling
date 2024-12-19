# PRV_KEY for master sender 0x1A05f63eF96Ce99Aa39D17cF65e02bb8Be4947d8
PRV_KEY=942141fb3cc597f99b73b66b4e426e9a605c762c237e2ee2be1c9ce2e64935c4
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test result_ShanghaiEnvConvertion (src/BlockchainTestsFiller/InvalidBlocks/bcExpectSection/result_ShanghaiEnvConvertionFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[result_ShanghaiEnvConvertion] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x6e2Da2304ED5490265ddeBDae64029BbaDB21EC8) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x6e2Da2304ED5490265ddeBDae64029BbaDB21EC8 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[result_ShanghaiEnvConvertion] Processing transaction number 120 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x6e2Da2304ED5490265ddeBDae64029BbaDB21EC8) to None"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 727a2abcb11829ed8a01d086a608a3a9323387bb364956ff2cbde7cab875889f --timeout 20 --value 0 --create 0x600c60015560068060126000396000f300fe600f60005500 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

