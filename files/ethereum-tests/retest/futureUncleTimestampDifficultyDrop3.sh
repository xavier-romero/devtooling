# PRV_KEY for master sender 0xbB1134AEACcC8F0848310E4e3ffC10F1071E7041
PRV_KEY=4b1c5eff589b14033afb881bb3002d8f7f77ec5d3a152f7860674e0b359280e3
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test futureUncleTimestampDifficultyDrop3 (src/BlockchainTestsFiller/InvalidBlocks/bcUncleSpecialTests/futureUncleTimestampDifficultyDrop3Filler.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[futureUncleTimestampDifficultyDrop3] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xd81Aa24F3f933DB228eEf2ca229ED59CA4F3272C) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xd81Aa24F3f933DB228eEf2ca229ED59CA4F3272C | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[futureUncleTimestampDifficultyDrop3] Processing transaction number 16 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xd81Aa24F3f933DB228eEf2ca229ED59CA4F3272C) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key b693990ba302b997da2a861664c2586cfc09bb2a64e5614625428728db508400 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[futureUncleTimestampDifficultyDrop3] Processing transaction number 17 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xd81Aa24F3f933DB228eEf2ca229ED59CA4F3272C) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key b693990ba302b997da2a861664c2586cfc09bb2a64e5614625428728db508400 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[futureUncleTimestampDifficultyDrop3] Processing transaction number 18 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xd81Aa24F3f933DB228eEf2ca229ED59CA4F3272C) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key b693990ba302b997da2a861664c2586cfc09bb2a64e5614625428728db508400 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

