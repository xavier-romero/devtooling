# PRV_KEY for master sender 0xF430f1a568E702303732B6D4Cd75Be16209d824a
PRV_KEY=e26d5e78b18a6faca1ee39d9dedd4277fe8b391051933959120501408ee9103c
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_ff (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_f0Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_ff] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x337aee1338917B7f01Ae162522aeAF223fa42DAf) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x337aee1338917B7f01Ae162522aeAF223fa42DAf | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_ff] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_ff] Creating receiver 0x7e57c0de000000000000000000000000000000ff with code and balance 72057594037927936..."
ADDR_7E57C0DE000000000000000000000000000000FF=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 630000001c6012600039630000001c6000F360FF316000600060006000600060FF5AF15060FF3114601A57005BFD | jq -r .contractAddress)
echo $ADDR_7E57C0DE000000000000000000000000000000FF

echo "[testOpcode_ff] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de000000000000000000000000000000ff62989680f160ff5500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_ff] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_ff] Processing transaction number 1579 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x337aee1338917B7f01Ae162522aeAF223fa42DAf) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 302b18678cd0da616188439109ae3a83349e91a61905c75188f92dfcb7e09948 --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi
