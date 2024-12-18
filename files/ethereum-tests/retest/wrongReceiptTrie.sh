# PRV_KEY for master sender 0x4A986c97AC5c2FCf15E3CF7aa890b54c2C50E6C0
PRV_KEY=881e5d1f615583d9fc5450a5947dcf0b0c0ff4867698b51112848b70184bb640
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test wrongReceiptTrie (src/BlockchainTestsFiller/InvalidBlocks/bcInvalidHeaderTest/wrongReceiptTrieFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+5000))
echo "[wrongReceiptTrie] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x46E17B2132a671254812d6314eff77fB0E4505A9) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x46E17B2132a671254812d6314eff77fB0E4505A9 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[wrongReceiptTrie] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 100..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100 --create 630000002c6012600039630000002c6000F37fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff600052600060206000a100 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[wrongReceiptTrie] Processing transaction number 273 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x46E17B2132a671254812d6314eff77fB0E4505A9) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 331c23ff2e2b8c19523bc4343dabf86eb791ddb8d94c8b31f1ba8c06096c7f43 --timeout 20 --value 5000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

