# PRV_KEY for master sender 0x86A1cD5cbCDf11d988eaf33A02714d1fcF481402
PRV_KEY=ba6c9d54003463bc185dd2670bdc6d54e932aaa1de57fbac95806c050ef23f3a
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test ByzantiumTransition (src/BlockchainTestsFiller/TransitionTests/bcEIP158ToByzantium/ByzantiumTransitionFiller.json)"

AMOUNT=$((2*150000*2*$GAS_PRICE+2))
echo "[ByzantiumTransition] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xe92706d990b735fa0115F625AE20aEa6Bf6EC05A) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xe92706d990b735fa0115F625AE20aEa6Bf6EC05A | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[ByzantiumTransition] Creating receiver 0x1000000000000000000000000000000000000001 with code and balance 0..."
ADDR_1000000000000000000000000000000000000001=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6300000043601260003963000000436000F3600040600055600140600155600240600255600340600355600440600455600540600555600640600655600740600755600840600855600940600955600a40600a5500 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000001

echo "[ByzantiumTransition] Creating receiver 0x1000000000000000000000000000000000000002 with code and balance 0..."
ADDR_1000000000000000000000000000000000000002=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6300000043601260003963000000436000F3600040600055600140600155600240600255600340600355600440600455600540600555600640600655600740600755600840600855600940600955600a40600a5500 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000002

echo "[ByzantiumTransition] Processing transaction number 912 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xe92706d990b735fa0115F625AE20aEa6Bf6EC05A) to 0x1000000000000000000000000000000000000001"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key dd22234e0fddc5722c611905d146ed6f3b3ba5554337e7c6bb10b4c70e5dd706 --timeout 20 --value 1 $ADDR_1000000000000000000000000000000000000001 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[ByzantiumTransition] Processing transaction number 913 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xe92706d990b735fa0115F625AE20aEa6Bf6EC05A) to 0x1000000000000000000000000000000000000002"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key dd22234e0fddc5722c611905d146ed6f3b3ba5554337e7c6bb10b4c70e5dd706 --timeout 20 --value 1 $ADDR_1000000000000000000000000000000000000002 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

