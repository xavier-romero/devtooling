# PRV_KEY for master sender 0x64008F02a8CE137B6c4DcB0F8Fe9C78B1a569Efe
PRV_KEY=9c558145aace2b9e41ccffe7c6b377cda1d484b71ee85c6d290bdabbc759c042
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_f0 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_f0Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_f0] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x869Da9A0878531352e503889a3852345B1d7cDa2) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x869Da9A0878531352e503889a3852345B1d7cDa2 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_f0] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_f0] Creating receiver 0x7e57c0de000000000000000000000000000000f0 with code and balance 72057594037927936..."
ADDR_7E57C0DE000000000000000000000000000000F0=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000016601260003963000000166000F3600060205360016020603fF031603f14601457FD5B00 | jq -r .contractAddress)
echo $ADDR_7E57C0DE000000000000000000000000000000F0

echo "[testOpcode_f0] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de000000000000000000000000000000f062989680f160f05500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_f0] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_f0] Processing transaction number 1564 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x869Da9A0878531352e503889a3852345B1d7cDa2) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 2687b0fbf9b467bab2af8cf02a343284b204bbd9d6e9c627f7a7bbb22e20d4ab --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

