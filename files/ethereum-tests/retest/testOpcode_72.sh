# PRV_KEY for master sender 0x2C2033793cbEf9e689E96ed7B1401A2B81446DB3
PRV_KEY=84ed71f963c259fbc1a80dca9eb1c46b3ecbe6bfc73908bef743405514a3f91d
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_72 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_70Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_72] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xB3e9de706Bc6De4Ff62585E402254dc03FD5e509) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xB3e9de706Bc6De4Ff62585E402254dc03FD5e509 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_72] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_72] Creating receiver 0x7e57c0de00000000000000000000000000000072 with code and balance 72057594037927936..."
ADDR_7E57C0DE00000000000000000000000000000072=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 630000001d6012600039630000001d6000F372000000000000000000000000000000000000FF60FF14601b57FD5B00 | jq -r .contractAddress)
echo $ADDR_7E57C0DE00000000000000000000000000000072

echo "[testOpcode_72] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de0000000000000000000000000000007262989680f160725500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_72] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_72] Processing transaction number 1680 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xB3e9de706Bc6De4Ff62585E402254dc03FD5e509) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 335094b16298a20626e3b2f50fffe6943a3458996836aa224fb0d62c6e4cee14 --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi
