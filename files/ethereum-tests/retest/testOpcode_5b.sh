# PRV_KEY for master sender 0xaD6a5039B666e5bcdd18c2B4F6182753Aa35926e
PRV_KEY=bde9e7ac10257dbdc185f65f5ae494fddabc4c970d92bdd6eb1e1e8c79eb457d
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_5b (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_50Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_5b] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xb2a4EC2ef43d7373783712ebDfd8CEeFFbD8CBF7) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xb2a4EC2ef43d7373783712ebDfd8CEeFFbD8CBF7 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_5b] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_5b] Creating receiver 0x7e57c0de0000000000000000000000000000005b with code and balance 72057594037927936..."
ADDR_7E57C0DE0000000000000000000000000000005B=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000006601260003963000000066000F3600456FD5B00 | jq -r .contractAddress)
echo $ADDR_7E57C0DE0000000000000000000000000000005B

echo "[testOpcode_5b] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de0000000000000000000000000000005b62989680f1605b5500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_5b] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_5b] Processing transaction number 1593 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xb2a4EC2ef43d7373783712ebDfd8CEeFFbD8CBF7) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key a01a2fbf6e3b1f8c04dfa66ecd2f71f52aa02cda620ab2f1778b7397bdb9b99b --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

