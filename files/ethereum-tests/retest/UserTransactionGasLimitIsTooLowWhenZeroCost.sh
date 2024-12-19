# PRV_KEY for master sender 0x72Fd069625fd166c98654D82B0848d692c709265
PRV_KEY=6c7ebbd9281dc4d9a033bd3e42c8b97d2963cc8b5b864db2dc7bcc1e8c5d6ce0
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test UserTransactionGasLimitIsTooLowWhenZeroCost (src/BlockchainTestsFiller/InvalidBlocks/bcStateTests/UserTransactionGasLimitIsTooLowWhenZeroCostFiller.json)"

AMOUNT=$((2*150000*2*$GAS_PRICE+1800))
echo "[UserTransactionGasLimitIsTooLowWhenZeroCost] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x250b5aAB4B148a26b3Ce43e25e7827e251B483F2) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x250b5aAB4B148a26b3Ce43e25e7827e251B483F2 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[UserTransactionGasLimitIsTooLowWhenZeroCost] Processing transaction number 152 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x250b5aAB4B148a26b3Ce43e25e7827e251B483F2) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 9096b67063a5fedbd9949a7f687ea96b1fb9d80e12281edad68a77a9e4b8097b --timeout 20 --value 900 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[UserTransactionGasLimitIsTooLowWhenZeroCost] Processing transaction number 153 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x250b5aAB4B148a26b3Ce43e25e7827e251B483F2) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 9096b67063a5fedbd9949a7f687ea96b1fb9d80e12281edad68a77a9e4b8097b --timeout 20 --value 900 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

