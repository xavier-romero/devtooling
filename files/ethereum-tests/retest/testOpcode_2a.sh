# PRV_KEY for master sender 0x269B4093F2b067Ea77F117dF29FAf1E9C29bB24A
PRV_KEY=8d681ddb0562449980799c16a715c0538faa04b72db29c8aafb9b786e4da52bd
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_2a (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_20Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_2a] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xaC504b8219c9302d62386Cf0C5888d02f7b9506a) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xaC504b8219c9302d62386Cf0C5888d02f7b9506a | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_2a] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_2a] Creating receiver 0x7e57c0de0000000000000000000000000000002a with code and balance 72057594037927936..."
ADDR_7E57C0DE0000000000000000000000000000002A=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000010601260003963000000106000F360016001600160016001600160012a00 | jq -r .contractAddress)
echo $ADDR_7E57C0DE0000000000000000000000000000002A

echo "[testOpcode_2a] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de0000000000000000000000000000002a62989680f1602a5500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_2a] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_2a] Processing transaction number 1612 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xaC504b8219c9302d62386Cf0C5888d02f7b9506a) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 1bc45000ab4f27b80677c21678eeddde7c9387238be9aa77e697a9733c2281d9 --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi
