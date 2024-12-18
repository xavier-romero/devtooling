# PRV_KEY for master sender 0x803fc2a1Cb0401A6e5A92483Dc9459c8937Eb112
PRV_KEY=cfe4075e95ebcb3ae153dfa0f2a8903ea77f8dd516732af8988799376964449b
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test tloadDoesNotPersistCrossTxn (src/BlockchainTestsFiller/ValidBlocks/bcEIP1153-transientStorage/tloadDoesNotPersistCrossTxnFiller.yml)"

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[tloadDoesNotPersistCrossTxn] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x95AF28f3231db610048891Ac77De616e7069FC64) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x95AF28f3231db610048891Ac77De616e7069FC64 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[tloadDoesNotPersistCrossTxn] Creating receiver 0xa00000000000000000000000000000000000000a with code and balance 4722366482869645213696..."
ADDR_A00000000000000000000000000000000000000A=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 4722366482869645213696 --create 61ffff600155630000005b6018600039630000005b6000F36005604c565b630accf7398114601d576343ac1c398114602757602e565b60236033565b602e565b602d6042565b5b50605a565b605a60005d60005c8060005550565b60005c8060015550565b600080358060e01c91505090565b | jq -r .contractAddress)
echo $ADDR_A00000000000000000000000000000000000000A

echo "[tloadDoesNotPersistCrossTxn] Processing transaction number 1759 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x95AF28f3231db610048891Ac77De616e7069FC64) to 0xa00000000000000000000000000000000000000a"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 0142ae125d7ab86a187e637bd9d78839eb616eb724afab995a8119ab7dbcf59e --timeout 20 --value 0 $ADDR_A00000000000000000000000000000000000000A 0accf739 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[tloadDoesNotPersistCrossTxn] Processing transaction number 1760 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x95AF28f3231db610048891Ac77De616e7069FC64) to 0xa00000000000000000000000000000000000000a"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 0142ae125d7ab86a187e637bd9d78839eb616eb724afab995a8119ab7dbcf59e --timeout 20 --value 0 $ADDR_A00000000000000000000000000000000000000A 43ac1c39 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

