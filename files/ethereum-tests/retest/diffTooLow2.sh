# PRV_KEY for master sender 0xb6f3F963276C7749bD789211a2Bd45e40f085098
PRV_KEY=e9b8c12fe35826576bb597613ceac417f84a3e55043d75104f9e3a534a6fd3f1
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test diffTooLow2 (src/BlockchainTestsFiller/InvalidBlocks/bcUncleHeaderValidity/diffTooLow2Filler.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[diffTooLow2] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8D4cBF7B006078A189E218231d5756d3a137B2e7) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x8D4cBF7B006078A189E218231d5756d3a137B2e7 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[diffTooLow2] Processing transaction number 52 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8D4cBF7B006078A189E218231d5756d3a137B2e7) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key e3739a21cc79f41e100ef6350343c4200b851357628dd9dd24425bf300a4163c --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[diffTooLow2] Processing transaction number 53 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8D4cBF7B006078A189E218231d5756d3a137B2e7) to 0x0000000000000000000000000000000000000000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key e3739a21cc79f41e100ef6350343c4200b851357628dd9dd24425bf300a4163c --timeout 20 --value 10 0x0000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[diffTooLow2] Processing transaction number 54 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8D4cBF7B006078A189E218231d5756d3a137B2e7) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key e3739a21cc79f41e100ef6350343c4200b851357628dd9dd24425bf300a4163c --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

