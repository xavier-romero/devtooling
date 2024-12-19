# PRV_KEY for master sender 0x0f242015d090fA31BD47AAd4dF1F57Bd9d704852
PRV_KEY=75ba9894ab6f0db24d79962a23307fe11e2713dde26a567dfd76e57ca986beda
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_d5 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_d0Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_d5] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x6C72F2867716012Dc4db27f6b0e43B9e0F7E2Fa8) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x6C72F2867716012Dc4db27f6b0e43B9e0F7E2Fa8 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_d5] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_d5] Creating receiver 0x7e57c0de000000000000000000000000000000d5 with code and balance 72057594037927936..."
ADDR_7E57C0DE000000000000000000000000000000D5=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000010601260003963000000106000F36001600160016001600160016001d500 | jq -r .contractAddress)
echo $ADDR_7E57C0DE000000000000000000000000000000D5

echo "[testOpcode_d5] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de000000000000000000000000000000d562989680f160d55500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_d5] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_d5] Processing transaction number 1739 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x6C72F2867716012Dc4db27f6b0e43B9e0F7E2Fa8) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 421ada23cd4ee9c5b63fa43adf768d20a73a91303dd1543eb709baff0d3d6157 --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

