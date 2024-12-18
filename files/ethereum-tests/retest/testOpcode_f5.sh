# PRV_KEY for master sender 0x0Fc6A05FCf6e4f9dF7e4F78087A998356b947B6F
PRV_KEY=232a8944c3b18f94d7b349e12c04e8d3bc1b2b9dd062864137b039455242e844
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_f5 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_f0Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_f5] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xB535999E81e9a2c0f7a7AE7Fc926a72a4cB18675) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xB535999E81e9a2c0f7a7AE7Fc926a72a4cB18675 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_f5] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_f5] Creating receiver 0x7e57c0de000000000000000000000000000000f5 with code and balance 72057594037927936..."
ADDR_7E57C0DE000000000000000000000000000000F5=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 630000002a6012600039630000002a6000F3600060205360FF60016020603fF573999904ecaeacf74500f4016c718745d26d78fec314602857FD5B00 | jq -r .contractAddress)
echo $ADDR_7E57C0DE000000000000000000000000000000F5

echo "[testOpcode_f5] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de000000000000000000000000000000f562989680f160f55500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_f5] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_f5] Processing transaction number 1569 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xB535999E81e9a2c0f7a7AE7Fc926a72a4cB18675) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key cdd73b68fd5ebff1abd84a93566894af85718a2ffa7e3216284a7036f98013dd --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

