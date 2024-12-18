# PRV_KEY for master sender 0x3221680140B92b2bF1F33964A5AA98e5e7685a3D
PRV_KEY=e1d4f35d7e4cbe932b8c8a3fdb48707e1304e061762ad2398afa9ee246c06acb
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test wrongNumber (src/BlockchainTestsFiller/InvalidBlocks/bcInvalidHeaderTest/wrongNumberFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+5000))
echo "[wrongNumber] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xd7AccE75D5a72035AB3a363DFE89D6E590EEfc2b) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xd7AccE75D5a72035AB3a363DFE89D6E590EEfc2b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[wrongNumber] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 100..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100 --create 630000002c6012600039630000002c6000F37fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff600052600060206000a100 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[wrongNumber] Processing transaction number 269 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xd7AccE75D5a72035AB3a363DFE89D6E590EEfc2b) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key a4b135b423b9462389975a8ff22902d4d024e5757d997dadb8a8896584111360 --timeout 20 --value 5000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

