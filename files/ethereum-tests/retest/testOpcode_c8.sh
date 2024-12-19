# PRV_KEY for master sender 0x62c61895AC7204cC220255D9722bE408fDB9e486
PRV_KEY=06de0ef9bec97d011d118d97f7c5f23bb03be3681fadde13851ce4ebfb7dfb07
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_c8 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_c0Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_c8] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD5a13750b7095Cb93dF195bc1046E97EC44A3DD1) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xD5a13750b7095Cb93dF195bc1046E97EC44A3DD1 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_c8] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_c8] Creating receiver 0x7e57c0de000000000000000000000000000000c8 with code and balance 72057594037927936..."
ADDR_7E57C0DE000000000000000000000000000000C8=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000010601260003963000000106000F36001600160016001600160016001c800 | jq -r .contractAddress)
echo $ADDR_7E57C0DE000000000000000000000000000000C8

echo "[testOpcode_c8] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de000000000000000000000000000000c862989680f160c85500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_c8] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_c8] Processing transaction number 1626 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD5a13750b7095Cb93dF195bc1046E97EC44A3DD1) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 3ebd7da34fa6261c8a1243c86661453ddca86eca6ca8a929091c4735abe2cafc --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

