# PRV_KEY for master sender 0xE00Ae718bA77eE48E5E736eEDB3bB3e757316e74
PRV_KEY=139e8c98a37fdfb56e427559ec6ba72a1e2cdd4bab5f0ea645433d3f44c9db40
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest441 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/randomStatetest441Filler.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+100000))
echo "[randomStatetest441] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x5B61351A8783cB11Bc7335e8165A9eF586F007e8) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x5B61351A8783cB11Bc7335e8165A9eF586F007e8 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest441] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 1000000000000000000..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000000000000000000 --create 6300000009601260003963000000096000F3444241414545444555 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest441] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest441] Processing transaction number 734 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x5B61351A8783cB11Bc7335e8165A9eF586F007e8) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ae6c57ae7590210d069457b32c173a4618ba739f4fcd34e5ed4d1edf79e78676 --timeout 20 --value 100000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x42 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

