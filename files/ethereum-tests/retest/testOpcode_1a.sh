# PRV_KEY for master sender 0xe9BC8d5529cE4B415bFb45102830dc37aF17e656
PRV_KEY=aa6190fd81fc704f7772b2c4d2514e4ea94cf6e9f5327840ef216fb394d20373
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_1a (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_10Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_1a] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x118953046B7FA048EB0638a4f8ca9d79DDb053F5) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x118953046B7FA048EB0638a4f8ca9d79DDb053F5 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_1a] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_1a] Creating receiver 0x7e57c0de0000000000000000000000000000001a with code and balance 72057594037927936..."
ADDR_7E57C0DE0000000000000000000000000000001A=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 630000000e6012600039630000000e6000F360ff601f1a60ff14600C57FD5B00 | jq -r .contractAddress)
echo $ADDR_7E57C0DE0000000000000000000000000000001A

echo "[testOpcode_1a] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de0000000000000000000000000000001a62989680f1601a5500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_1a] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_1a] Processing transaction number 1558 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x118953046B7FA048EB0638a4f8ca9d79DDb053F5) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 8fbcc26334588dee758de66fa7e35cde13a7583234aaef429f7b0d31ae1732e3 --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

