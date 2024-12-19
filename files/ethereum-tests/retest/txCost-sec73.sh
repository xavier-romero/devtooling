# PRV_KEY for master sender 0x6E997Bde1c5137aDDfF1C7313F0ED37EaD2a7d9e
PRV_KEY=49502588ee5635b37ecbf0e36c0aef906ce414b594452cda014325fb68efb379
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test txCost-sec73 (src/BlockchainTestsFiller/InvalidBlocks/bcStateTests/txCost-sec73Filler.json)"

AMOUNT=$((2*150000*2*$GAS_PRICE+200000))
echo "[txCost-sec73] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xF04B2cFd407230EBF08D2d3bE6763b44df549Ffe) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xF04B2cFd407230EBF08D2d3bE6763b44df549Ffe | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[txCost-sec73] Processing transaction number 130 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xF04B2cFd407230EBF08D2d3bE6763b44df549Ffe) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 17d7dfc6f60a1974eddbff5165712149a6828b1aca6254dd484a8c9d21983a07 --timeout 20 --value 100000 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 0x00 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[txCost-sec73] Processing transaction number 131 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xF04B2cFd407230EBF08D2d3bE6763b44df549Ffe) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 17d7dfc6f60a1974eddbff5165712149a6828b1aca6254dd484a8c9d21983a07 --timeout 20 --value 100000 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 0x00 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

