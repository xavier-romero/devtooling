# PRV_KEY for master sender 0x0A5c8d95182A5321FcB8FC831e1d335B3b42204b
PRV_KEY=ab42d740ee18b7c51b7878f0cd96fddd8e0310dc4c9ef6208fb83e1fb2b79321
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test incorrectUncleNumber500 (src/BlockchainTestsFiller/InvalidBlocks/bcUncleHeaderValidity/incorrectUncleNumber500Filler.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[incorrectUncleNumber500] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xf24B7C2AF3Be0b0818C5b44Ea19Fe8aFB68913a9) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xf24B7C2AF3Be0b0818C5b44Ea19Fe8aFB68913a9 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[incorrectUncleNumber500] Processing transaction number 67 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xf24B7C2AF3Be0b0818C5b44Ea19Fe8aFB68913a9) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 1f29f8d6193af4227dcbcc7825da039698048f473558dead3018a8d48dbbf14f --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[incorrectUncleNumber500] Processing transaction number 68 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xf24B7C2AF3Be0b0818C5b44Ea19Fe8aFB68913a9) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 1f29f8d6193af4227dcbcc7825da039698048f473558dead3018a8d48dbbf14f --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[incorrectUncleNumber500] Processing transaction number 69 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xf24B7C2AF3Be0b0818C5b44Ea19Fe8aFB68913a9) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 1f29f8d6193af4227dcbcc7825da039698048f473558dead3018a8d48dbbf14f --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

