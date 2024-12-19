# PRV_KEY for master sender 0xC201168FF16c730A10e0567aD72bC7F755607fc2
PRV_KEY=509fb87b09ee9a37d1e08b6dc7a54326a316432d541ea3c71e85e5c3ccaadee2
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test BadStateRootTxBC (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/BadStateRootTxBCFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[BadStateRootTxBC] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x2211e4F0D4a58c237abC12D4d6EC4105Cca825C4) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x2211e4F0D4a58c237abC12D4d6EC4105Cca825C4 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[BadStateRootTxBC] Creating receiver 0x1baf27b88c48dd02b744999cf3522766929d2b2a with code and balance 1000..."
ADDR_1BAF27B88C48DD02B744999CF3522766929D2B2A=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000 --create 630000002f6012600039630000002f6000F3600073a94f5374fce5edbc8e2a8697c15331677e6ebf0b3314156023573540602035145b15602e576040356000555b | jq -r .contractAddress)
echo $ADDR_1BAF27B88C48DD02B744999CF3522766929D2B2A

echo "[BadStateRootTxBC] Processing transaction number 764 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x2211e4F0D4a58c237abC12D4d6EC4105Cca825C4) to 0x1baf27b88c48dd02b744999cf3522766929d2b2a"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key b9189cbe436cf283054a245c39e6c9575259714e36fdd497a1987b5606207d2a --timeout 20 --value 0 $ADDR_1BAF27B88C48DD02B744999CF3522766929D2B2A 0x00000000000000000000000000000000000000000000000000000000000bc03712fac13c68425054e372b0861af05648614d69d32800fba9ad4522238d4b937a0000000000000000000000000000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

