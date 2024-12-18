# PRV_KEY for master sender 0x20032ab191b6F6f4E637689AbAFF4D5345af29B6
PRV_KEY=fdf8499265e0a746122093a43d10d78da8dbb249780381ebc7647940d3962602
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test diffTooHigh (src/BlockchainTestsFiller/InvalidBlocks/bcUncleHeaderValidity/diffTooHighFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[diffTooHigh] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xf4E91A9285951F1E9Ee6a71080295fCb77C6D679) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xf4E91A9285951F1E9Ee6a71080295fCb77C6D679 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[diffTooHigh] Processing transaction number 97 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xf4E91A9285951F1E9Ee6a71080295fCb77C6D679) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key e78e36f125ef079ca1b06c7982631c95eb4a5ebc9919bd03138125b03d172c65 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[diffTooHigh] Processing transaction number 98 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xf4E91A9285951F1E9Ee6a71080295fCb77C6D679) to 0x0000000000000000000000000000000000000000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key e78e36f125ef079ca1b06c7982631c95eb4a5ebc9919bd03138125b03d172c65 --timeout 20 --value 10 0x0000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[diffTooHigh] Processing transaction number 99 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xf4E91A9285951F1E9Ee6a71080295fCb77C6D679) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key e78e36f125ef079ca1b06c7982631c95eb4a5ebc9919bd03138125b03d172c65 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

