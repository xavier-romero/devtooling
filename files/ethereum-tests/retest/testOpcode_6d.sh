# PRV_KEY for master sender 0xD497aeF18914A7d299dF696006Af44CE7BB9FE20
PRV_KEY=5c8edec65ad6a5377ab6adbb21e5d76dc424d02f45f6c00cf094315c0df82c8f
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_6d (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_60Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_6d] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xFb28B40646F89173fe2bf871Ee2f421bfD4f0De3) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xFb28B40646F89173fe2bf871Ee2f421bfD4f0De3 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_6d] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_6d] Creating receiver 0x7e57c0de0000000000000000000000000000006d with code and balance 72057594037927936..."
ADDR_7E57C0DE0000000000000000000000000000006D=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000018601260003963000000186000F36d00000000000000000000000000FF60FF14601657FD5B00 | jq -r .contractAddress)
echo $ADDR_7E57C0DE0000000000000000000000000000006D

echo "[testOpcode_6d] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de0000000000000000000000000000006d62989680f1606d5500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_6d] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_6d] Processing transaction number 1513 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xFb28B40646F89173fe2bf871Ee2f421bfD4f0De3) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key eff2d2e34ee660d5b2e412ea7e9b7d6ddb8e5fc76f60545058d0fea117872769 --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

