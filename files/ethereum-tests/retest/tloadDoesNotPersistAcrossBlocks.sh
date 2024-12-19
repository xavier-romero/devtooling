# PRV_KEY for master sender 0xB685Dbe78A30844FA82Bf4D17f6318D5277ae25f
PRV_KEY=7a41085f0146afe3b253bfe007f0f36fe75d2bb4d5ba13c98422c0e45a51d78b
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test tloadDoesNotPersistAcrossBlocks (src/BlockchainTestsFiller/ValidBlocks/bcEIP1153-transientStorage/tloadDoesNotPersistAcrossBlocksFiller.yml)"

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[tloadDoesNotPersistAcrossBlocks] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xcFaeA07585d108a310c569f640F6864Dfa8e8adb) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xcFaeA07585d108a310c569f640F6864Dfa8e8adb | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[tloadDoesNotPersistAcrossBlocks] Creating receiver 0xa00000000000000000000000000000000000000a with code and balance 4722366482869645213696..."
ADDR_A00000000000000000000000000000000000000A=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 4722366482869645213696 --create 61ffff600155630000005b6018600039630000005b6000F36005604c565b630accf7398114601d576343ac1c398114602757602e565b60236033565b602e565b602d6042565b5b50605a565b605a60005d60005c8060005550565b60005c8060015550565b600080358060e01c91505090565b | jq -r .contractAddress)
echo $ADDR_A00000000000000000000000000000000000000A

echo "[tloadDoesNotPersistAcrossBlocks] Processing transaction number 1761 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xcFaeA07585d108a310c569f640F6864Dfa8e8adb) to 0xa00000000000000000000000000000000000000a"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key e8fd0f29931e1d5b6e77a5b6a6ca5feff8463580bbdf5ae3deaeb7674f671f24 --timeout 20 --value 0 $ADDR_A00000000000000000000000000000000000000A 0accf739 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[tloadDoesNotPersistAcrossBlocks] Processing transaction number 1762 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xcFaeA07585d108a310c569f640F6864Dfa8e8adb) to 0xa00000000000000000000000000000000000000a"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key e8fd0f29931e1d5b6e77a5b6a6ca5feff8463580bbdf5ae3deaeb7674f671f24 --timeout 20 --value 0 $ADDR_A00000000000000000000000000000000000000A 43ac1c39 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

