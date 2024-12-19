# PRV_KEY for master sender 0xf04Fbd0E65711A1f1F00D1822d189c36b066DCa9
PRV_KEY=5989f172a576db5be3724a2a31f74b60abe117e54d2c99ef60e09f33c6664297
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_b6 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_b0Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_b6] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD5647ba004E3B12Db9f331675Bcc37f105aAdfCf) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xD5647ba004E3B12Db9f331675Bcc37f105aAdfCf | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_b6] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_b6] Creating receiver 0x7e57c0de000000000000000000000000000000b6 with code and balance 72057594037927936..."
ADDR_7E57C0DE000000000000000000000000000000B6=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000010601260003963000000106000F36001600160016001600160016001b600 | jq -r .contractAddress)
echo $ADDR_7E57C0DE000000000000000000000000000000B6

echo "[testOpcode_b6] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de000000000000000000000000000000b662989680f160b65500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_b6] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_b6] Processing transaction number 1490 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD5647ba004E3B12Db9f331675Bcc37f105aAdfCf) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d13e0d29c2297f603a3dc27995f05b54b4309fbf8c546fd366bda0e0fa5a4f4d --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

