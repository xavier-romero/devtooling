# PRV_KEY for master sender 0x5CBe63411fDd30d60B63bE0B3969A66b53e4Afe7
PRV_KEY=64fa58ff23b1251476e451432fa3512e8a527b65238575beac0470076f6d6af4
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_a6 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_a0Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_a6] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xB7a75642039ec70cda451ace49f4f6Cfa60F6F82) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xB7a75642039ec70cda451ace49f4f6Cfa60F6F82 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_a6] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_a6] Creating receiver 0x7e57c0de000000000000000000000000000000a6 with code and balance 72057594037927936..."
ADDR_7E57C0DE000000000000000000000000000000A6=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000010601260003963000000106000F36001600160016001600160016001a600 | jq -r .contractAddress)
echo $ADDR_7E57C0DE000000000000000000000000000000A6

echo "[testOpcode_a6] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de000000000000000000000000000000a662989680f160a65500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_a6] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_a6] Processing transaction number 1724 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xB7a75642039ec70cda451ace49f4f6Cfa60F6F82) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 5f17d7c38cc45dbf8bb7ccfb0f19c1acd38a3b4882c84f1354ef12910d0bd953 --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

