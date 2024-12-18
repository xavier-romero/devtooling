# PRV_KEY for master sender 0x246B07946236a26163d1ADF74a754b731A380a90
PRV_KEY=e07714327451ae654b989dbee7e79b88942fe1986f937bab2a1894d5ff9a710c
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test diffTooLow (src/BlockchainTestsFiller/InvalidBlocks/bcUncleHeaderValidity/diffTooLowFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[diffTooLow] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xa410b325ea74595F4147665DeCBa13E228ABE26D) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xa410b325ea74595F4147665DeCBa13E228ABE26D | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[diffTooLow] Processing transaction number 85 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xa410b325ea74595F4147665DeCBa13E228ABE26D) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key be5ff0d7b70fd934f20864701e5fd4c97636845e83139528a1a0e31db0161056 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[diffTooLow] Processing transaction number 86 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xa410b325ea74595F4147665DeCBa13E228ABE26D) to 0x0000000000000000000000000000000000000000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key be5ff0d7b70fd934f20864701e5fd4c97636845e83139528a1a0e31db0161056 --timeout 20 --value 10 0x0000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[diffTooLow] Processing transaction number 87 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xa410b325ea74595F4147665DeCBa13E228ABE26D) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key be5ff0d7b70fd934f20864701e5fd4c97636845e83139528a1a0e31db0161056 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

