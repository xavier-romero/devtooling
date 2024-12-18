# PRV_KEY for master sender 0xC6e9FbB26C25daF6a8181faF2F8419E817297afa
PRV_KEY=85cd332ee3fde5e444b4beb381f6eb93a1045d207ee6e6bbef2287498cb709ff
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_bb (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_b0Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_bb] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xe1B31BC535CbA29Db244Bb6aCeAC883682c5fd11) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xe1B31BC535CbA29Db244Bb6aCeAC883682c5fd11 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_bb] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_bb] Creating receiver 0x7e57c0de000000000000000000000000000000bb with code and balance 72057594037927936..."
ADDR_7E57C0DE000000000000000000000000000000BB=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000010601260003963000000106000F36001600160016001600160016001bb00 | jq -r .contractAddress)
echo $ADDR_7E57C0DE000000000000000000000000000000BB

echo "[testOpcode_bb] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de000000000000000000000000000000bb62989680f160bb5500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_bb] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_bb] Processing transaction number 1495 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xe1B31BC535CbA29Db244Bb6aCeAC883682c5fd11) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 55946b08586af6101ee7eb65253fe12e51b1c3804444eeb209f94ec4ccee330a --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

