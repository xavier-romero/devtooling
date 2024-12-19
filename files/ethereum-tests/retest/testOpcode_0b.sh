# PRV_KEY for master sender 0x6497fD67859BA9f5cBf2Bdf1F304bBd5A73C5a5C
PRV_KEY=05b34a991d6be398eda946388ce07ff16ffc4b1405afc8a1fd95152def26f0f0
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_0b (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_00Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_0b] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x70eb34cF1a0A14034e2f1392ec1af950B2737610) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x70eb34cF1a0A14034e2f1392ec1af950B2737610 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_0b] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_0b] Creating receiver 0x7e57c0de0000000000000000000000000000000b with code and balance 72057594037927936..."
ADDR_7E57C0DE0000000000000000000000000000000B=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 630000000e6012600039630000000e6000F360FF60000B600101600C57005BFD | jq -r .contractAddress)
echo $ADDR_7E57C0DE0000000000000000000000000000000B

echo "[testOpcode_0b] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de0000000000000000000000000000000b62989680f1600b5500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_0b] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_0b] Processing transaction number 1463 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x70eb34cF1a0A14034e2f1392ec1af950B2737610) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 011162825127db959aacabb418d715a3bb8a694f4cbfc3d857a55c82380913e6 --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

