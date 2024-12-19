# PRV_KEY for master sender 0xC3a8afddA23469e18bCc305cf599920D726C82a5
PRV_KEY=e3472e2b2a57b56d57092370d38936ac1c2d3273c2eab22aceae71928912dabd
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test mergeExample (src/BlockchainTestsFiller/ValidBlocks/bcExample/mergeExampleFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[mergeExample] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x35d5Cb36c3869EB4CcD579d4E75e151Cb0Ce1cD9) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x35d5Cb36c3869EB4CcD579d4E75e151Cb0Ce1cD9 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[mergeExample] Processing transaction number 784 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x35d5Cb36c3869EB4CcD579d4E75e151Cb0Ce1cD9) to None"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 7bc2fd7dd9751402865dcf761417daa984d43ec382be83e5285f4ab042e70564 --timeout 20 --value 0 --create 0x4460015560068060116000396000f300fe600f60005500 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

