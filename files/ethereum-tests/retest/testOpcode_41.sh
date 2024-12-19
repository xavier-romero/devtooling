# PRV_KEY for master sender 0x2e5bA5AaA36F691fAC6977f343A64c0661E9bF7c
PRV_KEY=fdb27d7200b867060c8aecdd7c83bad2aa492df7b6e97ba6a3362b52ab43baf3
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_41 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_40Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_41] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xEaE0F3246b4cB831936d71cca62678f9Af2D4D48) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xEaE0F3246b4cB831936d71cca62678f9Af2D4D48 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_41] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_41] Creating receiver 0x7e57c0de00000000000000000000000000000041 with code and balance 72057594037927936..."
ADDR_7E57C0DE00000000000000000000000000000041=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 630000001d6012600039630000001d6000F3732adc25665018aa1fe0e6bc666dac8fc2697ff9ba4114601B57FD5B00 | jq -r .contractAddress)
echo $ADDR_7E57C0DE00000000000000000000000000000041

echo "[testOpcode_41] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de0000000000000000000000000000004162989680f160415500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_41] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_41] Processing transaction number 1533 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xEaE0F3246b4cB831936d71cca62678f9Af2D4D48) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 8a80e333b25c81930ae522f35fcf95c072ce25d2876ca66adfb00d86afe57816 --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

