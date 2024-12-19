# PRV_KEY for master sender 0x4bA023A7a3A15FFf6B120EecAE980a5e4fA1ecA2
PRV_KEY=16c924854c68bcde8a2a65853904c3aa03ddceb7f1f0335a29728c497279d973
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_0a (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_00Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_0a] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xf6A91CfE0Cb9f2054cCE1c85265B7F9E7ec52fb8) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xf6A91CfE0Cb9f2054cCE1c85265B7F9E7ec52fb8 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_0a] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_0a] Creating receiver 0x7e57c0de0000000000000000000000000000000a with code and balance 72057594037927936..."
ADDR_7E57C0DE0000000000000000000000000000000A=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 630000000e6012600039630000000e6000F3600260030a600914600C57FD5B00 | jq -r .contractAddress)
echo $ADDR_7E57C0DE0000000000000000000000000000000A

echo "[testOpcode_0a] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de0000000000000000000000000000000a62989680f1600a5500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_0a] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_0a] Processing transaction number 1462 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xf6A91CfE0Cb9f2054cCE1c85265B7F9E7ec52fb8) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 0f046e657c3acc81eefc32bb48f595e53a0c3893e74f1ba540c111ccf40e8cdc --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

