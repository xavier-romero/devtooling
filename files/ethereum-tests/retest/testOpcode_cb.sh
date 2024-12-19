# PRV_KEY for master sender 0x5e693A71887a3dF729268aD854C486db2b0E3250
PRV_KEY=9bae76a236988ad6a8a19c8c48f112c5ebb05d328de4b720e61ffeadfd5ce44a
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_cb (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_c0Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_cb] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xb6f90E3bC14d42fccCC0Fd67D8D58Ac2abd4B93e) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xb6f90E3bC14d42fccCC0Fd67D8D58Ac2abd4B93e | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_cb] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_cb] Creating receiver 0x7e57c0de000000000000000000000000000000cb with code and balance 72057594037927936..."
ADDR_7E57C0DE000000000000000000000000000000CB=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000010601260003963000000106000F36001600160016001600160016001cb00 | jq -r .contractAddress)
echo $ADDR_7E57C0DE000000000000000000000000000000CB

echo "[testOpcode_cb] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de000000000000000000000000000000cb62989680f160cb5500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_cb] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_cb] Processing transaction number 1629 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xb6f90E3bC14d42fccCC0Fd67D8D58Ac2abd4B93e) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 3c801e3d4e398521e96a21cafef1e604fa56839d103d637b01a2ee2e5ba175c0 --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

