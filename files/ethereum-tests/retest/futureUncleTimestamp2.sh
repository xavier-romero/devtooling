# PRV_KEY for master sender 0x05CE82CDfCebBc81FC91B97E06747F0792eB84bc
PRV_KEY=252c4b358c4d2c0e0ed5a99fe41febdde10e011bee5249bf37109f81dad99cbc
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test futureUncleTimestamp2 (src/BlockchainTestsFiller/InvalidBlocks/bcUncleSpecialTests/futureUncleTimestamp2Filler.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[futureUncleTimestamp2] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x4Fffa67379Ec9b48BB2e47a43b6323e70ff41EaB) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x4Fffa67379Ec9b48BB2e47a43b6323e70ff41EaB | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[futureUncleTimestamp2] Processing transaction number 22 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x4Fffa67379Ec9b48BB2e47a43b6323e70ff41EaB) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key f1e6e93f5f83621274fa717a98bffd3003c4f4654e17080bacbbcca9d315439e --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[futureUncleTimestamp2] Processing transaction number 23 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x4Fffa67379Ec9b48BB2e47a43b6323e70ff41EaB) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key f1e6e93f5f83621274fa717a98bffd3003c4f4654e17080bacbbcca9d315439e --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[futureUncleTimestamp2] Processing transaction number 24 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x4Fffa67379Ec9b48BB2e47a43b6323e70ff41EaB) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key f1e6e93f5f83621274fa717a98bffd3003c4f4654e17080bacbbcca9d315439e --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

