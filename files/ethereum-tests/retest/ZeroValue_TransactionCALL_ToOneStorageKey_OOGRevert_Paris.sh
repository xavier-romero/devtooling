# PRV_KEY for master sender 0x32531288378021c11131BE266A434ACCa3fd383C
PRV_KEY=c267b8cea55a8bbb161850bd6a5a7ec13d8be9a38851981d1190213b53ade95a
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test ZeroValue_TransactionCALL_ToOneStorageKey_OOGRevert_Paris (src/BlockchainTestsFiller/InvalidBlocks/bcStateTests/ZeroValue_TransactionCALL_ToOneStorageKey_OOGRevert_ParisFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[ZeroValue_TransactionCALL_ToOneStorageKey_OOGRevert_Paris] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x32d577044FA368B9EfA2F5635384D60E59018957) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x32d577044FA368B9EfA2F5635384D60E59018957 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[ZeroValue_TransactionCALL_ToOneStorageKey_OOGRevert_Paris] Creating receiver 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b with code and balance 10..."
ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 10 --create 6001600055 | jq -r .contractAddress)
echo $ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B

echo "[ZeroValue_TransactionCALL_ToOneStorageKey_OOGRevert_Paris] Processing transaction number 149 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x32d577044FA368B9EfA2F5635384D60E59018957) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key f1f27457b4e25bfefb7bcffdd2d715207344a761e7fab4b94e7b83db4006540d --timeout 20 --value 0 $ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

