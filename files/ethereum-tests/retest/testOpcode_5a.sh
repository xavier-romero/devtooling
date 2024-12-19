# PRV_KEY for master sender 0xE6741376bCD77F01e3Fee740Ad8e714D643c279d
PRV_KEY=c55f5e4039f2ccdcdafc1a56cb3d7954b74cb8295d250887dd3567b07a05e7f4
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_5a (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_50Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_5a] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xBEB4739bA94a130b311aD83d244ecb76382eFb5b) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xBEB4739bA94a130b311aD83d244ecb76382eFb5b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_5a] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_5a] Creating receiver 0x7e57c0de0000000000000000000000000000005a with code and balance 72057594037927936..."
ADDR_7E57C0DE0000000000000000000000000000005A=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000009601260003963000000096000F35A5A14600757005BFD | jq -r .contractAddress)
echo $ADDR_7E57C0DE0000000000000000000000000000005A

echo "[testOpcode_5a] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de0000000000000000000000000000005a62989680f1605a5500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_5a] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_5a] Processing transaction number 1592 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xBEB4739bA94a130b311aD83d244ecb76382eFb5b) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 95ae154b42e4869aedca7cddf6a625a150248a95f28b666fa476dcd830326071 --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

