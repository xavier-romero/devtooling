# PRV_KEY for master sender 0xdB14f38B9b39bF9f68b6238B0D682a02A3a1FF05
PRV_KEY=7d8772b8f0e694bc7b71725135baea9f6a5a1992bcef1afdf08c49044c239cc3
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test incorrectUncleTimestamp2 (src/BlockchainTestsFiller/InvalidBlocks/bcUncleHeaderValidity/incorrectUncleTimestamp2Filler.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[incorrectUncleTimestamp2] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x6365408D7cA854abcbF9F5feC2183Fe4279235F7) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x6365408D7cA854abcbF9F5feC2183Fe4279235F7 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[incorrectUncleTimestamp2] Processing transaction number 91 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x6365408D7cA854abcbF9F5feC2183Fe4279235F7) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key f014dd664247f330f0abb09291f7a07a9269f6265c8c45e60bb28c3b94117565 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[incorrectUncleTimestamp2] Processing transaction number 92 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x6365408D7cA854abcbF9F5feC2183Fe4279235F7) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key f014dd664247f330f0abb09291f7a07a9269f6265c8c45e60bb28c3b94117565 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[incorrectUncleTimestamp2] Processing transaction number 93 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x6365408D7cA854abcbF9F5feC2183Fe4279235F7) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key f014dd664247f330f0abb09291f7a07a9269f6265c8c45e60bb28c3b94117565 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

