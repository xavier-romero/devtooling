# PRV_KEY for master sender 0x7e5AC0DB07ffb083e701F3e0955b247315752Cd2
PRV_KEY=37ee440b4159f1d3abc149558949a1e4704294f669333de97aa45efebc142eda
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest623BC (src/BlockchainTestsFiller/ValidBlocks/bcRandomBlockhashTest/randomStatetest623BCFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+100000))
echo "[randomStatetest623BC] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8C7396241222B1EC8A88a1383012819cf21B39d5) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x8C7396241222B1EC8A88a1383012819cf21B39d5 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest623BC] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 1000000000000000000..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000000000000000000 --create 6300000009601260003963000000096000F3434542454244402055 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest623BC] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest623BC] Processing transaction number 677 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8C7396241222B1EC8A88a1383012819cf21B39d5) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 690b9223727206add1fcea7c1786b548d31a52d49674dbe3f5b615a771adcca1 --timeout 20 --value 100000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x42 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

