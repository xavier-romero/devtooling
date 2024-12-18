# PRV_KEY for master sender 0x99E5eFa1f3311f1A3496b3e9441d51137d29f30c
PRV_KEY=f30abef967f833dfca92c5bc5a5cc9c9be5e17e36a22344f92c6697a1af3ea1c
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest94 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/randomStatetest94Filler.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+100000))
echo "[randomStatetest94] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8B68a5B27F82D905ceF359CE5dE0956ad2024836) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x8B68a5B27F82D905ceF359CE5dE0956ad2024836 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest94] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 1000000000000000000..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000000000000000000 --create 6300000007601260003963000000076000F344444243204555 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest94] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest94] Processing transaction number 735 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8B68a5B27F82D905ceF359CE5dE0956ad2024836) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 2742d0a3ff0e79c77f8bf0023c401b101fb47964ae62d18b6291c2779fb7ed5f --timeout 20 --value 100000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x42 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

