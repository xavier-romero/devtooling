# PRV_KEY for master sender 0x2CCBAB41C3cb8F04AE0c58F3d5B62b57a1e857e3
PRV_KEY=8020c732b6b7b81aa754ba8c11a05515d2398f1cfe06126115486e6149d1bccb
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test result_CancunEnvConvertion (src/BlockchainTestsFiller/InvalidBlocks/bcExpectSection/result_CancunEnvConvertionFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[result_CancunEnvConvertion] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x73C42C0Adf8d8cCB96f3663D55EF88Cd4F6F118d) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x73C42C0Adf8d8cCB96f3663D55EF88Cd4F6F118d | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[result_CancunEnvConvertion] Processing transaction number 113 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x73C42C0Adf8d8cCB96f3663D55EF88Cd4F6F118d) to None"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d2025f2971a414f2375e07e019e94fe06b86afe79aff6c1da4fd4d14d4ce29c5 --timeout 20 --value 0 --create 0x600c60015560068060126000396000f300fe600f60005500 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

