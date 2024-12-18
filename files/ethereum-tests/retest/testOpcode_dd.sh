# PRV_KEY for master sender 0x08Fb71CCAb042331013602C27EBCA074Ee03Ae96
PRV_KEY=b5fa1dc12b3b72a8c499322c66a052196ae8299929d0484b5b51056a40e64236
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_dd (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_d0Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_dd] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xf050Df7d8bFA28f7c96030452d7532f23cb71Baf) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xf050Df7d8bFA28f7c96030452d7532f23cb71Baf | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_dd] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_dd] Creating receiver 0x7e57c0de000000000000000000000000000000dd with code and balance 72057594037927936..."
ADDR_7E57C0DE000000000000000000000000000000DD=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000010601260003963000000106000F36001600160016001600160016001dd00 | jq -r .contractAddress)
echo $ADDR_7E57C0DE000000000000000000000000000000DD

echo "[testOpcode_dd] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de000000000000000000000000000000dd62989680f160dd5500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_dd] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_dd] Processing transaction number 1747 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xf050Df7d8bFA28f7c96030452d7532f23cb71Baf) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 951467291bcad4e4c75fa8fc747c584babe5922dca5b512ab971622767c56a23 --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

