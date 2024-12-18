# PRV_KEY for master sender 0x854D8ACeD0DD6eDA7C2B14b0bB539a51DFecf51b
PRV_KEY=977714b7482518c4532f9a00027eedca9e95c70ee4b59d1aa819ee13537d2d1e
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_26 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_20Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_26] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x5A75DA0Bf269c386CE9F491833e406B27D282E04) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x5A75DA0Bf269c386CE9F491833e406B27D282E04 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_26] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_26] Creating receiver 0x7e57c0de00000000000000000000000000000026 with code and balance 72057594037927936..."
ADDR_7E57C0DE00000000000000000000000000000026=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000010601260003963000000106000F360016001600160016001600160012600 | jq -r .contractAddress)
echo $ADDR_7E57C0DE00000000000000000000000000000026

echo "[testOpcode_26] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de0000000000000000000000000000002662989680f160265500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_26] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_26] Processing transaction number 1608 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x5A75DA0Bf269c386CE9F491833e406B27D282E04) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key c7a00cba6dc5c6ab42092fa973abe48eb91daef6d580b1f89a6afc45ce2af514 --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

