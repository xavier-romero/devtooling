# PRV_KEY for master sender 0xcA992c2f52Cb025DDC229e4CC4e0Ab83Ee84Faf3
PRV_KEY=85281533eb42e0b5046692f680b0f5f79b4859cc98e769776702cfd0c976186c
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_fd (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_f0Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_fd] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8675c56c6Bca351F4d9e158a27bdb68F041183B0) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x8675c56c6Bca351F4d9e158a27bdb68F041183B0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_fd] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_fd] Creating receiver 0x7e57c0de000000000000000000000000000000fd with code and balance 72057594037927936..."
ADDR_7E57C0DE000000000000000000000000000000FD=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000001601260003963000000016000F3FD | jq -r .contractAddress)
echo $ADDR_7E57C0DE000000000000000000000000000000FD

echo "[testOpcode_fd] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de000000000000000000000000000000fd62989680f160fd5500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_fd] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_fd] Processing transaction number 1577 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8675c56c6Bca351F4d9e158a27bdb68F041183B0) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 35b3239675d29e469d48c960bb37e69792543751969028fe6cafac7fd3abe7e3 --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

