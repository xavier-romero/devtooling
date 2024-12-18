# PRV_KEY for master sender 0x5847C773075f94d3a2B90Ab184Ffc64a2B269148
PRV_KEY=bf5c92becd0a9230fb9fc6cbee3a31bdcc5c29b3eeadc3b876bcca7884c13faa
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test DifficultyIsZero (src/BlockchainTestsFiller/InvalidBlocks/bcInvalidHeaderTest/DifficultyIsZeroFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+5000))
echo "[DifficultyIsZero] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x4B130C7B5d74E1Ee2Fb5Ef65cAFb31CEE82E5bE9) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x4B130C7B5d74E1Ee2Fb5Ef65cAFb31CEE82E5bE9 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DifficultyIsZero] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 100..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100 --create 630000002c6012600039630000002c6000F37fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff600052600060206000a100 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[DifficultyIsZero] Processing transaction number 275 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x4B130C7B5d74E1Ee2Fb5Ef65cAFb31CEE82E5bE9) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 01838bc9f40cd9e59f09e4fb69a2a5671d16f1787df2b1ef1090589168290588 --timeout 20 --value 5000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

