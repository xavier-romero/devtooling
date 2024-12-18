# PRV_KEY for master sender 0x7Df1f3b6fe2d776F7d7A9DF50edb0422958EB71e
PRV_KEY=c9cc2f13878db95e9e1d76ff7171e68923d8324cea4f7ea13f80ffad3606f75b
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_30 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_30Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_30] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xea776948cE31109c8b8A93cfFb192Bb5fB2f6848) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xea776948cE31109c8b8A93cfFb192Bb5fB2f6848 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_30] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_30] Creating receiver 0x7e57c0de00000000000000000000000000000030 with code and balance 72057594037927936..."
ADDR_7E57C0DE00000000000000000000000000000030=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 630000001d6012600039630000001d6000F3737E57C0DE000000000000000000000000000000303014601B57FD5B00 | jq -r .contractAddress)
echo $ADDR_7E57C0DE00000000000000000000000000000030

echo "[testOpcode_30] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de0000000000000000000000000000003062989680f160305500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_30] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_30] Processing transaction number 1468 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xea776948cE31109c8b8A93cfFb192Bb5fB2f6848) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key aadefb7fb41a062bdea59dfe0d192f7e72ee98523b693f858e053bae10d1ceb7 --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

