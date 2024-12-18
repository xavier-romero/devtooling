# PRV_KEY for master sender 0xFEC33CD7c0c5a196EC8f4068f83813A475Af7D86
PRV_KEY=9c5ad7252e27c997b3e75d3500249a0470b06ebae43b0b40f91f4cd251ea338b
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest56BC (src/BlockchainTestsFiller/ValidBlocks/bcRandomBlockhashTest/randomStatetest56BCFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+100000))
echo "[randomStatetest56BC] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x89B6A9efe6546C7Bc0F234f910ea59d9BDa0956f) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x89B6A9efe6546C7Bc0F234f910ea59d9BDa0956f | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest56BC] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 1000000000000000000..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000000000000000000 --create 630000000c6012600039630000000c6000F3584143404243404107204155 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest56BC] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest56BC] Processing transaction number 639 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x89B6A9efe6546C7Bc0F234f910ea59d9BDa0956f) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 608ab45c204a42aa8e88f1227a722678d478ba33c525ec1f1acc554f5b1c4287 --timeout 20 --value 100000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x42 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

