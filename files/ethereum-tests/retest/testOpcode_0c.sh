# PRV_KEY for master sender 0x2df883eb99121D9ac02D8A3D480B349315B3a589
PRV_KEY=d8c7df0d35f436f9cb7772ede8d7f0ea8ff7c90182caf97e335755a2eb67ec39
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_0c (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_00Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_0c] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x4FBD2d0a4E33480f05455Bfe9cf5d720d769ec9F) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x4FBD2d0a4E33480f05455Bfe9cf5d720d769ec9F | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_0c] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_0c] Creating receiver 0x7e57c0de0000000000000000000000000000000c with code and balance 72057594037927936..."
ADDR_7E57C0DE0000000000000000000000000000000C=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000010601260003963000000106000F360016001600160016001600160010c00 | jq -r .contractAddress)
echo $ADDR_7E57C0DE0000000000000000000000000000000C

echo "[testOpcode_0c] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de0000000000000000000000000000000c62989680f1600c5500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_0c] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_0c] Processing transaction number 1464 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x4FBD2d0a4E33480f05455Bfe9cf5d720d769ec9F) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key bbbb3b397db537a6f9c3bb82e0ff31e992478eccde07dc3ae78f1158c49774e2 --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

