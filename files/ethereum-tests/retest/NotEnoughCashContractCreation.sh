# PRV_KEY for master sender 0x9787dEBB0e42D12E73e6A3bef7A18Dbaf9012d1f
PRV_KEY=223e6523af3071e3a1021c2823a74568f8041d408f842f317129a05d36773c7c
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test NotEnoughCashContractCreation (src/BlockchainTestsFiller/InvalidBlocks/bcStateTests/NotEnoughCashContractCreationFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+100))
echo "[NotEnoughCashContractCreation] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x9883eDafb04f1Cf9DFc7bBe9D0bBF5D416Ef423F) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x9883eDafb04f1Cf9DFc7bBe9D0bBF5D416Ef423F | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[NotEnoughCashContractCreation] Processing transaction number 150 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x9883eDafb04f1Cf9DFc7bBe9D0bBF5D416Ef423F) to None"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key b9e113c2c48682ba3a6680cfadb54677e11b35426f808d6a5c8aa3c3e76feab1 --timeout 20 --value 100 --create 0x600a80600c6000396000f200600160008035811a8100 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

