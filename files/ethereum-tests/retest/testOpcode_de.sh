# PRV_KEY for master sender 0x04d42C760369A9c2Fe63771b8612205080BF8252
PRV_KEY=1660c5b2ee9e60a738ab73bf193a230b4fe6373d2e1fc7fc1c05b02feefeab98
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_de (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_d0Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_de] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x888dE5F68A01BC1F0fbb828e6cAe997A42E464cC) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x888dE5F68A01BC1F0fbb828e6cAe997A42E464cC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_de] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_de] Creating receiver 0x7e57c0de000000000000000000000000000000de with code and balance 72057594037927936..."
ADDR_7E57C0DE000000000000000000000000000000DE=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000010601260003963000000106000F36001600160016001600160016001de00 | jq -r .contractAddress)
echo $ADDR_7E57C0DE000000000000000000000000000000DE

echo "[testOpcode_de] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de000000000000000000000000000000de62989680f160de5500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_de] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_de] Processing transaction number 1748 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x888dE5F68A01BC1F0fbb828e6cAe997A42E464cC) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 6e794905c5abf6e8de3178906be6000bf6ba17d33d6a0bef3878b35561e475f9 --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

