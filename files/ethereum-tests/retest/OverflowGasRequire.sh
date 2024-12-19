# PRV_KEY for master sender 0x5a4Af5408C67fBd61A3d7826b070f3a2Fa8208d6
PRV_KEY=3086c9aade53517e5831dcecf8340d35a37d73c65034c70bf997bd4554acf3b9
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test OverflowGasRequire (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/OverflowGasRequireFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[OverflowGasRequire] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x1d820A8d76CA351a4a8018e29f40fD16Ad0fE95d) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x1d820A8d76CA351a4a8018e29f40fD16Ad0fE95d | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[OverflowGasRequire] Processing transaction number 757 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x1d820A8d76CA351a4a8018e29f40fD16Ad0fE95d) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 70fbcdf4d91fd0152ecfd2ddf950957ddccf7b9c97962024506ab9bd47151369 --timeout 20 --value 0 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b 0x3240349548983454 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

