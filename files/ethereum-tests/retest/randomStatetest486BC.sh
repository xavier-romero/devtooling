# PRV_KEY for master sender 0x7AA694c8348472AE17541F0740e7C6124411AAed
PRV_KEY=ee5b77d03a68f0d3bf86f4ae47aa5911be5dc7421f01dd1220c7e38f1ef5463f
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest486BC (src/BlockchainTestsFiller/ValidBlocks/bcRandomBlockhashTest/randomStatetest486BCFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+100000))
echo "[randomStatetest486BC] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xf80eA686d2c1A407772829B201464dA5406Bb27e) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xf80eA686d2c1A407772829B201464dA5406Bb27e | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest486BC] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 1000000000000000000..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000000000000000000 --create 630000000b6012600039630000000b6000F34434404341424140203855 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest486BC] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest486BC] Processing transaction number 635 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xf80eA686d2c1A407772829B201464dA5406Bb27e) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 501346d95bc9ef7506e41f080db44d79de831f0f08ffd7b60f24f78b493ca8de --timeout 20 --value 100000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x42 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

