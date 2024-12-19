# PRV_KEY for master sender 0x1f278b22Dd5bdFB8578264F10e96521C9eCbBeEb
PRV_KEY=8becffd3ab140dafa63c780f54ecea59de54d489082f1604dfaf61df9175bd75
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest38 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/randomStatetest38Filler.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+100000))
echo "[randomStatetest38] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x85Aa8cf83cB07846a8074c033d29cD51480c8e5f) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x85Aa8cf83cB07846a8074c033d29cD51480c8e5f | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest38] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 1000000000000000000..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000000000000000000 --create 6300000004601260003963000000046000F341314555 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest38] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest38] Processing transaction number 747 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x85Aa8cf83cB07846a8074c033d29cD51480c8e5f) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key c1665a8a5df460f3855f0dfd0ec435d55d82992fe9f9af59c82e6c794b56ee12 --timeout 20 --value 100000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x42 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

