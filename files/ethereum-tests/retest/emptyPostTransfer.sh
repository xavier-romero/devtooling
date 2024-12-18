# PRV_KEY for master sender 0x934FB220b81F07b5F5E1d9436F2D9f852E734295
PRV_KEY=a700a7b37ffd19a55dba8644b6f3712d2bd6ce1e7f5ff52b20d925fccdac5708
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test emptyPostTransfer (src/BlockchainTestsFiller/ValidBlocks/bcValidBlockTest/emptyPostTransferFiller.yml)"

AMOUNT=$((2*150000*6*$GAS_PRICE+0))
echo "[emptyPostTransfer] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x5b835BCEd0dc49Ea8e9d92D0ba91ccd149eb8E1B) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x5b835BCEd0dc49Ea8e9d92D0ba91ccd149eb8E1B | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[emptyPostTransfer] Creating receiver 0xcccccccccccccccccccccccccccccccccccccccc with code and balance 195144142..."
ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 195144142 --create 6160a76001556160a76002556160a76003556160a76004556160a7610101556160a7610102556160a7610103556160a7610104556300000010604660003963000000106000F361ba5e31435561ba5e3f436101000155 | jq -r .contractAddress)
echo $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

echo "[emptyPostTransfer] Creating receiver 0x000000000000000000000000000000000000dead with code and balance 0..."
ADDR_000000000000000000000000000000000000DEAD=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6300000004601260003963000000046000F361ba5eff | jq -r .contractAddress)
echo $ADDR_000000000000000000000000000000000000DEAD

echo "[emptyPostTransfer] Processing transaction number 1432 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x5b835BCEd0dc49Ea8e9d92D0ba91ccd149eb8E1B) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 6eb932487bcc77be24503100e5f3ffa618088424c7356cb84c1d9bce9393c9e8 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[emptyPostTransfer] Processing transaction number 1433 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x5b835BCEd0dc49Ea8e9d92D0ba91ccd149eb8E1B) to 0x000000000000000000000000000000000000ba5e"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 6eb932487bcc77be24503100e5f3ffa618088424c7356cb84c1d9bce9393c9e8 --timeout 20 --value 0 0x000000000000000000000000000000000000ba5e | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[emptyPostTransfer] Processing transaction number 1434 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x5b835BCEd0dc49Ea8e9d92D0ba91ccd149eb8E1B) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 6eb932487bcc77be24503100e5f3ffa618088424c7356cb84c1d9bce9393c9e8 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[emptyPostTransfer] Processing transaction number 1435 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x5b835BCEd0dc49Ea8e9d92D0ba91ccd149eb8E1B) to 0x000000000000000000000000000000000000dead"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 6eb932487bcc77be24503100e5f3ffa618088424c7356cb84c1d9bce9393c9e8 --timeout 20 --value 0 $ADDR_000000000000000000000000000000000000DEAD | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[emptyPostTransfer] Processing transaction number 1436 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x5b835BCEd0dc49Ea8e9d92D0ba91ccd149eb8E1B) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 6eb932487bcc77be24503100e5f3ffa618088424c7356cb84c1d9bce9393c9e8 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[emptyPostTransfer] Processing transaction number 1437 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x5b835BCEd0dc49Ea8e9d92D0ba91ccd149eb8E1B) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 6eb932487bcc77be24503100e5f3ffa618088424c7356cb84c1d9bce9393c9e8 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

