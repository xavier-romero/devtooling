# PRV_KEY for master sender 0x00675c4bF5FD2d4d32757aAaBd710f4e929e4716
PRV_KEY=ae02bca8c301d3f405bd1e01df4d5274e612d058893ed5a0d0c31dc4d237463b
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_bf (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_b0Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_bf] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x62C91107bE7bf60B22f3dbFE7dD3bEA79aA6A316) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x62C91107bE7bf60B22f3dbFE7dD3bEA79aA6A316 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_bf] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_bf] Creating receiver 0x7e57c0de000000000000000000000000000000bf with code and balance 72057594037927936..."
ADDR_7E57C0DE000000000000000000000000000000BF=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000010601260003963000000106000F36001600160016001600160016001bf00 | jq -r .contractAddress)
echo $ADDR_7E57C0DE000000000000000000000000000000BF

echo "[testOpcode_bf] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de000000000000000000000000000000bf62989680f160bf5500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_bf] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_bf] Processing transaction number 1499 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x62C91107bE7bf60B22f3dbFE7dD3bEA79aA6A316) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key c69d1d69e6a06a90fbd3416b694b0b5ee71aab95c69937aa2396b3613b048bae --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi
