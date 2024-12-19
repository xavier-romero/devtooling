# PRV_KEY for master sender 0x5BC7D2066d8E832D3814c79D0be12B0De28D6d4B
PRV_KEY=ec35ec7a62569d58aba2b4fc4db8133aafa0ae4daca3e8ef4e7b6ec4fbbe4662
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_03 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_00Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_03] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8eb33E0e7a523A5326aEc64f3CDb45a3f15a9F49) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x8eb33E0e7a523A5326aEc64f3CDb45a3f15a9F49 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_03] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_03] Creating receiver 0x7e57c0de00000000000000000000000000000003 with code and balance 72057594037927936..."
ADDR_7E57C0DE00000000000000000000000000000003=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 630000000e6012600039630000000e6000F36008601003600814600C57FD5B00 | jq -r .contractAddress)
echo $ADDR_7E57C0DE00000000000000000000000000000003

echo "[testOpcode_03] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de0000000000000000000000000000000362989680f160035500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_03] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_03] Processing transaction number 1455 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8eb33E0e7a523A5326aEc64f3CDb45a3f15a9F49) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 16c7f23bc326b3f8cf4bae8dee13c78fc8ae4112a864dbe1e87cd52de4697172 --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

