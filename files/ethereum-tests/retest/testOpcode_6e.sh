# PRV_KEY for master sender 0x50f2CdFA60773Ebd62F049F4187DEb1FbfeB218C
PRV_KEY=1088a2e38b6700a7b09f7539eb8928510395e6fcdfb0a0bb30e7a3f72564b7d3
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_6e (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_60Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_6e] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xC281446b7715666bC9cB783a043a2Ec631fdF0FF) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xC281446b7715666bC9cB783a043a2Ec631fdF0FF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_6e] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_6e] Creating receiver 0x7e57c0de0000000000000000000000000000006e with code and balance 72057594037927936..."
ADDR_7E57C0DE0000000000000000000000000000006E=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000019601260003963000000196000F36e0000000000000000000000000000FF60FF14601757FD5B00 | jq -r .contractAddress)
echo $ADDR_7E57C0DE0000000000000000000000000000006E

echo "[testOpcode_6e] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de0000000000000000000000000000006e62989680f1606e5500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_6e] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_6e] Processing transaction number 1514 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xC281446b7715666bC9cB783a043a2Ec631fdF0FF) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key b49fa5e83a1f66772ae319f8086df4634a8efaf1b6c67b916124afa9ecee90c8 --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi
