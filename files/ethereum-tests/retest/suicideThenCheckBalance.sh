# PRV_KEY for master sender 0xA6bF7cDf0489Cd06C35689FFE90197F79E144Aa3
PRV_KEY=e7b0b3d019e790bf50ba5ff09f648480b88d359e769719ed3e61fd5f621dbeb3
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test suicideThenCheckBalance (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/suicideThenCheckBalanceFiller.json)"

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[suicideThenCheckBalance] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x516Bb857985A4873582118Bf9E571a60Ec05fe8e) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x516Bb857985A4873582118Bf9E571a60Ec05fe8e | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[suicideThenCheckBalance] Creating receiver 0xa3476106159f87477ad639e3ddcbb6b240efe459 with code and balance 1000..."
ADDR_A3476106159F87477AD639E3DDCBB6B240EFE459=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000 --create 630000003e6012600039630000003e6000F36000600060006000600173e3476106159f87477ad639e3ddcbb6b240efe4596101f4f15073e3476106159f87477ad639e3ddcbb6b240efe4593160015500 | jq -r .contractAddress)
echo $ADDR_A3476106159F87477AD639E3DDCBB6B240EFE459

echo "[suicideThenCheckBalance] Creating receiver 0xe3476106159f87477ad639e3ddcbb6b240efe459 with code and balance 1000..."
ADDR_E3476106159F87477AD639E3DDCBB6B240EFE459=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000 --create 6300000009601260003963000000096000F360036001556001ff00 | jq -r .contractAddress)
echo $ADDR_E3476106159F87477AD639E3DDCBB6B240EFE459

echo "[suicideThenCheckBalance] Processing transaction number 771 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x516Bb857985A4873582118Bf9E571a60Ec05fe8e) to 0xe3476106159f87477ad639e3ddcbb6b240efe459"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 6bd724285341367c8277888ee2d44717acb63b976265ef6f0c5e4ff231f4e7c6 --timeout 20 --value 0 $ADDR_E3476106159F87477AD639E3DDCBB6B240EFE459 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[suicideThenCheckBalance] Processing transaction number 772 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x516Bb857985A4873582118Bf9E571a60Ec05fe8e) to 0xa3476106159f87477ad639e3ddcbb6b240efe459"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 6bd724285341367c8277888ee2d44717acb63b976265ef6f0c5e4ff231f4e7c6 --timeout 20 --value 0 $ADDR_A3476106159F87477AD639E3DDCBB6B240EFE459 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

