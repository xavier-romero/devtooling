# PRV_KEY for master sender 0xCe8Dd2538833Ed894C348b3578D2ddb7306Fd28f
PRV_KEY=6aa72ad325cb8bc4038fa86d326ab205ee0fe1effddb665c18e585d920502030
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest549 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/randomStatetest549Filler.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+100000))
echo "[randomStatetest549] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x9e0F7522913E1ac5221e87E6Ed6954C917196998) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x9e0F7522913E1ac5221e87E6Ed6954C917196998 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest549] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 1000000000000000000..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000000000000000000 --create 630000000f6012600039630000000f6000F3424441444141454208ff65a0090272 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest549] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest549] Processing transaction number 760 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x9e0F7522913E1ac5221e87E6Ed6954C917196998) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ec0b88cb52a8483e79d927e2e0c95c65383a2f792dd143d758583df689668575 --timeout 20 --value 100000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x42 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

