# PRV_KEY for master sender 0xd7F05ce7675fDBb751133760260cf44AD0DE336d
PRV_KEY=01ee6249ed98e94e75e59feeeed461e826ef847b8b3594be56d849ceb23b39f7
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest170 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/randomStatetest170Filler.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+100000))
echo "[randomStatetest170] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x339Ff7eB2e229F08dbc471C15039f16E65bD4F1b) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x339Ff7eB2e229F08dbc471C15039f16E65bD4F1b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest170] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 1000000000000000000..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000000000000000000 --create 6300000005601260003963000000056000F34445413155 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest170] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest170] Processing transaction number 731 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x339Ff7eB2e229F08dbc471C15039f16E65bD4F1b) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 1284c4b838e5b0ef10912bce4b5f7e8ff108dac62fb796e1bd3761709344f6c6 --timeout 20 --value 100000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x42 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

