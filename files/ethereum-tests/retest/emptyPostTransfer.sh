# PRV_KEY for master sender 0x710530C91CEA0133ceFE2917117810e85C1C2Ce6
PRV_KEY=b1caf69feba23e157a72be955fbbced2221fbe542706011e91a2ec708a75075d
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test emptyPostTransfer (src/BlockchainTestsFiller/ValidBlocks/bcValidBlockTest/emptyPostTransferFiller.yml)"

AMOUNT=$((2*150000*6*$GAS_PRICE+0))
echo "[emptyPostTransfer] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xb54F8d549bbdCfd1FD97FBF029d7749aa4Ebe317) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xb54F8d549bbdCfd1FD97FBF029d7749aa4Ebe317 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[emptyPostTransfer] Creating receiver 0xcccccccccccccccccccccccccccccccccccccccc with code and balance 195144142..."
ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 195144142 --create 6160a76001556160a76002556160a76003556160a76004556160a7610101556160a7610102556160a7610103556160a7610104556300000010604660003963000000106000F361ba5e31435561ba5e3f436101000155 | jq -r .contractAddress)
echo $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

echo "[emptyPostTransfer] Creating receiver 0x000000000000000000000000000000000000dead with code and balance 0..."
ADDR_000000000000000000000000000000000000DEAD=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6300000004601260003963000000046000F361ba5eff | jq -r .contractAddress)
echo $ADDR_000000000000000000000000000000000000DEAD

echo "[emptyPostTransfer] Processing transaction number 1432 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xb54F8d549bbdCfd1FD97FBF029d7749aa4Ebe317) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 622f22d65f3b11dc6995b0260c26ac3a7d69e31190124252522626f51339905e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[emptyPostTransfer] Processing transaction number 1433 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xb54F8d549bbdCfd1FD97FBF029d7749aa4Ebe317) to 0x000000000000000000000000000000000000ba5e"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 622f22d65f3b11dc6995b0260c26ac3a7d69e31190124252522626f51339905e --timeout 20 --value 0 0x000000000000000000000000000000000000ba5e | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[emptyPostTransfer] Processing transaction number 1434 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xb54F8d549bbdCfd1FD97FBF029d7749aa4Ebe317) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 622f22d65f3b11dc6995b0260c26ac3a7d69e31190124252522626f51339905e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[emptyPostTransfer] Processing transaction number 1435 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xb54F8d549bbdCfd1FD97FBF029d7749aa4Ebe317) to 0x000000000000000000000000000000000000dead"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 622f22d65f3b11dc6995b0260c26ac3a7d69e31190124252522626f51339905e --timeout 20 --value 0 $ADDR_000000000000000000000000000000000000DEAD | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[emptyPostTransfer] Processing transaction number 1436 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xb54F8d549bbdCfd1FD97FBF029d7749aa4Ebe317) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 622f22d65f3b11dc6995b0260c26ac3a7d69e31190124252522626f51339905e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[emptyPostTransfer] Processing transaction number 1437 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xb54F8d549bbdCfd1FD97FBF029d7749aa4Ebe317) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 622f22d65f3b11dc6995b0260c26ac3a7d69e31190124252522626f51339905e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

