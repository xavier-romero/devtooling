# PRV_KEY for master sender 0xc7A4610eD17F29E45e614b98159e3E9c9268FbF5
PRV_KEY=3059b329a0aebf543fa177cfedf38845357656de6f873d5809d9f9e826b667c7
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_db (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_d0Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_db] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x6B509BFda1914b6428eaf5d2bb798754A275a2B2) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x6B509BFda1914b6428eaf5d2bb798754A275a2B2 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_db] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_db] Creating receiver 0x7e57c0de000000000000000000000000000000db with code and balance 72057594037927936..."
ADDR_7E57C0DE000000000000000000000000000000DB=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000010601260003963000000106000F36001600160016001600160016001db00 | jq -r .contractAddress)
echo $ADDR_7E57C0DE000000000000000000000000000000DB

echo "[testOpcode_db] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de000000000000000000000000000000db62989680f160db5500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_db] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_db] Processing transaction number 1745 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x6B509BFda1914b6428eaf5d2bb798754A275a2B2) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 77f4a29c67d8d56012b5bfdb6e93c627f0e66ad0a0b3d1787f1b5f2e4853d2e5 --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

