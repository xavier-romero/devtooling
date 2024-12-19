# PRV_KEY for master sender 0x6f994F18E2f8Cb162728AE954F90A27Afda6996F
PRV_KEY=905b3eeedfbceb76e0b60154b2adb2c87a436bafbf71f48cff75e7a049acbd6f
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_65 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_60Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_65] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xfBa68d73791eb35affB4f0EA292Ca204f2dD40F7) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xfBa68d73791eb35affB4f0EA292Ca204f2dD40F7 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_65] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_65] Creating receiver 0x7e57c0de00000000000000000000000000000065 with code and balance 72057594037927936..."
ADDR_7E57C0DE00000000000000000000000000000065=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000010601260003963000000106000F3650000000000FF60FF14600e57FD5B00 | jq -r .contractAddress)
echo $ADDR_7E57C0DE00000000000000000000000000000065

echo "[testOpcode_65] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de0000000000000000000000000000006562989680f160655500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_65] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_65] Processing transaction number 1505 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xfBa68d73791eb35affB4f0EA292Ca204f2dD40F7) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 7711e845e6b01dfa3f1ea99c7dfb4766203f67d1675c32507e5b3c2edb4347b8 --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

