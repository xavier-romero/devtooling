# PRV_KEY for master sender 0x39bA1AB8759779cB0bE45Bcc30240618d8bb82EC
PRV_KEY=69e89d51934631ebbd1e5550427c4d929fdab5286a77d2286e61b7b11a9d01bf
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test ZeroValue_TransactionCALL_ToOneStorageKey_OOGRevert_Paris (src/BlockchainTestsFiller/InvalidBlocks/bcStateTests/ZeroValue_TransactionCALL_ToOneStorageKey_OOGRevert_ParisFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[ZeroValue_TransactionCALL_ToOneStorageKey_OOGRevert_Paris] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x75E1B6fDC80EefCf0D213BF99226ce59620c3D54) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x75E1B6fDC80EefCf0D213BF99226ce59620c3D54 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[ZeroValue_TransactionCALL_ToOneStorageKey_OOGRevert_Paris] Creating receiver 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b with code and balance 10..."
ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 10 --create 6001600055 | jq -r .contractAddress)
echo $ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B

echo "[ZeroValue_TransactionCALL_ToOneStorageKey_OOGRevert_Paris] Processing transaction number 149 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x75E1B6fDC80EefCf0D213BF99226ce59620c3D54) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key df416ad84570752ca3de5661a9d0643d13dad3ee53dea16e8847f504d41dd07e --timeout 20 --value 0 $ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

