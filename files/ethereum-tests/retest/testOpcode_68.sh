# PRV_KEY for master sender 0x3f5c1693BcA7C8515060c36CE9828849a0954413
PRV_KEY=9f6fbbd50dcb6cd16758a97f61cbe2256da600d9b8688c2fde1b11fa5406cdc2
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_68 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_60Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_68] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x85Df182d1aceb28b04Ce9343aFCA72Ff4df46822) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x85Df182d1aceb28b04Ce9343aFCA72Ff4df46822 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_68] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_68] Creating receiver 0x7e57c0de00000000000000000000000000000068 with code and balance 72057594037927936..."
ADDR_7E57C0DE00000000000000000000000000000068=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000013601260003963000000136000F3680000000000000000FF60FF14601157FD5B00 | jq -r .contractAddress)
echo $ADDR_7E57C0DE00000000000000000000000000000068

echo "[testOpcode_68] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de0000000000000000000000000000006862989680f160685500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_68] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_68] Processing transaction number 1508 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x85Df182d1aceb28b04Ce9343aFCA72Ff4df46822) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 84f6b0a3c9d1b088dfa42a257bb52c55aaa8aeee15b1d6d551b294e0f6dc5a57 --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

