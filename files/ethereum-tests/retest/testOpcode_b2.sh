# PRV_KEY for master sender 0x6Cc0afAD951AAc3c948bBe5b66cE8F5446225De6
PRV_KEY=7fa3f7b88f1a4b7f58f8294c0b7ec583dc6492d419458547d5fa853989615026
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_b2 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_b0Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_b2] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x12f80b5CBdd77Fef1Db1757d8f8e05BD84ef8AfF) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x12f80b5CBdd77Fef1Db1757d8f8e05BD84ef8AfF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_b2] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_b2] Creating receiver 0x7e57c0de000000000000000000000000000000b2 with code and balance 72057594037927936..."
ADDR_7E57C0DE000000000000000000000000000000B2=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000010601260003963000000106000F36001600160016001600160016001b200 | jq -r .contractAddress)
echo $ADDR_7E57C0DE000000000000000000000000000000B2

echo "[testOpcode_b2] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de000000000000000000000000000000b262989680f160b25500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_b2] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_b2] Processing transaction number 1486 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x12f80b5CBdd77Fef1Db1757d8f8e05BD84ef8AfF) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 55b6d5c0009e7d8f325d780ecf94b82521f72d7c7954980749dfdd4301c317bb --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi
