# PRV_KEY for master sender 0xFDBDa48e8d2505086D1A44d807C8d9bf346C56F5
PRV_KEY=b15906efd3600233d55036be7c6ab872084ac207091df419ad4cda29cd2fc9a1
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_c5 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_c0Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_c5] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x19B30c30A5a8A2A74F667769e0F26EA6b1b5f81C) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x19B30c30A5a8A2A74F667769e0F26EA6b1b5f81C | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_c5] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_c5] Creating receiver 0x7e57c0de000000000000000000000000000000c5 with code and balance 72057594037927936..."
ADDR_7E57C0DE000000000000000000000000000000C5=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000010601260003963000000106000F36001600160016001600160016001c500 | jq -r .contractAddress)
echo $ADDR_7E57C0DE000000000000000000000000000000C5

echo "[testOpcode_c5] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de000000000000000000000000000000c562989680f160c55500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_c5] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_c5] Processing transaction number 1623 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x19B30c30A5a8A2A74F667769e0F26EA6b1b5f81C) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key eaebad957b7d3fd0a03ee73973f3d44cc49dcf1f9b71fdc52e157c299a27d2b5 --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

