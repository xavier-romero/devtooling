# PRV_KEY for master sender 0x0f069B752E36245363555dd54FA2f28485aE53d8
PRV_KEY=2db67f5f0be588bc3d4eff1366843c7549dea198cc4f0af0fd0f0f37e2f76edc
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_3f (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_30Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_3f] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x60BEAbEeAc2785C22D9cE73c7795c5ac78B1C158) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x60BEAbEeAc2785C22D9cE73c7795c5ac78B1C158 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_3f] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_3f] Creating receiver 0x7e57c0de0000000000000000000000000000003f with code and balance 72057594037927936..."
ADDR_7E57C0DE0000000000000000000000000000003F=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000033601260003963000000336000F3737E57C0DE0000000000000000000000000000003f3F73B1607E57000000000000000000000000000000003F14603157005BFD | jq -r .contractAddress)
echo $ADDR_7E57C0DE0000000000000000000000000000003F

echo "[testOpcode_3f] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de0000000000000000000000000000003f62989680f1603f5500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_3f] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_3f] Processing transaction number 1483 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x60BEAbEeAc2785C22D9cE73c7795c5ac78B1C158) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 441c276eb429748365686ba3cdabc3b3d86ea2152de7e75cc50bc6fecb4e260a --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi
