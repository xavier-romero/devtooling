# PRV_KEY for master sender 0x931b74ebc1C2EbE31000E5fDa3c1cb4a9412059d
PRV_KEY=a16c90504db5b1190c371ab5c0b2c0db478a86fa7304562f50347fc33d822956
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest21BC (src/BlockchainTestsFiller/ValidBlocks/bcRandomBlockhashTest/randomStatetest21BCFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+100000))
echo "[randomStatetest21BC] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x5EbE2AB52E99C1123556B328fc8dcE4B71bB5CdA) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x5EbE2AB52E99C1123556B328fc8dcE4B71bB5CdA | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest21BC] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 1000000000000000000..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000000000000000000 --create 630000000e6012600039630000000e6000F34440444245414045913c63087c55 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest21BC] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest21BC] Processing transaction number 594 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x5EbE2AB52E99C1123556B328fc8dcE4B71bB5CdA) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key bb0a25c2e0dbbc3851257330053bfbc9a03ef5b401b2e85dc7009551cef7b17e --timeout 20 --value 100000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x42 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

