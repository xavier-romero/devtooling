# PRV_KEY for master sender 0x693299A96Cc8Ca5f4358a24226db8717fFD122a8
PRV_KEY=05a5319a78951a6970682c940d4daf168329606bde2feea4023275c9620b526d
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test simpleSuicide (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/simpleSuicideFiller.json)"

AMOUNT=$((2*150000*2*$GAS_PRICE+1010))
echo "[simpleSuicide] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x28a234068D4024114422df2FDD08C3476B14CDAd) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x28a234068D4024114422df2FDD08C3476B14CDAd | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[simpleSuicide] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 100000..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100000 --create 6300000017601260003963000000176000F373a94f5374fce5edbc8e2a8697c15331677e6ebf0bff00 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[simpleSuicide] Processing transaction number 745 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x28a234068D4024114422df2FDD08C3476B14CDAd) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key f767975f0e7f17b48979ccc6c8686b45c25a89fdc42d380587472d81f1ecb1e9 --timeout 20 --value 10 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[simpleSuicide] Processing transaction number 746 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x28a234068D4024114422df2FDD08C3476B14CDAd) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key f767975f0e7f17b48979ccc6c8686b45c25a89fdc42d380587472d81f1ecb1e9 --timeout 20 --value 1000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

