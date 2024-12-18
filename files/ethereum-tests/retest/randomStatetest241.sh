# PRV_KEY for master sender 0x8c94458a83A866f1c732Bf5b5B774fB43f4c6666
PRV_KEY=2a0e3957ce5c4cca5d563bb513c922d774d7e6e0b325eca9c27fe8444b50459a
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest241 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/randomStatetest241Filler.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+100000))
echo "[randomStatetest241] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x753A415C16d6931CB4486bcA236a5f01963f2AAB) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x753A415C16d6931CB4486bcA236a5f01963f2AAB | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest241] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 1000000000000000000..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000000000000000000 --create 630000000c6012600039630000000c6000F341421942450855678a044455 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest241] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest241] Processing transaction number 770 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x753A415C16d6931CB4486bcA236a5f01963f2AAB) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 4a9bc85b80ecd7019edb50f9d46fee81bdd1884eaae63f218ad0caab5eda0a94 --timeout 20 --value 100000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x42 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

