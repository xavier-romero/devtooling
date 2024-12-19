# PRV_KEY for master sender 0xf4E4b489eD4c09338A37237a9f3896e5f7011F0f
PRV_KEY=e5e4bb5cc6d8d00bd9b1b0c44d078fadaa2244d6316157a421e22138f2e34dfc
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test DifficultyIsZero (src/BlockchainTestsFiller/InvalidBlocks/bcInvalidHeaderTest/DifficultyIsZeroFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+5000))
echo "[DifficultyIsZero] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x225DE905CBf992DEda8Ac5949Ec7C631697ee6a2) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x225DE905CBf992DEda8Ac5949Ec7C631697ee6a2 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DifficultyIsZero] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 100..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100 --create 630000002c6012600039630000002c6000F37fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff600052600060206000a100 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[DifficultyIsZero] Processing transaction number 275 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x225DE905CBf992DEda8Ac5949Ec7C631697ee6a2) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key aa31e6afa36ca06bbec29e6ed92d72d4b2b47687c99abaacd7cbcdf7dba78a27 --timeout 20 --value 5000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

