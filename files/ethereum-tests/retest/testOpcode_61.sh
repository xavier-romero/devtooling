# PRV_KEY for master sender 0x608F3B445927Fae54b3D647a44dFb375771e56dA
PRV_KEY=f1259d3346cbace8dd2ca0ac7eb79a2a591d0305838a08815c78a982d030bbc5
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_61 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_60Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_61] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x1533Ce4271d429d61fa1aed56F1faf13e89C8d9D) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x1533Ce4271d429d61fa1aed56F1faf13e89C8d9D | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_61] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_61] Creating receiver 0x7e57c0de00000000000000000000000000000061 with code and balance 72057594037927936..."
ADDR_7E57C0DE00000000000000000000000000000061=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 630000000c6012600039630000000c6000F36100FF60FF14600a57FD5B00 | jq -r .contractAddress)
echo $ADDR_7E57C0DE00000000000000000000000000000061

echo "[testOpcode_61] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de0000000000000000000000000000006162989680f160615500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_61] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_61] Processing transaction number 1501 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x1533Ce4271d429d61fa1aed56F1faf13e89C8d9D) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 632e66a3cf263ec3b2db0a50df2de02c4d09569d7a77352205fe63f8d9fe9919 --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

