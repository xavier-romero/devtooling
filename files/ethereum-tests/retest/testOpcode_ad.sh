# PRV_KEY for master sender 0xe35026aeF0AC7C0cBC5Dec2Db8297f1AF0Ee51Bd
PRV_KEY=7f75f35108c0b55965bb9c9942feb83853c2aae99d88465c344899f70596f094
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_ad (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_a0Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_ad] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x5aA0B0Ff58a4eBf064a38D9706Cca3824B39d1d0) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x5aA0B0Ff58a4eBf064a38D9706Cca3824B39d1d0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_ad] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_ad] Creating receiver 0x7e57c0de000000000000000000000000000000ad with code and balance 72057594037927936..."
ADDR_7E57C0DE000000000000000000000000000000AD=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000010601260003963000000106000F36001600160016001600160016001ad00 | jq -r .contractAddress)
echo $ADDR_7E57C0DE000000000000000000000000000000AD

echo "[testOpcode_ad] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de000000000000000000000000000000ad62989680f160ad5500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_ad] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_ad] Processing transaction number 1731 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x5aA0B0Ff58a4eBf064a38D9706Cca3824B39d1d0) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 42f5f49aae57fdb1cf589b7b35ba4a351a932b939167ac9880d59d54fb0493d7 --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

