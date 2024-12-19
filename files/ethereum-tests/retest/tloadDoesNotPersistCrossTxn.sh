# PRV_KEY for master sender 0x48eA96129Abfc804293dE6Ab2d112a5A9e7377E9
PRV_KEY=dafe54f77834c5a77486a357d7c69633534e9a0c77e248ae299d452678e26dcc
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test tloadDoesNotPersistCrossTxn (src/BlockchainTestsFiller/ValidBlocks/bcEIP1153-transientStorage/tloadDoesNotPersistCrossTxnFiller.yml)"

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[tloadDoesNotPersistCrossTxn] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x1FdEE1301F865f61416fc489C1B8Fa7f48c605b5) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x1FdEE1301F865f61416fc489C1B8Fa7f48c605b5 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[tloadDoesNotPersistCrossTxn] Creating receiver 0xa00000000000000000000000000000000000000a with code and balance 4722366482869645213696..."
ADDR_A00000000000000000000000000000000000000A=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 4722366482869645213696 --create 61ffff600155630000005b6018600039630000005b6000F36005604c565b630accf7398114601d576343ac1c398114602757602e565b60236033565b602e565b602d6042565b5b50605a565b605a60005d60005c8060005550565b60005c8060015550565b600080358060e01c91505090565b | jq -r .contractAddress)
echo $ADDR_A00000000000000000000000000000000000000A

echo "[tloadDoesNotPersistCrossTxn] Processing transaction number 1759 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x1FdEE1301F865f61416fc489C1B8Fa7f48c605b5) to 0xa00000000000000000000000000000000000000a"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 6fe7eda8a8371e0d378539d5bc20cf37f9c3294fd88dab9678123e18b307c41c --timeout 20 --value 0 $ADDR_A00000000000000000000000000000000000000A 0accf739 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[tloadDoesNotPersistCrossTxn] Processing transaction number 1760 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x1FdEE1301F865f61416fc489C1B8Fa7f48c605b5) to 0xa00000000000000000000000000000000000000a"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 6fe7eda8a8371e0d378539d5bc20cf37f9c3294fd88dab9678123e18b307c41c --timeout 20 --value 0 $ADDR_A00000000000000000000000000000000000000A 43ac1c39 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

