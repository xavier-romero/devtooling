# PRV_KEY for master sender 0xb300aed6E7990Fc6EaF06a4A1c3b7e1A5a2531F5
PRV_KEY=0865db67ba1c3e66fac9434ada6a5e78d9d64fcabafec19bcf51de3209679f91
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_2f (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_20Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_2f] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x882F17545aB28078bC0516B266DaDa6B493aB189) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x882F17545aB28078bC0516B266DaDa6B493aB189 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_2f] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_2f] Creating receiver 0x7e57c0de0000000000000000000000000000002f with code and balance 72057594037927936..."
ADDR_7E57C0DE0000000000000000000000000000002F=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000010601260003963000000106000F360016001600160016001600160012f00 | jq -r .contractAddress)
echo $ADDR_7E57C0DE0000000000000000000000000000002F

echo "[testOpcode_2f] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de0000000000000000000000000000002f62989680f1602f5500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_2f] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_2f] Processing transaction number 1617 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x882F17545aB28078bC0516B266DaDa6B493aB189) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 35471533121ba6dd8ed76e1c4568285b0c4cfd0fe66c51f7ab0f7890cb586228 --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

