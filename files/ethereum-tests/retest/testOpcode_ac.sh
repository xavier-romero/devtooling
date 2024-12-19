# PRV_KEY for master sender 0x529c0fC8e11eA3FA78d1a56D98b47aC48fC3c2ef
PRV_KEY=c7765b42c9ae094c6fe25651d652ad30541f906f3b992730d1e8f72436043378
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_ac (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_a0Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_ac] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x896041115985Dd56CFCbc39209cD3807ddE30874) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x896041115985Dd56CFCbc39209cD3807ddE30874 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_ac] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_ac] Creating receiver 0x7e57c0de000000000000000000000000000000ac with code and balance 72057594037927936..."
ADDR_7E57C0DE000000000000000000000000000000AC=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000010601260003963000000106000F36001600160016001600160016001ac00 | jq -r .contractAddress)
echo $ADDR_7E57C0DE000000000000000000000000000000AC

echo "[testOpcode_ac] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de000000000000000000000000000000ac62989680f160ac5500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_ac] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_ac] Processing transaction number 1730 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x896041115985Dd56CFCbc39209cD3807ddE30874) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 75bf4d206a664960bbfe3272ee60145c79f85fcdc2170ec65509dceaaa495375 --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

