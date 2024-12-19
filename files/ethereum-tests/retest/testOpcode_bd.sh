# PRV_KEY for master sender 0x74504461E6FdB0d6c33e480Af48faA5dF6C522DA
PRV_KEY=d33a9eb05e44f3f6c2c148f4148a7fdd7650b7940080047c20b9a5a5f9db86ae
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_bd (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_b0Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_bd] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xe073529d9e6Bf7644d580674eeA5915e57Cd4573) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xe073529d9e6Bf7644d580674eeA5915e57Cd4573 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_bd] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_bd] Creating receiver 0x7e57c0de000000000000000000000000000000bd with code and balance 72057594037927936..."
ADDR_7E57C0DE000000000000000000000000000000BD=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000010601260003963000000106000F36001600160016001600160016001bd00 | jq -r .contractAddress)
echo $ADDR_7E57C0DE000000000000000000000000000000BD

echo "[testOpcode_bd] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de000000000000000000000000000000bd62989680f160bd5500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_bd] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_bd] Processing transaction number 1497 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xe073529d9e6Bf7644d580674eeA5915e57Cd4573) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ccd12a521de61e006510cc8495c89a034c1e20f1f58a8a95505267e9ccbcdd07 --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

