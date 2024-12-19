# PRV_KEY for master sender 0xB57Ab8bB77e505cB82f090602Df6F9fca8ad059A
PRV_KEY=08c77db0a447fe563444ba3c1e0581b00f3fea6e75e5611385254c33d72b2507
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test wrongTimestamp (src/BlockchainTestsFiller/InvalidBlocks/bcInvalidHeaderTest/wrongTimestampFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+5000))
echo "[wrongTimestamp] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x26e494c2eC7C0f912742CD0D5E3c049ace7Fb058) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x26e494c2eC7C0f912742CD0D5E3c049ace7Fb058 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[wrongTimestamp] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 100..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100 --create 630000002c6012600039630000002c6000F37fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff600052600060206000a100 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[wrongTimestamp] Processing transaction number 282 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x26e494c2eC7C0f912742CD0D5E3c049ace7Fb058) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key bc19222c0c35d1acb26c6dd273dfdff67b918d2cedb01b6549a9d091f70414d0 --timeout 20 --value 5000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

