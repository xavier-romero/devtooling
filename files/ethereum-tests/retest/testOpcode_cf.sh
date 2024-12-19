# PRV_KEY for master sender 0x6701FC8261EdBb778907d4459675B0Fa7346F903
PRV_KEY=542fe9122d88f4983a55d06a9a2b4f70fefcc54c8430ab818eb5e17c7d9e0166
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_cf (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_c0Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_cf] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xfe4c985cdDEf96A901035416012f48d55BF1698d) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xfe4c985cdDEf96A901035416012f48d55BF1698d | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_cf] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_cf] Creating receiver 0x7e57c0de000000000000000000000000000000cf with code and balance 72057594037927936..."
ADDR_7E57C0DE000000000000000000000000000000CF=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000010601260003963000000106000F36001600160016001600160016001cf00 | jq -r .contractAddress)
echo $ADDR_7E57C0DE000000000000000000000000000000CF

echo "[testOpcode_cf] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de000000000000000000000000000000cf62989680f160cf5500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_cf] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_cf] Processing transaction number 1633 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xfe4c985cdDEf96A901035416012f48d55BF1698d) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 1ef1b42d599dbfab08025f3c5e10b9d6ec45e71f0d1a31554a6782205dd7c79e --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

