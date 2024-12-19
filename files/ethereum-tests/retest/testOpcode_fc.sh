# PRV_KEY for master sender 0x325db4e67f9eEEe90078E04531b3BA84722c2373
PRV_KEY=109c117d02a858750935160add91e12247ff72c3608fcc7c877d4b99bc061ac7
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_fc (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_f0Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_fc] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xDB60FCb59d2D1f44EDbDd28cC93a271A9A4d2Fc9) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xDB60FCb59d2D1f44EDbDd28cC93a271A9A4d2Fc9 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_fc] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_fc] Creating receiver 0x7e57c0de000000000000000000000000000000fc with code and balance 72057594037927936..."
ADDR_7E57C0DE000000000000000000000000000000FC=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000010601260003963000000106000F36001600160016001600160016001fc00 | jq -r .contractAddress)
echo $ADDR_7E57C0DE000000000000000000000000000000FC

echo "[testOpcode_fc] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de000000000000000000000000000000fc62989680f160fc5500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_fc] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_fc] Processing transaction number 1576 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xDB60FCb59d2D1f44EDbDd28cC93a271A9A4d2Fc9) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 311ce7fc88ada48580b8df48d68c2fe6917c9d70b40f3795d5c3635d81a256e5 --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

