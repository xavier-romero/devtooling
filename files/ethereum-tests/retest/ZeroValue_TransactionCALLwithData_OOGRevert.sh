# PRV_KEY for master sender 0xCDB0A0ce5f67A994154149E00E55522fb131FA24
PRV_KEY=7ad53ed41efcac1fe2252b349048205207ac2274ebdf27be8700953194fc66da
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test ZeroValue_TransactionCALLwithData_OOGRevert (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/ZeroValue_TransactionCALLwithData_OOGRevertFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[ZeroValue_TransactionCALLwithData_OOGRevert] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xC348a10d05B4063c7cB39d5a55EF33Ae73E75Be7) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xC348a10d05B4063c7cB39d5a55EF33Ae73E75Be7 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[ZeroValue_TransactionCALLwithData_OOGRevert] Processing transaction number 759 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xC348a10d05B4063c7cB39d5a55EF33Ae73E75Be7) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key e4ce20c2756cd3e1d6e2d43dcd22592cedcb60bd611fd485abbbb98f59260957 --timeout 20 --value 0 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b 0x45a915e4d060149eb4365960e6a7a45f334393093061116b197e3240065ff2d845a915e4d060149eb4365960e6a7a45f334393093061116b197e3240065ff2d845a915e4d060149eb4365960e6a7a45f334393093061116b197e3240065ff2d845a915e4d060149eb4365960e6a7a45f334393093061116b197e3240065ff2d845a915e4d060149eb4365960e6a7a45f334393093061116b197e3240065ff2d845a915e4d060149eb4365960e6a7a45f334393093061116b197e3240065ff2d845a915e4d060149eb4365960e6a7a45f334393093061116b197e3240065ff2d845a915e4d060149eb4365960e6a7a45f334393093061116b197e3240065ff2d845a915e4d060149eb4365960e6a7a45f334393093061116b197e3240065ff2d845a915e4d060149eb4365960e6a7a45f334393093061116b197e3240065ff2d845a915e4d060149eb4365960e6a7a45f334393093061116b197e3240065ff2d845a915e4d060149eb4365960e6a7a45f334393093061116b197e3240065ff2d845a915e4d060149eb4365960e6a7a45f334393093061116b197e3240065ff2d845a915e4d060149eb4365960e6a7a45f334393093061116b197e3240065ff2d845a915e4d060149eb4365960e6a7a45f334393093061116b197e3240065ff2d845a915e4d060149eb4365960e6a7a45f334393093061116b197e3240065ff2d845a915e4d060149eb4365960e6a7a45f334393093061116b197e3240065ff2d845a915e4d060149eb4365960e6a7a45f334393093061116b197e3240065ff2d845a915e4d060149eb4365960e6a7a45f334393093061116b197e3240065ff2d845a915e4d060149eb4365960e6a7a45f334393093061116b197e3240065ff2d845a915e4d060149eb4365960e6a7a45f334393093061116b197e3240065ff2d845a915e4d060149eb4365960e6a7a45f334393093061116b197e3240065ff2d845a915e4d060149eb4365960e6a7a45f334393093061116b197e3240065ff2d845a915e4d060149eb4365960e6a7a45f334393093061116b197e3240065ff2d845a915e4d060149eb4365960e6a7a45f334393093061116b197e3240065ff2d845a915e4d060149eb4365960e6a7a45f334393093061116b197e3240065ff2d845a915e4d060149eb4365960e6a7a45f334393093061116b197e3240065ff2d845a915e4d060149eb4365960e6a7a45f334393093061116b197e3240065ff2d845a915e4d060149eb4365960e6a7a45f334393093061116b197e3240065ff2d845a915e4d060149eb4365960e6a7a45f334393093061116b197e3240065ff2d845a915e4d060149eb4365960e6a7a45f334393093061116b197e3240065ff2d845a915e4d060149eb4365960e6a7a45f334393093061116b197e3240065ff2d845a915e4d060149eb4365960e6a7a45f334393093061116b197e3240065ff2d845a915e4d060149eb4365960e6a7a45f334393093061116b197e3240065ff2d845a915e4d060149eb4365960e6a7a45f334393093061116b197e3240065ff2d8 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi
