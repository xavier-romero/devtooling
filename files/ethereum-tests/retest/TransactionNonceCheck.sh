# PRV_KEY for master sender 0x45f871C259d7A56a4b212F026A8c992D2f553aB4
PRV_KEY=0b40b553312776310eb7187bca92bdccb0ad717af11b8bcfea18822ccb40ccf7
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test TransactionNonceCheck (src/BlockchainTestsFiller/InvalidBlocks/bcStateTests/TransactionNonceCheckFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+10))
echo "[TransactionNonceCheck] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x3E00255Bc8E2d184Ac43e8bc36C1b62B7ee954f7) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x3E00255Bc8E2d184Ac43e8bc36C1b62B7ee954f7 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[TransactionNonceCheck] Processing transaction number 123 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x3E00255Bc8E2d184Ac43e8bc36C1b62B7ee954f7) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 117f1d3790463a3e56377cb2395bd273da284377804b7ce3491386c6965072da --timeout 20 --value 10 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

