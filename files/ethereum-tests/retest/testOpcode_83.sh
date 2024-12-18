# PRV_KEY for master sender 0x132A30d1D182d06Ad899E9DC272a6888C169b2a5
PRV_KEY=d49df2ec2f0e887a42a902853aa23cb6075f4f30cd8ed92504e9178cfb24a417
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_83 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_80Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_83] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x2a2EdCa7D6f6F26718e65d0Ac2E18796A23F755f) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x2a2EdCa7D6f6F26718e65d0Ac2E18796A23F755f | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_83] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_83] Creating receiver 0x7e57c0de00000000000000000000000000000083 with code and balance 72057594037927936..."
ADDR_7E57C0DE00000000000000000000000000000083=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 630000002a6012600039630000002a6000F36010600f600e600d600c600b600a60096008600760066005600460036002600183600414602857FD5B00 | jq -r .contractAddress)
echo $ADDR_7E57C0DE00000000000000000000000000000083

echo "[testOpcode_83] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de0000000000000000000000000000008362989680f160835500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_83] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_83] Processing transaction number 1705 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x2a2EdCa7D6f6F26718e65d0Ac2E18796A23F755f) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 89533a0fb970b18ca4dda4d4ed922ac70a186b38a533844a96e282ed5a31181a --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

