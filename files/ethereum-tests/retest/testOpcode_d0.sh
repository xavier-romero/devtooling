# PRV_KEY for master sender 0xD474DcE8ccB3fC2Ab59A1aAE4798C8e322352E8e
PRV_KEY=f7475bd0f3d85904a96f1ad8c7ed5e8527e8a614a54681dbb64d536aa1b9310b
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_d0 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_d0Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_d0] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xdaE980BE917a31666De08Ea25597e2f9447159bd) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xdaE980BE917a31666De08Ea25597e2f9447159bd | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_d0] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_d0] Creating receiver 0x7e57c0de000000000000000000000000000000d0 with code and balance 72057594037927936..."
ADDR_7E57C0DE000000000000000000000000000000D0=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000010601260003963000000106000F36001600160016001600160016001d000 | jq -r .contractAddress)
echo $ADDR_7E57C0DE000000000000000000000000000000D0

echo "[testOpcode_d0] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de000000000000000000000000000000d062989680f160d05500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_d0] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_d0] Processing transaction number 1734 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xdaE980BE917a31666De08Ea25597e2f9447159bd) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d3e0c71ffa1979710123eb55f0981efd0b5e542cb8fd88c2e5b98e3b6c2ad8df --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

