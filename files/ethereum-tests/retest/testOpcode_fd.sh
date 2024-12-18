# PRV_KEY for master sender 0x4C8686561e509E2B669C8F862Ef461e984eA72b1
PRV_KEY=87b2423753d8862cc375da504ec8ac34fc8017735597899c2eaf51aa3cf28d7f
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_fd (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_f0Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_fd] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8Ace6d1e2e5B41d12880441405E5b302ccec7263) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x8Ace6d1e2e5B41d12880441405E5b302ccec7263 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_fd] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_fd] Creating receiver 0x7e57c0de000000000000000000000000000000fd with code and balance 72057594037927936..."
ADDR_7E57C0DE000000000000000000000000000000FD=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000001601260003963000000016000F3FD | jq -r .contractAddress)
echo $ADDR_7E57C0DE000000000000000000000000000000FD

echo "[testOpcode_fd] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de000000000000000000000000000000fd62989680f160fd5500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_fd] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_fd] Processing transaction number 1577 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8Ace6d1e2e5B41d12880441405E5b302ccec7263) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 4cde8d0b03e12df4749f348b6e06ddc42fd077760b439ddbf27c08943f7e3a7d --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

