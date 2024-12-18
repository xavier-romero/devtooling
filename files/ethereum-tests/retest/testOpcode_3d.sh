# PRV_KEY for master sender 0x86dd1F9d56DE2b1e6D2A10f09945480A757fA894
PRV_KEY=47a541fe694465673adb61c224ef6c215bba6cc47746981f3c70da7c10aa52e8
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_3d (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_30Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_3d] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xB31874d808e1665df0fC06d86e425D3f05ff3456) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xB31874d808e1665df0fC06d86e425D3f05ff3456 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_3d] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_3d] Creating receiver 0x7e57c0de0000000000000000000000000000003d with code and balance 72057594037927936..."
ADDR_7E57C0DE0000000000000000000000000000003D=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 630000003f6012600039630000003f6000F360AA600c5360BB600d5360CC600e5360DD600f53600460006004600C600073CA11ED00000000000000000000000000000000005AF13D600414603D57FD5B00 | jq -r .contractAddress)
echo $ADDR_7E57C0DE0000000000000000000000000000003D

echo "[testOpcode_3d] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de0000000000000000000000000000003d62989680f1603d5500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_3d] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_3d] Processing transaction number 1481 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xB31874d808e1665df0fC06d86e425D3f05ff3456) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 05b36532f4e526fee5923742960283ace23ba599d8648eed886c2c1652efd0b5 --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

