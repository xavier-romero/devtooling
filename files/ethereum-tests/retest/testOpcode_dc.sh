# PRV_KEY for master sender 0x7BAF646b43e857099074455f69396E841d2d6888
PRV_KEY=53a09e006c3229d433d4e2ad59a9e07507418317c4818347612462e3ae415ff5
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_dc (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_d0Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_dc] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xb8ec9C327b728c7E329b73F91fB6dC87Dcf9e838) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xb8ec9C327b728c7E329b73F91fB6dC87Dcf9e838 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_dc] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_dc] Creating receiver 0x7e57c0de000000000000000000000000000000dc with code and balance 72057594037927936..."
ADDR_7E57C0DE000000000000000000000000000000DC=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000010601260003963000000106000F36001600160016001600160016001dc00 | jq -r .contractAddress)
echo $ADDR_7E57C0DE000000000000000000000000000000DC

echo "[testOpcode_dc] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de000000000000000000000000000000dc62989680f160dc5500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_dc] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_dc] Processing transaction number 1746 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xb8ec9C327b728c7E329b73F91fB6dC87Dcf9e838) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key e15a0c63406d3b0c71d834aeb6870d7e4c2104f64faa2ffeb08ecc408bebfada --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

