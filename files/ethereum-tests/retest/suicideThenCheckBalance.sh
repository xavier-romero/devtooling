# PRV_KEY for master sender 0xcB1806E2aceeda6f486771093eC60bf829AC634E
PRV_KEY=bfc840c3a3045693c53049b44522fdee9b961583910871d6208d975e36901472
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test suicideThenCheckBalance (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/suicideThenCheckBalanceFiller.json)"

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[suicideThenCheckBalance] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xea88BbAEaDEB92112abB4120E2dEFcb8F60123C5) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xea88BbAEaDEB92112abB4120E2dEFcb8F60123C5 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[suicideThenCheckBalance] Creating receiver 0xa3476106159f87477ad639e3ddcbb6b240efe459 with code and balance 1000..."
ADDR_A3476106159F87477AD639E3DDCBB6B240EFE459=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000 --create 630000003e6012600039630000003e6000F36000600060006000600173e3476106159f87477ad639e3ddcbb6b240efe4596101f4f15073e3476106159f87477ad639e3ddcbb6b240efe4593160015500 | jq -r .contractAddress)
echo $ADDR_A3476106159F87477AD639E3DDCBB6B240EFE459

echo "[suicideThenCheckBalance] Creating receiver 0xe3476106159f87477ad639e3ddcbb6b240efe459 with code and balance 1000..."
ADDR_E3476106159F87477AD639E3DDCBB6B240EFE459=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000 --create 6300000009601260003963000000096000F360036001556001ff00 | jq -r .contractAddress)
echo $ADDR_E3476106159F87477AD639E3DDCBB6B240EFE459

echo "[suicideThenCheckBalance] Processing transaction number 771 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xea88BbAEaDEB92112abB4120E2dEFcb8F60123C5) to 0xe3476106159f87477ad639e3ddcbb6b240efe459"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key d4917b6708edbbcc16919afd7674adedd7a2ec972436098acc06af4d2fb08741 --timeout 20 --value 0 $ADDR_E3476106159F87477AD639E3DDCBB6B240EFE459 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[suicideThenCheckBalance] Processing transaction number 772 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xea88BbAEaDEB92112abB4120E2dEFcb8F60123C5) to 0xa3476106159f87477ad639e3ddcbb6b240efe459"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key d4917b6708edbbcc16919afd7674adedd7a2ec972436098acc06af4d2fb08741 --timeout 20 --value 0 $ADDR_A3476106159F87477AD639E3DDCBB6B240EFE459 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

