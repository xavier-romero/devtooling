# PRV_KEY for master sender 0x44DD430A813CC92AbFdA595D19BcE61268c9EB41
PRV_KEY=bf2dbf81e7fede624402880d5390a8b76e27772f507ba0dc2025d6d1d65fa823
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test futureUncleTimestampDifficultyDrop (src/BlockchainTestsFiller/InvalidBlocks/bcUncleSpecialTests/futureUncleTimestampDifficultyDropFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[futureUncleTimestampDifficultyDrop] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE59851785DbA5B14D8B9C4664Ab677897295f9D3) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xE59851785DbA5B14D8B9C4664Ab677897295f9D3 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[futureUncleTimestampDifficultyDrop] Processing transaction number 4 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE59851785DbA5B14D8B9C4664Ab677897295f9D3) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 0b25b8350aa73d061229d9d5234ae91cdfe90fe4cd6eea3812319278c824ac98 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[futureUncleTimestampDifficultyDrop] Processing transaction number 5 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE59851785DbA5B14D8B9C4664Ab677897295f9D3) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 0b25b8350aa73d061229d9d5234ae91cdfe90fe4cd6eea3812319278c824ac98 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[futureUncleTimestampDifficultyDrop] Processing transaction number 6 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE59851785DbA5B14D8B9C4664Ab677897295f9D3) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 0b25b8350aa73d061229d9d5234ae91cdfe90fe4cd6eea3812319278c824ac98 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

