# PRV_KEY for master sender 0xc9Fa084d4010f336566081B7F2981e25a906e336
PRV_KEY=e43c3d24724f64d036a438dcf7e0f64688940a33d5f2443296941b0db8275051
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test gasLimitTooLowExactBound (src/BlockchainTestsFiller/InvalidBlocks/bcUncleHeaderValidity/gasLimitTooLowExactBoundFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[gasLimitTooLowExactBound] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x009cf775fafa8E0544F8f34C328d0f66C4A01B1c) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x009cf775fafa8E0544F8f34C328d0f66C4A01B1c | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[gasLimitTooLowExactBound] Processing transaction number 82 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x009cf775fafa8E0544F8f34C328d0f66C4A01B1c) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 511d4f53ee3d3d4941f7852f698e8f513ded2d2440d47637e0d62bc030d1995f --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[gasLimitTooLowExactBound] Processing transaction number 83 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x009cf775fafa8E0544F8f34C328d0f66C4A01B1c) to 0x0000000000000000000000000000000000000000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 511d4f53ee3d3d4941f7852f698e8f513ded2d2440d47637e0d62bc030d1995f --timeout 20 --value 10 0x0000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[gasLimitTooLowExactBound] Processing transaction number 84 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x009cf775fafa8E0544F8f34C328d0f66C4A01B1c) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 511d4f53ee3d3d4941f7852f698e8f513ded2d2440d47637e0d62bc030d1995f --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

