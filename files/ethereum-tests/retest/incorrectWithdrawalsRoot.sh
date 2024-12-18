# PRV_KEY for master sender 0x01aa0803B2e6f9Dd24cd43005E3a3D1F30792B8B
PRV_KEY=1d92c10610e5887ab3d51792660390a48edef7803cad1ed55040192649313813
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test incorrectWithdrawalsRoot (src/BlockchainTestsFiller/InvalidBlocks/bc4895-withdrawals/incorrectWithdrawalsRootFiller.json)"

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[incorrectWithdrawalsRoot] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x6588C8989CAAC0e26b446EDa59e74e7185152f90) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x6588C8989CAAC0e26b446EDa59e74e7185152f90 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[incorrectWithdrawalsRoot] Processing transaction number 156 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x6588C8989CAAC0e26b446EDa59e74e7185152f90) to None"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 0e462a92676dca82bd1d176c8cca846dba0f4cbb558c1c8d3d28e021c8c1bc2b --timeout 20 --value 0 --create 0x600160015500 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[incorrectWithdrawalsRoot] Processing transaction number 157 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x6588C8989CAAC0e26b446EDa59e74e7185152f90) to None"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 0e462a92676dca82bd1d176c8cca846dba0f4cbb558c1c8d3d28e021c8c1bc2b --timeout 20 --value 0 --create 0x600160015500 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

