# PRV_KEY for master sender 0x59DBd5E03A64F2A41b9B4df4081167742d86fd9f
PRV_KEY=1bd4cfc6ce29202407352f65d7facbe9bc6dc6c9aa9e7f9f2461596af2d53cf4
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest441 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/randomStatetest441Filler.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+100000))
echo "[randomStatetest441] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xFf5eD154340D5717c0b24e901c4B5F7467772e4F) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xFf5eD154340D5717c0b24e901c4B5F7467772e4F | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest441] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 1000000000000000000..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000000000000000000 --create 6300000009601260003963000000096000F3444241414545444555 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest441] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest441] Processing transaction number 734 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xFf5eD154340D5717c0b24e901c4B5F7467772e4F) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 63ee8afe6d707dc2b7ae18a98fca22c05a961fd48c603a02645617641cec28fb --timeout 20 --value 100000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x42 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

