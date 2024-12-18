# PRV_KEY for master sender 0xF09F9055a6B147B895D5A403edcf5F844BF8bB1A
PRV_KEY=da1f32d9720182a493195098807aa1ef6e9317b0ebf7dca3e5ce30e7ba7d8587
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_d3 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_d0Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_d3] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xF8b6e655e0158dF5dEB7Eeb210e1cB224529f3b3) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xF8b6e655e0158dF5dEB7Eeb210e1cB224529f3b3 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_d3] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_d3] Creating receiver 0x7e57c0de000000000000000000000000000000d3 with code and balance 72057594037927936..."
ADDR_7E57C0DE000000000000000000000000000000D3=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000010601260003963000000106000F36001600160016001600160016001d300 | jq -r .contractAddress)
echo $ADDR_7E57C0DE000000000000000000000000000000D3

echo "[testOpcode_d3] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de000000000000000000000000000000d362989680f160d35500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_d3] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_d3] Processing transaction number 1737 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xF8b6e655e0158dF5dEB7Eeb210e1cB224529f3b3) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key cc7eef388048ff2005b856cdc64bf6fff836a2ee18a4bbc8fa8d4eb836bfb2fa --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

