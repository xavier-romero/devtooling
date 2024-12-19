# PRV_KEY for master sender 0x9CdA62A61cF7d6089Ca51DD862D4569bCcCa06De
PRV_KEY=2e80a540fe621179041109a4d0c833f1e49950b511cbe7f60a5ea41dec715761
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest56BC (src/BlockchainTestsFiller/ValidBlocks/bcRandomBlockhashTest/randomStatetest56BCFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+100000))
echo "[randomStatetest56BC] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x287BcC7AE4941893FFB2400Bf891885daA41F311) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x287BcC7AE4941893FFB2400Bf891885daA41F311 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest56BC] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 1000000000000000000..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000000000000000000 --create 630000000c6012600039630000000c6000F3584143404243404107204155 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest56BC] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest56BC] Processing transaction number 639 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x287BcC7AE4941893FFB2400Bf891885daA41F311) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 283a08f1ff1d0d5614d3c3234c9f6b7cadc185de8ea2d2b6024a029267726e1f --timeout 20 --value 100000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x42 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

