# PRV_KEY for master sender 0xeEFF0F903FA70CC85Bc07E8D915b2D83cE6EbBe5
PRV_KEY=2328d270ef2dd4ed61f61b414fc04ad8adb1a6889cfefc4a91a9ad50746d44c9
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test gasLimitTooLowExactBound2 (src/BlockchainTestsFiller/InvalidBlocks/bcUncleHeaderValidity/gasLimitTooLowExactBound2Filler.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[gasLimitTooLowExactBound2] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x626f1fb2DFb733B7C63D6f777Ec29f41Fc0e52ed) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x626f1fb2DFb733B7C63D6f777Ec29f41Fc0e52ed | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[gasLimitTooLowExactBound2] Processing transaction number 58 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x626f1fb2DFb733B7C63D6f777Ec29f41Fc0e52ed) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 28fcf94a126dee9084fa829ce0a98cc910c6d08816235ba67d6d32e75cb66815 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[gasLimitTooLowExactBound2] Processing transaction number 59 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x626f1fb2DFb733B7C63D6f777Ec29f41Fc0e52ed) to 0x0000000000000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 28fcf94a126dee9084fa829ce0a98cc910c6d08816235ba67d6d32e75cb66815 --timeout 20 --value 10 0x0000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[gasLimitTooLowExactBound2] Processing transaction number 60 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x626f1fb2DFb733B7C63D6f777Ec29f41Fc0e52ed) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 28fcf94a126dee9084fa829ce0a98cc910c6d08816235ba67d6d32e75cb66815 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

