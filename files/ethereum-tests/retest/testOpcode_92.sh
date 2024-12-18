# PRV_KEY for master sender 0xb5558947E5e2DBC1194C58a98B64f9004C18Cdbf
PRV_KEY=67157273d8c8f7813c105de588c449e7b67bbe9fec6bb57b233dc05bdf2fcdf1
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_92 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_90Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_92] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x73603b6B38b999f2C80633C41cc6402ae2E0D79d) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x73603b6B38b999f2C80633C41cc6402ae2E0D79d | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_92] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_92] Creating receiver 0x7e57c0de00000000000000000000000000000092 with code and balance 72057594037927936..."
ADDR_7E57C0DE00000000000000000000000000000092=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 630000002c6012600039630000002c6000F36010600f600e600d600c600b600a60096008600760066005600460036002600160FF92600314602a57FD5B00 | jq -r .contractAddress)
echo $ADDR_7E57C0DE00000000000000000000000000000092

echo "[testOpcode_92] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de0000000000000000000000000000009262989680f160925500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_92] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_92] Processing transaction number 1518 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x73603b6B38b999f2C80633C41cc6402ae2E0D79d) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key cc4a31dada48bb92bceadc3c6876173e35efa9bdf23bd643b65f9e585a7abd67 --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

