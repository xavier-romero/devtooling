# PRV_KEY for master sender 0x31D2db5F264f0d8Caa13Aba7546b46F2044Fb480
PRV_KEY=7c65b90388e7f9b3605aa054f65b1f4d7cc6ae8c33cbd2026f0edf314e960d46
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest328 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/randomStatetest328Filler.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+100000))
echo "[randomStatetest328] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x738F51442193d018c8b86813B388FFf479E51246) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x738F51442193d018c8b86813B388FFf479E51246 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest328] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 1000000000000000000..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000000000000000000 --create 6300000003601260003963000000036000F3454555 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest328] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest328] Processing transaction number 750 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x738F51442193d018c8b86813B388FFf479E51246) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ccfa1c2a5a817b8e16ae5e3215e23298275c79d93c1a14f68fdc924463de3469 --timeout 20 --value 100000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x42 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

