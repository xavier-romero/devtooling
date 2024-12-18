# PRV_KEY for master sender 0xa6Ba93f12Cd6A8c67c2C25Bf34C2808763E27f76
PRV_KEY=74e5ac468278bf75457cf5142146cd472abcd23005f7739649fe9a3f741167c6
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test ExtraData33 (src/BlockchainTestsFiller/InvalidBlocks/bcInvalidHeaderTest/ExtraData33Filler.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+5000000000))
echo "[ExtraData33] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xbfF9c70ff0772b5ef94b79C62dd65d1a4550966E) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xbfF9c70ff0772b5ef94b79C62dd65d1a4550966E | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[ExtraData33] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 100..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100 --create 630000002c6012600039630000002c6000F37fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff600052600060206000a100 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[ExtraData33] Processing transaction number 277 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xbfF9c70ff0772b5ef94b79C62dd65d1a4550966E) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ea9d627549da1c3b59d48ec2c7bb675108ac784b6de36ca0132ca504ffb857ff --timeout 20 --value 5000000000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

