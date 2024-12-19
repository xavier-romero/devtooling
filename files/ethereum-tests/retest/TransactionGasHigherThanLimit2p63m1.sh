# PRV_KEY for master sender 0xe467D362AC048A361ACb6df62a56adE58b14e093
PRV_KEY=bc62081a47f7d7c23630050265a091805867438caff490334c341ff7a211c6bc
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test TransactionGasHigherThanLimit2p63m1 (src/BlockchainTestsFiller/ValidBlocks/bcBlockGasLimitTest/TransactionGasHigherThanLimit2p63m1Filler.json)"

AMOUNT=$((2*150000*7*$GAS_PRICE+70))
echo "[TransactionGasHigherThanLimit2p63m1] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x39ab333843Cbbc86b1b47c1B4A6da296CE8590b3) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x39ab333843Cbbc86b1b47c1B4A6da296CE8590b3 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[TransactionGasHigherThanLimit2p63m1] Processing transaction number 792 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x39ab333843Cbbc86b1b47c1B4A6da296CE8590b3) to 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key aedcceefcfc455748875d915d29e43df290bea29c6bece1a9f2d5dcc9fd5b939 --timeout 20 --value 10 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[TransactionGasHigherThanLimit2p63m1] Processing transaction number 793 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x39ab333843Cbbc86b1b47c1B4A6da296CE8590b3) to 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key aedcceefcfc455748875d915d29e43df290bea29c6bece1a9f2d5dcc9fd5b939 --timeout 20 --value 10 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[TransactionGasHigherThanLimit2p63m1] Processing transaction number 794 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x39ab333843Cbbc86b1b47c1B4A6da296CE8590b3) to 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key aedcceefcfc455748875d915d29e43df290bea29c6bece1a9f2d5dcc9fd5b939 --timeout 20 --value 10 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[TransactionGasHigherThanLimit2p63m1] Processing transaction number 795 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x39ab333843Cbbc86b1b47c1B4A6da296CE8590b3) to 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key aedcceefcfc455748875d915d29e43df290bea29c6bece1a9f2d5dcc9fd5b939 --timeout 20 --value 10 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[TransactionGasHigherThanLimit2p63m1] Processing transaction number 796 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x39ab333843Cbbc86b1b47c1B4A6da296CE8590b3) to 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key aedcceefcfc455748875d915d29e43df290bea29c6bece1a9f2d5dcc9fd5b939 --timeout 20 --value 10 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[TransactionGasHigherThanLimit2p63m1] Processing transaction number 797 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x39ab333843Cbbc86b1b47c1B4A6da296CE8590b3) to 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key aedcceefcfc455748875d915d29e43df290bea29c6bece1a9f2d5dcc9fd5b939 --timeout 20 --value 10 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[TransactionGasHigherThanLimit2p63m1] Processing transaction number 798 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x39ab333843Cbbc86b1b47c1B4A6da296CE8590b3) to 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key aedcceefcfc455748875d915d29e43df290bea29c6bece1a9f2d5dcc9fd5b939 --timeout 20 --value 10 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

