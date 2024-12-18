# PRV_KEY for master sender 0x65889Cd9F8C401F5b210fd19A43c39Cf7b5B51C6
PRV_KEY=1d75786b9dfd9d278d58c99983cb4a40db5c6b8cc09a282f371cde6eb09edee7
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_9b (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_90Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_9b] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x1C8406c605dC96Ccb1566981cf5cA49822207061) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x1C8406c605dC96Ccb1566981cf5cA49822207061 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_9b] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_9b] Creating receiver 0x7e57c0de0000000000000000000000000000009b with code and balance 72057594037927936..."
ADDR_7E57C0DE0000000000000000000000000000009B=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 630000002c6012600039630000002c6000F36010600f600e600d600c600b600a60096008600760066005600460036002600160FF9b600c14602a57FD5B00 | jq -r .contractAddress)
echo $ADDR_7E57C0DE0000000000000000000000000000009B

echo "[testOpcode_9b] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de0000000000000000000000000000009b62989680f1609b5500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_9b] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_9b] Processing transaction number 1527 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x1C8406c605dC96Ccb1566981cf5cA49822207061) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 4f36ac43727d5206d7452be0817931638f87e12ab2be1cf303cdf1fa4f2ff12c --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

