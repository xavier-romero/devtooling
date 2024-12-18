# PRV_KEY for master sender 0xb7FdC8EcfA2108993Fcc55CfEFFC0d969e65bAB2
PRV_KEY=cb97b3d3833bbbdc725960d3428566137bf60562c4141bf726cdd18a68984166
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_4a (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_40Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_4a] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xb0b98A07A5f2CD6Bb71af0E5B0c5d9055fdd540F) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xb0b98A07A5f2CD6Bb71af0E5B0c5d9055fdd540F | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_4a] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_4a] Creating receiver 0x7e57c0de0000000000000000000000000000004a with code and balance 72057594037927936..."
ADDR_7E57C0DE0000000000000000000000000000004A=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000009601260003963000000096000F34A4A03600757005BFD | jq -r .contractAddress)
echo $ADDR_7E57C0DE0000000000000000000000000000004A

echo "[testOpcode_4a] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de0000000000000000000000000000004a62989680f1604a5500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_4a] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_4a] Processing transaction number 1542 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xb0b98A07A5f2CD6Bb71af0E5B0c5d9055fdd540F) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key eb436d9f82a85195dd2690bafbd7e70101265b6aa3a6d7c7cee83f04eae75db8 --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

