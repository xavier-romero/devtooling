# PRV_KEY for master sender 0x0E3b596f7E57e256581fb217BF5228eE12b1eA4B
PRV_KEY=268e04a22dcd208be1b6bd7f3dd93f1b3a4d2d6098f4e4fc141c16351a7c0107
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_8a (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_80Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_8a] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x7a5339df4dF48c64d076fFD546D82e96E9aE1DE3) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x7a5339df4dF48c64d076fFD546D82e96E9aE1DE3 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_8a] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_8a] Creating receiver 0x7e57c0de0000000000000000000000000000008a with code and balance 72057594037927936..."
ADDR_7E57C0DE0000000000000000000000000000008A=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 630000002a6012600039630000002a6000F36010600f600e600d600c600b600a6009600860076006600560046003600260018a600b14602857FD5B00 | jq -r .contractAddress)
echo $ADDR_7E57C0DE0000000000000000000000000000008A

echo "[testOpcode_8a] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de0000000000000000000000000000008a62989680f1608a5500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_8a] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_8a] Processing transaction number 1712 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x7a5339df4dF48c64d076fFD546D82e96E9aE1DE3) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 49cecb13d4fa5bc429c8afb3a6c8d14e6eefa608ca23d341a8486aa3c38702c9 --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi
