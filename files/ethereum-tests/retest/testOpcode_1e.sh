# PRV_KEY for master sender 0xc031476809D785308Db6Ec09ed4422e6B9bE3915
PRV_KEY=4c1e692eecf0f5d01cab5a667932422585d8a7f427d74ffb9ad123f786aa8ffc
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_1e (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_10Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_1e] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xb7b415adFC75d7e9F054A76dB145a30A4E71E22D) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xb7b415adFC75d7e9F054A76dB145a30A4E71E22D | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_1e] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_1e] Creating receiver 0x7e57c0de0000000000000000000000000000001e with code and balance 72057594037927936..."
ADDR_7E57C0DE0000000000000000000000000000001E=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000010601260003963000000106000F360016001600160016001600160011e00 | jq -r .contractAddress)
echo $ADDR_7E57C0DE0000000000000000000000000000001E

echo "[testOpcode_1e] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de0000000000000000000000000000001e62989680f1601e5500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_1e] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_1e] Processing transaction number 1562 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xb7b415adFC75d7e9F054A76dB145a30A4E71E22D) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key fb41ac2f2770c1fb0a6c319461e6c695c4fc63deb748201fa2be8b8106ce9d1a --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

