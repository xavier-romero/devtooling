# PRV_KEY for master sender 0xa810c83ee5d0BFDE4EB883079390D176E046CcBb
PRV_KEY=b86c5ab219110dfd593c7be0214fdbf371ae557cffb4fc7bd40ee4633ad8141a
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest549 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/randomStatetest549Filler.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+100000))
echo "[randomStatetest549] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xf786Cc9F660806bDC26bBA62426Fa53651b9dD7b) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xf786Cc9F660806bDC26bBA62426Fa53651b9dD7b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest549] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 1000000000000000000..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000000000000000000 --create 630000000f6012600039630000000f6000F3424441444141454208ff65a0090272 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest549] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest549] Processing transaction number 760 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xf786Cc9F660806bDC26bBA62426Fa53651b9dD7b) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 7444b495d7a1d3521a3b9d8d6add0db998a6ff744a3596805e9494c8ed4f2562 --timeout 20 --value 100000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x42 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

