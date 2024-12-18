# PRV_KEY for master sender 0x4Aa99c470C21F4a2eB06B3a052Ef48c1CE430DE4
PRV_KEY=eaff85bffd9776a821eccaa66ab46d024986bd1d1efa2e370255e8d2696037fb
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test GasLimitIsZero (src/BlockchainTestsFiller/InvalidBlocks/bcInvalidHeaderTest/GasLimitIsZeroFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+5000))
echo "[GasLimitIsZero] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE866d8BD90C20F286A257740ac6Ed3F20621B280) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xE866d8BD90C20F286A257740ac6Ed3F20621B280 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[GasLimitIsZero] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 100..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100 --create 630000002c6012600039630000002c6000F37fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff600052600060206000a100 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[GasLimitIsZero] Processing transaction number 281 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE866d8BD90C20F286A257740ac6Ed3F20621B280) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key df6fba1d5f25ead163513260fda61ae0ad57658430c69034858782a0138b7725 --timeout 20 --value 5000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

