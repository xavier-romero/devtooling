# PRV_KEY for master sender 0x159485Bb5752778ea59590C682f425C2aD88Fec1
PRV_KEY=53970091366e1a11e852462895582fb4ea59dbc32df22927ddb2bdcb726fb762
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest623BC (src/BlockchainTestsFiller/ValidBlocks/bcRandomBlockhashTest/randomStatetest623BCFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+100000))
echo "[randomStatetest623BC] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x7f553ECAb52a36f81221eeb0fB4C95305777722D) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x7f553ECAb52a36f81221eeb0fB4C95305777722D | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest623BC] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 1000000000000000000..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000000000000000000 --create 6300000009601260003963000000096000F3434542454244402055 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest623BC] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest623BC] Processing transaction number 677 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x7f553ECAb52a36f81221eeb0fB4C95305777722D) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key b05d0f3191cbed5cc3956ce7c38c8fe0063c5d17e5c0530ed62862415ab561d0 --timeout 20 --value 100000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x42 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

