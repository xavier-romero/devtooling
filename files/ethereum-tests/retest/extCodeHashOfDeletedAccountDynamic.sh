# PRV_KEY for master sender 0xD86B9bbDe01868b408934a3584CC9CFDdAAB1A59
PRV_KEY=2dbee49756fbc854c11a2c9175279edd6aae021f20767cf769fa0f99c5d56871
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test extCodeHashOfDeletedAccountDynamic (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/extCodeHashOfDeletedAccountDynamicFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+0))
echo "[extCodeHashOfDeletedAccountDynamic] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xaf98b5809869561B079cD7Ba8762B86cC095163a) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xaf98b5809869561B079cD7Ba8762B86cC095163a | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[extCodeHashOfDeletedAccountDynamic] Creating receiver 0x1000000000000000000000000000000000000000 with code and balance 1000..."
ADDR_1000000000000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000 --create 6300000044601260003963000000446000F36010601180603360803960806001f56005556005543f6000556005543b6001556020600060006005543c6000516002550000fe600480600d6000396000f300fe6001ff00 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000000

echo "[extCodeHashOfDeletedAccountDynamic] Creating receiver 0x1100000000000000000000000000000000000000 with code and balance 1000..."
ADDR_1100000000000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000 --create 6300000025601260003963000000256000F360006000600060006000734f98c6f3e2a2f459371291dedb508ef50f153994620186a0f100 | jq -r .contractAddress)
echo $ADDR_1100000000000000000000000000000000000000

echo "[extCodeHashOfDeletedAccountDynamic] Creating receiver 0x1200000000000000000000000000000000000000 with code and balance 1000..."
ADDR_1200000000000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000 --create 6300000038601260003963000000386000F3734f98c6f3e2a2f459371291dedb508ef50f1539946005556005543f6000556005543b6001556020600060006005543c6000516002550000 | jq -r .contractAddress)
echo $ADDR_1200000000000000000000000000000000000000

echo "[extCodeHashOfDeletedAccountDynamic] Processing transaction number 754 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xaf98b5809869561B079cD7Ba8762B86cC095163a) to 0x1000000000000000000000000000000000000000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key f01415c8c94e8c78dd17411800b0d32cc96bf78e62725377095af27a64a5252a --timeout 20 --value 0 $ADDR_1000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[extCodeHashOfDeletedAccountDynamic] Processing transaction number 755 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xaf98b5809869561B079cD7Ba8762B86cC095163a) to 0x1100000000000000000000000000000000000000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key f01415c8c94e8c78dd17411800b0d32cc96bf78e62725377095af27a64a5252a --timeout 20 --value 0 $ADDR_1100000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[extCodeHashOfDeletedAccountDynamic] Processing transaction number 756 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xaf98b5809869561B079cD7Ba8762B86cC095163a) to 0x1200000000000000000000000000000000000000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key f01415c8c94e8c78dd17411800b0d32cc96bf78e62725377095af27a64a5252a --timeout 20 --value 0 $ADDR_1200000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

