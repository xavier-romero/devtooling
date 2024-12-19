# PRV_KEY for master sender 0x1503F120287889C82b14e41cCe70F644Bc9a979b
PRV_KEY=4817de7b73c4b9038b6afc3f4dcd944ddd66432079e4b353dd28112217f72a07
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_4b (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_40Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_4b] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xEbFB3f593d26E05AFaE1306ed97F4e72F98b0EcB) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xEbFB3f593d26E05AFaE1306ed97F4e72F98b0EcB | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_4b] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_4b] Creating receiver 0x7e57c0de0000000000000000000000000000004b with code and balance 72057594037927936..."
ADDR_7E57C0DE0000000000000000000000000000004B=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000010601260003963000000106000F360016001600160016001600160014b00 | jq -r .contractAddress)
echo $ADDR_7E57C0DE0000000000000000000000000000004B

echo "[testOpcode_4b] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de0000000000000000000000000000004b62989680f1604b5500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_4b] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_4b] Processing transaction number 1543 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xEbFB3f593d26E05AFaE1306ed97F4e72F98b0EcB) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key cac11520863509edb3cadb31b3be125102ca2e593ec8e17df8dec11852df0ad3 --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

