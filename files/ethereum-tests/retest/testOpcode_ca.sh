# PRV_KEY for master sender 0xc512793164F4243fa7a69A3236828f5ba4adD6C7
PRV_KEY=d19c2b56c61d9f0e8309090aba3620a07fd13fc9d707e9d6dfc79c3a36550a18
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_ca (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_c0Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_ca] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x73be88704f1f43F36F4c15aa5CBdFE9354AEb51C) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x73be88704f1f43F36F4c15aa5CBdFE9354AEb51C | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_ca] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_ca] Creating receiver 0x7e57c0de000000000000000000000000000000ca with code and balance 72057594037927936..."
ADDR_7E57C0DE000000000000000000000000000000CA=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000010601260003963000000106000F36001600160016001600160016001ca00 | jq -r .contractAddress)
echo $ADDR_7E57C0DE000000000000000000000000000000CA

echo "[testOpcode_ca] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de000000000000000000000000000000ca62989680f160ca5500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_ca] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_ca] Processing transaction number 1628 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x73be88704f1f43F36F4c15aa5CBdFE9354AEb51C) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key b1d531789cd3113db88a0448f9bd28092717f7dade726a4c5f659dd044c0ca85 --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi
