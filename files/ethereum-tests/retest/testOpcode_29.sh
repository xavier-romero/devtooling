# PRV_KEY for master sender 0xa4A45307941028f7e464Eb3627092350e84B9eE2
PRV_KEY=b2ebeca901c450e81df800d7881ea1ac7634a42ec40d6b0667f1a7b919bcb1e5
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_29 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_20Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_29] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x9E54B926741b5B919aEceE16ba2bEB6ebdA144Fb) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x9E54B926741b5B919aEceE16ba2bEB6ebdA144Fb | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_29] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_29] Creating receiver 0x7e57c0de00000000000000000000000000000029 with code and balance 72057594037927936..."
ADDR_7E57C0DE00000000000000000000000000000029=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000010601260003963000000106000F360016001600160016001600160012900 | jq -r .contractAddress)
echo $ADDR_7E57C0DE00000000000000000000000000000029

echo "[testOpcode_29] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de0000000000000000000000000000002962989680f160295500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_29] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_29] Processing transaction number 1611 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x9E54B926741b5B919aEceE16ba2bEB6ebdA144Fb) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key efb538ea7a549c5187965ddc43b29df88b0701df74cebd8505fd2e217426bd9b --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi
