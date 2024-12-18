# PRV_KEY for master sender 0xd6c2342811c67005b00D1A3848bF2cD989FdCc10
PRV_KEY=4d0b20d7db973ce89a9c4cdb3fb5830ec81c835e68f17f1cdf5eb79e2107305b
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest617BC (src/BlockchainTestsFiller/ValidBlocks/bcRandomBlockhashTest/randomStatetest617BCFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+100000))
echo "[randomStatetest617BC] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x550C8415F9902ad046F85Ea483cd145658CC5515) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x550C8415F9902ad046F85Ea483cd145658CC5515 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest617BC] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 1000000000000000000..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000000000000000000 --create 630000000c6012600039630000000c6000F34343404443434144133642f2 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest617BC] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest617BC] Processing transaction number 687 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x550C8415F9902ad046F85Ea483cd145658CC5515) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 14b1fb0b23db11a289431af7fd735594f35e718463799d927d26ac702e2f4fbc --timeout 20 --value 100000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x42 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

