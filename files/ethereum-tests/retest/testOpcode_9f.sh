# PRV_KEY for master sender 0x4E9e835D82BB8025AbEebdEc2De5Cfb1b26298C1
PRV_KEY=bd11ceff9cb9e1c5c713fa3804f31b13c8756be7431e9528a84d5b0c43963a56
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_9f (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_90Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_9f] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xA1b0D168d82F79627B7C85e7e7A66e256C0f8837) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xA1b0D168d82F79627B7C85e7e7A66e256C0f8837 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_9f] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_9f] Creating receiver 0x7e57c0de0000000000000000000000000000009f with code and balance 72057594037927936..."
ADDR_7E57C0DE0000000000000000000000000000009F=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 630000002c6012600039630000002c6000F36010600f600e600d600c600b600a60096008600760066005600460036002600160FF9f601014602a57FD5B00 | jq -r .contractAddress)
echo $ADDR_7E57C0DE0000000000000000000000000000009F

echo "[testOpcode_9f] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de0000000000000000000000000000009f62989680f1609f5500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_9f] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_9f] Processing transaction number 1531 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xA1b0D168d82F79627B7C85e7e7A66e256C0f8837) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 7fb5c5077deb07426856175285ae81d692c89e7d8ea877c4b12a7194a08e7512 --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi
