# PRV_KEY for master sender 0x8e9309ca1Ef8537087c4aDebF3d48b0Fc68268F3
PRV_KEY=49f8ddde6bcae41a31b2a5b1190b622897aa3b143459866f4e7326e350decd2d
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest123 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/randomStatetest123Filler.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+100000))
echo "[randomStatetest123] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xb4B578b256cd898827b855f4ae5bBF75377fc9BA) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xb4B578b256cd898827b855f4ae5bBF75377fc9BA | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest123] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 1000000000000000000..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000000000000000000 --create 6300000007601260003963000000076000F341444541084455 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest123] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest123] Processing transaction number 736 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xb4B578b256cd898827b855f4ae5bBF75377fc9BA) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 82de5bf0e74983e7c53d6ee46eba153742c8572befa97f71c39441047786cf67 --timeout 20 --value 100000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x42 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

