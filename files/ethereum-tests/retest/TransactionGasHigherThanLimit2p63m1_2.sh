# PRV_KEY for master sender 0x890B890596B495BE685954584b80097d0ae58911
PRV_KEY=53de4fabd47113e2f4f8226c1d6250b53acd12cf4fd2a19a495966a594b7ac4b
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test TransactionGasHigherThanLimit2p63m1_2 (src/BlockchainTestsFiller/ValidBlocks/bcBlockGasLimitTest/TransactionGasHigherThanLimit2p63m1_2Filler.json)"

AMOUNT=$((2*150000*6*$GAS_PRICE+60))
echo "[TransactionGasHigherThanLimit2p63m1_2] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xF6Df92D22ae09CF48DE7d4F47a5b64dF827AEbe0) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xF6Df92D22ae09CF48DE7d4F47a5b64dF827AEbe0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[TransactionGasHigherThanLimit2p63m1_2] Processing transaction number 799 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xF6Df92D22ae09CF48DE7d4F47a5b64dF827AEbe0) to 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 430723cea6f32cce92e4d6231888d1fad42dc87c221e46addc7f204182175375 --timeout 20 --value 10 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[TransactionGasHigherThanLimit2p63m1_2] Processing transaction number 800 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xF6Df92D22ae09CF48DE7d4F47a5b64dF827AEbe0) to 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 430723cea6f32cce92e4d6231888d1fad42dc87c221e46addc7f204182175375 --timeout 20 --value 10 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[TransactionGasHigherThanLimit2p63m1_2] Processing transaction number 801 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xF6Df92D22ae09CF48DE7d4F47a5b64dF827AEbe0) to 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 430723cea6f32cce92e4d6231888d1fad42dc87c221e46addc7f204182175375 --timeout 20 --value 10 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[TransactionGasHigherThanLimit2p63m1_2] Processing transaction number 802 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xF6Df92D22ae09CF48DE7d4F47a5b64dF827AEbe0) to 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 430723cea6f32cce92e4d6231888d1fad42dc87c221e46addc7f204182175375 --timeout 20 --value 10 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[TransactionGasHigherThanLimit2p63m1_2] Processing transaction number 803 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xF6Df92D22ae09CF48DE7d4F47a5b64dF827AEbe0) to 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 430723cea6f32cce92e4d6231888d1fad42dc87c221e46addc7f204182175375 --timeout 20 --value 10 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[TransactionGasHigherThanLimit2p63m1_2] Processing transaction number 804 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xF6Df92D22ae09CF48DE7d4F47a5b64dF827AEbe0) to 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 430723cea6f32cce92e4d6231888d1fad42dc87c221e46addc7f204182175375 --timeout 20 --value 10 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

