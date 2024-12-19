# PRV_KEY for master sender 0x72C9Eb26473253961Fb34b0d137739F7044F4ff8
PRV_KEY=3d2165104c6028bc4387bb41e16043502c7dd46a633cca1ae581285260e27642
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest241 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/randomStatetest241Filler.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+100000))
echo "[randomStatetest241] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x249DA4a424000D34Ac4EBa6B00DDa321BF2A3711) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x249DA4a424000D34Ac4EBa6B00DDa321BF2A3711 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest241] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 1000000000000000000..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000000000000000000 --create 630000000c6012600039630000000c6000F341421942450855678a044455 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest241] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest241] Processing transaction number 770 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x249DA4a424000D34Ac4EBa6B00DDa321BF2A3711) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key fbc83a5686081f681e7e227cf0ac3c2dfb029ef4984c62b341a3ae9a713509a4 --timeout 20 --value 100000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x42 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

