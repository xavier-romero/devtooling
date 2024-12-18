# PRV_KEY for master sender 0xEB5fbcbfe4Fe5847Cb61554Cc9D5089c87d59993
PRV_KEY=f8ad0e4193a6fff54f141e1def20a5f603f6ff74c99efb028878f955ca19df81
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_f8 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_f0Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_f8] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xa1db929Ce801518Abdea25D6da2c3ABF641dE187) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xa1db929Ce801518Abdea25D6da2c3ABF641dE187 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_f8] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_f8] Creating receiver 0x7e57c0de000000000000000000000000000000f8 with code and balance 72057594037927936..."
ADDR_7E57C0DE000000000000000000000000000000F8=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000010601260003963000000106000F36001600160016001600160016001f800 | jq -r .contractAddress)
echo $ADDR_7E57C0DE000000000000000000000000000000F8

echo "[testOpcode_f8] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de000000000000000000000000000000f862989680f160f85500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_f8] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_f8] Processing transaction number 1572 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xa1db929Ce801518Abdea25D6da2c3ABF641dE187) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 02cffba74fe6f7586bbdec8ed04a77a5d4f3fc88b78439be48e0f28e75621628 --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

