# PRV_KEY for master sender 0x11A04814810aBE26973470BbEfcee4de3218baF8
PRV_KEY=0b3052ef1f843b52abfb7df0bb79058efd1cb13c1804668b3520e746181bbf32
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_36 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_30Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_36] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x16f89d5437F75976755048d2f419d4bd2e034957) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x16f89d5437F75976755048d2f419d4bd2e034957 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_36] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_36] Creating receiver 0x7e57c0de00000000000000000000000000000036 with code and balance 72057594037927936..."
ADDR_7E57C0DE00000000000000000000000000000036=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 630000000e6012600039630000000e6000F36000600036602014600C57FD5B00 | jq -r .contractAddress)
echo $ADDR_7E57C0DE00000000000000000000000000000036

echo "[testOpcode_36] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de0000000000000000000000000000003662989680f160365500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_36] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_36] Processing transaction number 1474 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x16f89d5437F75976755048d2f419d4bd2e034957) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 9b538056b662c46d9becd090f0f8fdd490a2e184f51d75935a1699b32beff2b0 --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi
