# PRV_KEY for master sender 0x88434d07C805BD1Fd554fb9E3107bB0b003BE15d
PRV_KEY=287892b580f8adc62ef33a794ab627a4c830e4ecdd18b756ddb6e5de05b5bdd2
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_89 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_80Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_89] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x52AFA8F471649EC78ef646feAead90cB2932b659) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x52AFA8F471649EC78ef646feAead90cB2932b659 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_89] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_89] Creating receiver 0x7e57c0de00000000000000000000000000000089 with code and balance 72057594037927936..."
ADDR_7E57C0DE00000000000000000000000000000089=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 630000002a6012600039630000002a6000F36010600f600e600d600c600b600a60096008600760066005600460036002600189600a14602857FD5B00 | jq -r .contractAddress)
echo $ADDR_7E57C0DE00000000000000000000000000000089

echo "[testOpcode_89] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de0000000000000000000000000000008962989680f160895500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_89] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_89] Processing transaction number 1711 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x52AFA8F471649EC78ef646feAead90cB2932b659) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key e2e737ae590fe459f65608b6d32c42b571143f0af91b5d0fc3ec373d153f156a --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi
