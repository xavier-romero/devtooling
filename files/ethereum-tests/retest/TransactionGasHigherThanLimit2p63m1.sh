# PRV_KEY for master sender 0xec81215Fb4de45E6427968FBFafEfD314C3241F4
PRV_KEY=f5aaeadcf5c3c470f4aadb19445b2c26751bc4aa9f805f74e96a803fa1bc90b5
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test TransactionGasHigherThanLimit2p63m1 (src/BlockchainTestsFiller/ValidBlocks/bcBlockGasLimitTest/TransactionGasHigherThanLimit2p63m1Filler.json)"

AMOUNT=$((2*150000*7*$GAS_PRICE+70))
echo "[TransactionGasHigherThanLimit2p63m1] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xEA707e56A5C93F99d06220241Bdd9eB9b3336fa5) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xEA707e56A5C93F99d06220241Bdd9eB9b3336fa5 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[TransactionGasHigherThanLimit2p63m1] Processing transaction number 792 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xEA707e56A5C93F99d06220241Bdd9eB9b3336fa5) to 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 92caecfc00b469fe56feec1662d27b7e0822669e60bd36198b50f2bd85c912bb --timeout 20 --value 10 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[TransactionGasHigherThanLimit2p63m1] Processing transaction number 793 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xEA707e56A5C93F99d06220241Bdd9eB9b3336fa5) to 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 92caecfc00b469fe56feec1662d27b7e0822669e60bd36198b50f2bd85c912bb --timeout 20 --value 10 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[TransactionGasHigherThanLimit2p63m1] Processing transaction number 794 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xEA707e56A5C93F99d06220241Bdd9eB9b3336fa5) to 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 92caecfc00b469fe56feec1662d27b7e0822669e60bd36198b50f2bd85c912bb --timeout 20 --value 10 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[TransactionGasHigherThanLimit2p63m1] Processing transaction number 795 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xEA707e56A5C93F99d06220241Bdd9eB9b3336fa5) to 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 92caecfc00b469fe56feec1662d27b7e0822669e60bd36198b50f2bd85c912bb --timeout 20 --value 10 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[TransactionGasHigherThanLimit2p63m1] Processing transaction number 796 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xEA707e56A5C93F99d06220241Bdd9eB9b3336fa5) to 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 92caecfc00b469fe56feec1662d27b7e0822669e60bd36198b50f2bd85c912bb --timeout 20 --value 10 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[TransactionGasHigherThanLimit2p63m1] Processing transaction number 797 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xEA707e56A5C93F99d06220241Bdd9eB9b3336fa5) to 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 92caecfc00b469fe56feec1662d27b7e0822669e60bd36198b50f2bd85c912bb --timeout 20 --value 10 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[TransactionGasHigherThanLimit2p63m1] Processing transaction number 798 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xEA707e56A5C93F99d06220241Bdd9eB9b3336fa5) to 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 92caecfc00b469fe56feec1662d27b7e0822669e60bd36198b50f2bd85c912bb --timeout 20 --value 10 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

