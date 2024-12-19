# PRV_KEY for master sender 0xFb7028a49d2Fa2EE1f644Db4578d2fe162741025
PRV_KEY=970ee19ed120fdb9ea75441d8de4507754aaea68b90379fb79fb780b8fd7e0f8
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test wrongDifficulty (src/BlockchainTestsFiller/InvalidBlocks/bcInvalidHeaderTest/wrongDifficultyFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+5000))
echo "[wrongDifficulty] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xBD2f4e60b877599e81b7332aCC6C4546AeF4CA0E) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xBD2f4e60b877599e81b7332aCC6C4546AeF4CA0E | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[wrongDifficulty] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 100..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100 --create 630000002c6012600039630000002c6000F37fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff600052600060206000a100 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[wrongDifficulty] Processing transaction number 268 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xBD2f4e60b877599e81b7332aCC6C4546AeF4CA0E) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 73b9165912fdbfe3eff2d33ae17fd6fb187e628d05bcb91168423d7f3274ee6e --timeout 20 --value 5000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

