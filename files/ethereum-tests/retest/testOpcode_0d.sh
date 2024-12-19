# PRV_KEY for master sender 0x7453Ce2fC4441b270DAb62945Ef1ff4E97B3c7bd
PRV_KEY=5372f5bde01ae6263b22b4b17783f8eb731fae1848448fd21b770c011c233001
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test testOpcode_0d (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/testOpcode_00Filler.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[testOpcode_0d] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xcbca3675F324926C5f74C88d46B21ad2c8e4eBcb) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xcbca3675F324926C5f74C88d46B21ad2c8e4eBcb | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[testOpcode_0d] Creating receiver 0x00000000000000000000000000000000000000ff with code and balance 153..."
ADDR_00000000000000000000000000000000000000FF=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 153 --create 6300000003601260003963000000036000F36000FF | jq -r .contractAddress)
echo $ADDR_00000000000000000000000000000000000000FF

echo "[testOpcode_0d] Creating receiver 0x7e57c0de0000000000000000000000000000000d with code and balance 72057594037927936..."
ADDR_7E57C0DE0000000000000000000000000000000D=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000010601260003963000000106000F360016001600160016001600160010d00 | jq -r .contractAddress)
echo $ADDR_7E57C0DE0000000000000000000000000000000D

echo "[testOpcode_0d] Creating receiver 0xb1607e5700000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_B1607E5700000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000032601260003963000000326000F360ba601e5360d0601f5360006000602060006000737e57c0de0000000000000000000000000000000d62989680f1600d5500 | jq -r .contractAddress)
echo $ADDR_B1607E5700000000000000000000000000000000

echo "[testOpcode_0d] Creating receiver 0xca11ed0000000000000000000000000000000000 with code and balance 72057594037927936..."
ADDR_CA11ED0000000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 72057594037927936 --create 6300000020601260003963000000206000F360de60105360ad60115360be60125360ef601353610dad610dad5560046010F3 | jq -r .contractAddress)
echo $ADDR_CA11ED0000000000000000000000000000000000

echo "[testOpcode_0d] Processing transaction number 1465 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xcbca3675F324926C5f74C88d46B21ad2c8e4eBcb) to 0xb1607e5700000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ed8c3b4b3dfecbad02fddf1d605d7d68083e95b224132213f07e07b834b9bb19 --timeout 20 --value 0 $ADDR_B1607E5700000000000000000000000000000000 0xFF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

