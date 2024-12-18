# PRV_KEY for master sender 0xD0CF9b339af6397C0e78b5BD61c54EFf88442230
PRV_KEY=40447e902f6129dfc07e547f7c21d47642f633efa3810ceff93f84d6137bf6eb
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_b2 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_b0Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_b2] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xBF45885612E59c3eF0944153aC0Cc7819e52D742) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xBF45885612E59c3eF0944153aC0Cc7819e52D742 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_b2] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_b2] Creating receiver 0x7e57c0de000000000000000000000000000000b2 with code and balance 72057594037927936..."
ADDR_7E57C0DE000000000000000000000000000000B2=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000010601260003963000000106000F36001600160016001600160016001b200 | jq -r .contractAddress)
echo $ADDR_7E57C0DE000000000000000000000000000000B2

echo "[testOpcode_b2] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de000000000000000000000000000000b262989680f160b25500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_b2] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_b2] Processing transaction number 1486 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xBF45885612E59c3eF0944153aC0Cc7819e52D742) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 5b9f93adb062b8e2be5b26df59e68998af98ca973f5490573c397255c46b8326 --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

