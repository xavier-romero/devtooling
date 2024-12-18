# PRV_KEY for master sender 0x3aeA44161df389288785E17Aad5B812A13356177
PRV_KEY=e0e337f763ad6914fd934fd394583e71653d16c03b8ddcee8ca24eed162fc53f
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test RefundOverflow (src/BlockchainTestsFiller/InvalidBlocks/bcStateTests/RefundOverflowFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[RefundOverflow] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x364dc04E3802f499ee1f95CB6ecc88eDB6D1fda2) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x364dc04E3802f499ee1f95CB6ecc88eDB6D1fda2 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[RefundOverflow] Funding sender 0x55d786DF68385b59b919E0BfeE2A8Ada2D23Ecf8(remapped to 0x3df50851aa067E037Ce9E62B2755170be4135ed3) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x3df50851aa067E037Ce9E62B2755170be4135ed3 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[RefundOverflow] Processing transaction number 139 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x364dc04E3802f499ee1f95CB6ecc88eDB6D1fda2) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 3a7145c962a323cbac6049b609a875ea9a3f0802bae0f688ddd82847e66c842c --timeout 20 --value 0 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[RefundOverflow] Processing transaction number 140 from 0x55d786DF68385b59b919E0BfeE2A8Ada2D23Ecf8(remapped to 0x3df50851aa067E037Ce9E62B2755170be4135ed3) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 474b4e953596e4ff70e290f8bf85486df7172ed54ac0a59811d421df5e775892 --timeout 20 --value 0 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

