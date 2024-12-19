# PRV_KEY for master sender 0x6fffb51d9F7D685ecBB2a5B9cD0F9D6e53Ba9196
PRV_KEY=f844083793713710166de5bb0578fe53f96413798b67d1105cccc93f57248284
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test TransactionGasHigherThanLimit2p63m1_2 (src/BlockchainTestsFiller/ValidBlocks/bcBlockGasLimitTest/TransactionGasHigherThanLimit2p63m1_2Filler.json)"

AMOUNT=$((2*150000*6*$GAS_PRICE+60))
echo "[TransactionGasHigherThanLimit2p63m1_2] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xeDBCA895bbB9c0EAB5C4F46cEaA4Ab47760CCFa5) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xeDBCA895bbB9c0EAB5C4F46cEaA4Ab47760CCFa5 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[TransactionGasHigherThanLimit2p63m1_2] Processing transaction number 799 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xeDBCA895bbB9c0EAB5C4F46cEaA4Ab47760CCFa5) to 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key c66db4c8270d7518a843d50213e81aaa019a5ecd429802441e318d62cbc7fbcc --timeout 20 --value 10 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[TransactionGasHigherThanLimit2p63m1_2] Processing transaction number 800 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xeDBCA895bbB9c0EAB5C4F46cEaA4Ab47760CCFa5) to 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key c66db4c8270d7518a843d50213e81aaa019a5ecd429802441e318d62cbc7fbcc --timeout 20 --value 10 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[TransactionGasHigherThanLimit2p63m1_2] Processing transaction number 801 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xeDBCA895bbB9c0EAB5C4F46cEaA4Ab47760CCFa5) to 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key c66db4c8270d7518a843d50213e81aaa019a5ecd429802441e318d62cbc7fbcc --timeout 20 --value 10 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[TransactionGasHigherThanLimit2p63m1_2] Processing transaction number 802 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xeDBCA895bbB9c0EAB5C4F46cEaA4Ab47760CCFa5) to 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key c66db4c8270d7518a843d50213e81aaa019a5ecd429802441e318d62cbc7fbcc --timeout 20 --value 10 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[TransactionGasHigherThanLimit2p63m1_2] Processing transaction number 803 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xeDBCA895bbB9c0EAB5C4F46cEaA4Ab47760CCFa5) to 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key c66db4c8270d7518a843d50213e81aaa019a5ecd429802441e318d62cbc7fbcc --timeout 20 --value 10 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[TransactionGasHigherThanLimit2p63m1_2] Processing transaction number 804 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xeDBCA895bbB9c0EAB5C4F46cEaA4Ab47760CCFa5) to 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key c66db4c8270d7518a843d50213e81aaa019a5ecd429802441e318d62cbc7fbcc --timeout 20 --value 10 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

