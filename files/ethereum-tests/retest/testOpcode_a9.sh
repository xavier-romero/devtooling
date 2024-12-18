# PRV_KEY for master sender 0x4e4DcCaD92799B50e6A3eCf220b241c749a8Ff55
PRV_KEY=4f95468135c9e629c0bc936bc0ebbfba5cf67bbd75e44ebc8fa8ad38af6564de
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_a9 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_a0Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_a9] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD71AFE87aa6EfDA127e8e3c1393BDd73f714c911) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xD71AFE87aa6EfDA127e8e3c1393BDd73f714c911 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_a9] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_a9] Creating receiver 0x7e57c0de000000000000000000000000000000a9 with code and balance 72057594037927936..."
ADDR_7E57C0DE000000000000000000000000000000A9=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000010601260003963000000106000F36001600160016001600160016001a900 | jq -r .contractAddress)
echo $ADDR_7E57C0DE000000000000000000000000000000A9

echo "[testOpcode_a9] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de000000000000000000000000000000a962989680f160a95500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_a9] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_a9] Processing transaction number 1727 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD71AFE87aa6EfDA127e8e3c1393BDd73f714c911) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 0030af896c901d4009240d1b81ca8ade5551b8ab0beac2c0099996ed9ee207ce --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

