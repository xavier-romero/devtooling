# PRV_KEY for master sender 0x990ba376b7F88aF2D6d9fEBC3C34A11f1F376F4A
PRV_KEY=b001ea8a8a7187636077e1dafd6fa4ff6e7cee3e896989aa01e3bdbeceff6f4a
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_13 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_10Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_13] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x3bebFb0b45662939Cc99cf5CFA5A09ECa4567ef0) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x3bebFb0b45662939Cc99cf5CFA5A09ECa4567ef0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_13] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_13] Creating receiver 0x7e57c0de00000000000000000000000000000013 with code and balance 72057594037927936..."
ADDR_7E57C0DE00000000000000000000000000000013=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 630000000e6012600039630000000e6000F36002600313600114600C57FD5B00 | jq -r .contractAddress)
echo $ADDR_7E57C0DE00000000000000000000000000000013

echo "[testOpcode_13] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de0000000000000000000000000000001362989680f160135500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_13] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_13] Processing transaction number 1551 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x3bebFb0b45662939Cc99cf5CFA5A09ECa4567ef0) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key bf64b7ab53b4cc22196ff723a1c40c08e83d8a4f8503d70cece769c2eb10fcb1 --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

