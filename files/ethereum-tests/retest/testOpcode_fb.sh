# PRV_KEY for master sender 0x53040d1cB6Cc61F8a74Ceb47cf8880d38466bd1F
PRV_KEY=ff13698bad6e705d545f90105f987689ccd002e5a8660ed146d2976d6de2d49a
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_fb (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_f0Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_fb] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xae878A4a9cD1a846EF471435c15cEddAe9BAFFb4) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xae878A4a9cD1a846EF471435c15cEddAe9BAFFb4 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_fb] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_fb] Creating receiver 0x7e57c0de000000000000000000000000000000fb with code and balance 72057594037927936..."
ADDR_7E57C0DE000000000000000000000000000000FB=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000010601260003963000000106000F36001600160016001600160016001fb00 | jq -r .contractAddress)
echo $ADDR_7E57C0DE000000000000000000000000000000FB

echo "[testOpcode_fb] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de000000000000000000000000000000fb62989680f160fb5500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_fb] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_fb] Processing transaction number 1575 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xae878A4a9cD1a846EF471435c15cEddAe9BAFFb4) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 509ea321931a248fbfc47210c9cdb2cd86314322fb35c94ae63f914abd110cc6 --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi
