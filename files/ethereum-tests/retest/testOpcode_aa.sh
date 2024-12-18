# PRV_KEY for master sender 0x46e27D0CDE82d2BB485839eA01540247561c1229
PRV_KEY=b670f2603c3a931a3094441264a380c7564c4d9816136c482836b5bf5224165f
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_aa (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_a0Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_aa] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x64CBd8a30646dACf88dDe1cCC29b3fEE901a9105) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x64CBd8a30646dACf88dDe1cCC29b3fEE901a9105 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_aa] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_aa] Creating receiver 0x7e57c0de000000000000000000000000000000aa with code and balance 72057594037927936..."
ADDR_7E57C0DE000000000000000000000000000000AA=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000010601260003963000000106000F36001600160016001600160016001aa00 | jq -r .contractAddress)
echo $ADDR_7E57C0DE000000000000000000000000000000AA

echo "[testOpcode_aa] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de000000000000000000000000000000aa62989680f160aa5500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_aa] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_aa] Processing transaction number 1728 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x64CBd8a30646dACf88dDe1cCC29b3fEE901a9105) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 9c0a79a3eedec6e3ec2d1648a2c39eb321c6cbed11cef0aa1c4e19ddfab77033 --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

