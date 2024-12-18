# PRV_KEY for master sender 0xE67B3bd79F2AA67d2522D7A28510fD91cA7537c3
PRV_KEY=853858484bf3245d9826da211f4cb9a6d8f4525ad0aac18332f57bb6e56d706d
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test ZeroValue_TransactionCALL_OOGRevert (src/BlockchainTestsFiller/InvalidBlocks/bcStateTests/ZeroValue_TransactionCALL_OOGRevertFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[ZeroValue_TransactionCALL_OOGRevert] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x572e264aeBf32475c75D0536734EEDF5D7e87CA3) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x572e264aeBf32475c75D0536734EEDF5D7e87CA3 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[ZeroValue_TransactionCALL_OOGRevert] Processing transaction number 132 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x572e264aeBf32475c75D0536734EEDF5D7e87CA3) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key b4726270da4fafabfd13faf7825b71081171fd25ca328f7e12530ed229a82fe6 --timeout 20 --value 0 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

