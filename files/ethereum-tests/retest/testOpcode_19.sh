# PRV_KEY for master sender 0xA4ceA321629EDBf1562a8d22Af5ad98598e3fFe6
PRV_KEY=5d81ef2a71c64df4013f328ecf04cd8e51d7abccb541b45a7ea225f1e59dc5e6
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_19 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_10Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_19] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x2cEcfE45EBf4262bbC5f5029127434206b967f6d) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x2cEcfE45EBf4262bbC5f5029127434206b967f6d | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_19] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_19] Creating receiver 0x7e57c0de00000000000000000000000000000019 with code and balance 72057594037927936..."
ADDR_7E57C0DE00000000000000000000000000000019=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 630000000f6012600039630000000f6000F360FF60000B19600114600E57005BFD | jq -r .contractAddress)
echo $ADDR_7E57C0DE00000000000000000000000000000019

echo "[testOpcode_19] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de0000000000000000000000000000001962989680f160195500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_19] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_19] Processing transaction number 1557 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x2cEcfE45EBf4262bbC5f5029127434206b967f6d) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key c78b7457b2f332f6e173c9b027e6b3f2b2a3582bbd8498e342921e54029e9299 --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi
