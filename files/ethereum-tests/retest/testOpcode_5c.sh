# PRV_KEY for master sender 0x2d214f5CB56dbc94Cb2007E4464BA0D739647288
PRV_KEY=302318896a3befec66b9f070bac89f4d658f522ae4fbd25a0192e7932232cf58
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_5c (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_50Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_5c] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x99D08a4A307ABA98F4d8463fd5ccF2a0a9246238) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x99D08a4A307ABA98F4d8463fd5ccF2a0a9246238 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_5c] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_5c] Creating receiver 0x7e57c0de0000000000000000000000000000005c with code and balance 72057594037927936..."
ADDR_7E57C0DE0000000000000000000000000000005C=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000021601260003963000000216000F336600C57601060FF5D5F5FF35B5F5F5F5F5F305AF160FF5C601003601F57005BFE | jq -r .contractAddress)
echo $ADDR_7E57C0DE0000000000000000000000000000005C

echo "[testOpcode_5c] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de0000000000000000000000000000005c62989680f1605c5500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_5c] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_5c] Processing transaction number 1594 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x99D08a4A307ABA98F4d8463fd5ccF2a0a9246238) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ecaed4db4a38aa78d3f85bd59eb21cc35f3398c0d176b2ec6f50ccf69a8b347a --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi
