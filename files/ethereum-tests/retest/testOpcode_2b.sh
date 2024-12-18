# PRV_KEY for master sender 0x1A1bde4C30F2159BF2C5B925f21DEfA25cEC03B8
PRV_KEY=1bc0d411f40cd60232bdd12b08129f6cf76ab66f53f5f29a3880c62d24a58ecc
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_2b (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_20Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_2b] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x35721bCB8fB16895FC9fB3bBb437C08351872766) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x35721bCB8fB16895FC9fB3bBb437C08351872766 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_2b] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_2b] Creating receiver 0x7e57c0de0000000000000000000000000000002b with code and balance 72057594037927936..."
ADDR_7E57C0DE0000000000000000000000000000002B=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000010601260003963000000106000F360016001600160016001600160012b00 | jq -r .contractAddress)
echo $ADDR_7E57C0DE0000000000000000000000000000002B

echo "[testOpcode_2b] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de0000000000000000000000000000002b62989680f1602b5500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_2b] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_2b] Processing transaction number 1613 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x35721bCB8fB16895FC9fB3bBb437C08351872766) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 0649328d0387fbe77a2ff83b23cc527e08ed7c3bd661befe6748415682f934b5 --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

