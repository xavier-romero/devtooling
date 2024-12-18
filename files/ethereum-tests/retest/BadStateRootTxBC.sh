# PRV_KEY for master sender 0x6664681EB617962F40826058AEE835E313e0023a
PRV_KEY=d9d2703c344e89d789a4112e9bdc34663df6fd6c59a4f99971dfebbb7f178337
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test BadStateRootTxBC (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/BadStateRootTxBCFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[BadStateRootTxBC] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x434035fD05f14F0980Edfe69349a36caFeb8df6a) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x434035fD05f14F0980Edfe69349a36caFeb8df6a | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[BadStateRootTxBC] Creating receiver 0x1baf27b88c48dd02b744999cf3522766929d2b2a with code and balance 1000..."
ADDR_1BAF27B88C48DD02B744999CF3522766929D2B2A=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000 --create 630000002f6012600039630000002f6000F3600073a94f5374fce5edbc8e2a8697c15331677e6ebf0b3314156023573540602035145b15602e576040356000555b | jq -r .contractAddress)
echo $ADDR_1BAF27B88C48DD02B744999CF3522766929D2B2A

echo "[BadStateRootTxBC] Processing transaction number 764 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x434035fD05f14F0980Edfe69349a36caFeb8df6a) to 0x1baf27b88c48dd02b744999cf3522766929d2b2a"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key b1abb5c4ec1afe8fd47193be4ccb6c424c19f82de12cdf5135fe2e0e751fc5b2 --timeout 20 --value 0 $ADDR_1BAF27B88C48DD02B744999CF3522766929D2B2A 0x00000000000000000000000000000000000000000000000000000000000bc03712fac13c68425054e372b0861af05648614d69d32800fba9ad4522238d4b937a0000000000000000000000000000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

