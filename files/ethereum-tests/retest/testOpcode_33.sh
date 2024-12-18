# PRV_KEY for master sender 0x464e19a94E5347e58a0D0c6300D64E322313f4f2
PRV_KEY=d5bdf66b089a5b75b3a2307089defc7939533bdb3451c46893ab2c82f8f6f605
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_33 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_30Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_33] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x067A93D8F51E6fE7B5068D5c8a1146264633a660) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x067A93D8F51E6fE7B5068D5c8a1146264633a660 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_33] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_33] Creating receiver 0x7e57c0de00000000000000000000000000000033 with code and balance 72057594037927936..."
ADDR_7E57C0DE00000000000000000000000000000033=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 630000001d6012600039630000001d6000F373B1607E57000000000000000000000000000000003314601B57FD5B00 | jq -r .contractAddress)
echo $ADDR_7E57C0DE00000000000000000000000000000033

echo "[testOpcode_33] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de0000000000000000000000000000003362989680f160335500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_33] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_33] Processing transaction number 1471 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x067A93D8F51E6fE7B5068D5c8a1146264633a660) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key a3c3f88f53b3158caa4fcb057bc26d234c1af11cf0f6433939d21798062c22f0 --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

