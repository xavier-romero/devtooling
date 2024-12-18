# PRV_KEY for master sender 0xf581b922eFf28a86B40793CcddCc261AE68F118F
PRV_KEY=3604b3a2d9f5a77fe1d077356aec0e5ef6a73c5c4c2ab08e476f6ba25281a4f1
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_fe (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_f0Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_fe] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x1c9f9F434f328C5f658f9E05FA2335e5aa9C152d) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x1c9f9F434f328C5f658f9E05FA2335e5aa9C152d | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_fe] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_fe] Creating receiver 0x7e57c0de000000000000000000000000000000fe with code and balance 72057594037927936..."
ADDR_7E57C0DE000000000000000000000000000000FE=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000010601260003963000000106000F36001600160016001600160016001fe00 | jq -r .contractAddress)
echo $ADDR_7E57C0DE000000000000000000000000000000FE

echo "[testOpcode_fe] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de000000000000000000000000000000fe62989680f160fe5500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_fe] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_fe] Processing transaction number 1578 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x1c9f9F434f328C5f658f9E05FA2335e5aa9C152d) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key acdfd733b72c62d8de8df0c6f2901458e03d4fd98f5aeee2a2161775fc60e034 --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

