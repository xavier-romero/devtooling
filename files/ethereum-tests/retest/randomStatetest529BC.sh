# PRV_KEY for master sender 0x7b4B5f4Bf55DD5Ff908457503cC3D54aa94336a4
PRV_KEY=4e26e5472d53dd3ecf351e4aac3a63698256ef8f57413a9b4c5c3911fc6753dd
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest529BC (src/BlockchainTestsFiller/ValidBlocks/bcRandomBlockhashTest/randomStatetest529BCFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+100000))
echo "[randomStatetest529BC] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xb5F230d3f1582367cEbAf693a065b34A29a443E2) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xb5F230d3f1582367cEbAf693a065b34A29a443E2 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest529BC] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 1000000000000000000..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000000000000000000 --create 630000000d6012600039630000000d6000F34445434244444044a158205855 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest529BC] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest529BC] Processing transaction number 682 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xb5F230d3f1582367cEbAf693a065b34A29a443E2) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d8c5240fd0f670804bda2f17aa225ba9c8e567ff770f7dedda3e6a143d413bf7 --timeout 20 --value 100000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x42 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

