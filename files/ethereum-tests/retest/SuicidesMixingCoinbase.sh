# PRV_KEY for master sender 0xC1c9A79dd279329A2e708502d75f3CDEd848B553
PRV_KEY=97ccc880a85a086ecc33dc354ad9e4ead46e5f479cc03a33143833efc0c246d6
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test SuicidesMixingCoinbase (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/SuicidesMixingCoinbaseFiller.json)"

AMOUNT=$((2*150000*2*$GAS_PRICE+20))
echo "[SuicidesMixingCoinbase] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xdb84715BC65fFC5486A519096E3c7e58D5DE5Bc7) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xdb84715BC65fFC5486A519096E3c7e58D5DE5Bc7 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[SuicidesMixingCoinbase] Creating receiver 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b with code and balance 1000..."
ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000 --create 6300000017601260003963000000176000F373c94f5374fce5edbc8e2a8697c15331677e6ebf0bff00 | jq -r .contractAddress)
echo $ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B

echo "[SuicidesMixingCoinbase] Creating receiver 0xb24f5374fce5edbc8e2a8697c15331677e6ebf0b with code and balance 1000..."
ADDR_B24F5374FCE5EDBC8E2A8697C15331677E6EBF0B=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000 --create 6300000017601260003963000000176000F373c24f5374fce5edbc8e2a8697c15331677e6ebf0bff00 | jq -r .contractAddress)
echo $ADDR_B24F5374FCE5EDBC8E2A8697C15331677E6EBF0B

echo "[SuicidesMixingCoinbase] Processing transaction number 723 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xdb84715BC65fFC5486A519096E3c7e58D5DE5Bc7) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 15a105706b45d8d728204f89547a25e8b2746ec1e03d6aeb1561de82a2fef0c8 --timeout 20 --value 10 $ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[SuicidesMixingCoinbase] Processing transaction number 724 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xdb84715BC65fFC5486A519096E3c7e58D5DE5Bc7) to 0xb24f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 15a105706b45d8d728204f89547a25e8b2746ec1e03d6aeb1561de82a2fef0c8 --timeout 20 --value 10 $ADDR_B24F5374FCE5EDBC8E2A8697C15331677E6EBF0B | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

