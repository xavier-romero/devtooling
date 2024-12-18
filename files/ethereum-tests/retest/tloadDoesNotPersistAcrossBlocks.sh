# PRV_KEY for master sender 0xed0E80b60afA8966638928c780212c207266B3d6
PRV_KEY=430dbc0483fc1e5c84fd7b0a359d7c5929ed158ac3ddbe5e0dcca425c7b8efc1
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test tloadDoesNotPersistAcrossBlocks (src/BlockchainTestsFiller/ValidBlocks/bcEIP1153-transientStorage/tloadDoesNotPersistAcrossBlocksFiller.yml)"

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[tloadDoesNotPersistAcrossBlocks] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x1f457647DDDd3163D3eee3d3F17105755FD843f2) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x1f457647DDDd3163D3eee3d3F17105755FD843f2 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[tloadDoesNotPersistAcrossBlocks] Creating receiver 0xa00000000000000000000000000000000000000a with code and balance 4722366482869645213696..."
ADDR_A00000000000000000000000000000000000000A=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 4722366482869645213696 --create 61ffff600155630000005b6018600039630000005b6000F36005604c565b630accf7398114601d576343ac1c398114602757602e565b60236033565b602e565b602d6042565b5b50605a565b605a60005d60005c8060005550565b60005c8060015550565b600080358060e01c91505090565b | jq -r .contractAddress)
echo $ADDR_A00000000000000000000000000000000000000A

echo "[tloadDoesNotPersistAcrossBlocks] Processing transaction number 1761 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x1f457647DDDd3163D3eee3d3F17105755FD843f2) to 0xa00000000000000000000000000000000000000a"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 9047f1b6cf1a359ecaa55c4e6d7bfbf428eff7d6903daf106c7c0f33be129a7b --timeout 20 --value 0 $ADDR_A00000000000000000000000000000000000000A 0accf739 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[tloadDoesNotPersistAcrossBlocks] Processing transaction number 1762 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x1f457647DDDd3163D3eee3d3F17105755FD843f2) to 0xa00000000000000000000000000000000000000a"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 9047f1b6cf1a359ecaa55c4e6d7bfbf428eff7d6903daf106c7c0f33be129a7b --timeout 20 --value 0 $ADDR_A00000000000000000000000000000000000000A 43ac1c39 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

