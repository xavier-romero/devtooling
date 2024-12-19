# PRV_KEY for master sender 0x4eEC6D203eBe4D9421762f3fC48b611283B38449
PRV_KEY=2cd6a8c64834d60b81bb34ef2246add35429f5adef80f107f741a857bbc05764
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_3a (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_30Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_3a] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xFbD43E9B7afc71dfBeA9934cB0201dfec065b549) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xFbD43E9B7afc71dfBeA9934cB0201dfec065b549 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_3a] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_3a] Creating receiver 0x7e57c0de0000000000000000000000000000003a with code and balance 72057594037927936..."
ADDR_7E57C0DE0000000000000000000000000000003A=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 630000000e6012600039630000000e6000F3600660023a601414600C57FD5B00 | jq -r .contractAddress)
echo $ADDR_7E57C0DE0000000000000000000000000000003A

echo "[testOpcode_3a] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de0000000000000000000000000000003a62989680f1603a5500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_3a] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_3a] Processing transaction number 1478 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xFbD43E9B7afc71dfBeA9934cB0201dfec065b549) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 704c6781382dcd59fcd8864a18b8f8e447820edfc72a72ea101432d0a9095148 --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

