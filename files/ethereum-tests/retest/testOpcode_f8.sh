# PRV_KEY for master sender 0x58c02C38Dc75a9ea6B0e03AE0aEADa8F79543E6f
PRV_KEY=edc10de47b6ac06d58cc784b16414d8fb97a1f88a31de76ef1fb61c176d22a6e
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_f8 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_f0Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_f8] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x77d6a4326A3A5132a8aF79cd827b50ae5B9eea07) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x77d6a4326A3A5132a8aF79cd827b50ae5B9eea07 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_f8] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_f8] Creating receiver 0x7e57c0de000000000000000000000000000000f8 with code and balance 72057594037927936..."
ADDR_7E57C0DE000000000000000000000000000000F8=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000010601260003963000000106000F36001600160016001600160016001f800 | jq -r .contractAddress)
echo $ADDR_7E57C0DE000000000000000000000000000000F8

echo "[testOpcode_f8] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de000000000000000000000000000000f862989680f160f85500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_f8] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_f8] Processing transaction number 1572 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x77d6a4326A3A5132a8aF79cd827b50ae5B9eea07) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 0c0a93022d765262e552a3386d5f033d42a702b8fa1597cb37f8955b4a11e6d7 --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

