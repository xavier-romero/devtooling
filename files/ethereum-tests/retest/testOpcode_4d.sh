# PRV_KEY for master sender 0x5b1992d012c23f50DDdcf6Bddd96F15A31a17fBb
PRV_KEY=f5cecb8b6e1423a3a422137635108a9b7b385aaae003509fd17d0286aab971b4
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_4d (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_40Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_4d] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x5F3f037731FFe83a38E500FCD0643a29BaBCDD1B) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x5F3f037731FFe83a38E500FCD0643a29BaBCDD1B | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_4d] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_4d] Creating receiver 0x7e57c0de0000000000000000000000000000004d with code and balance 72057594037927936..."
ADDR_7E57C0DE0000000000000000000000000000004D=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000010601260003963000000106000F360016001600160016001600160014d00 | jq -r .contractAddress)
echo $ADDR_7E57C0DE0000000000000000000000000000004D

echo "[testOpcode_4d] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de0000000000000000000000000000004d62989680f1604d5500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_4d] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_4d] Processing transaction number 1545 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x5F3f037731FFe83a38E500FCD0643a29BaBCDD1B) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 0e3bc2dc74bfe2b061786022aab74e3c5f330912dfb27e34cb32c1649465dc6b --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

