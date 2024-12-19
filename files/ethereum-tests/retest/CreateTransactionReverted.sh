# PRV_KEY for master sender 0xB724Bb8CBF7AA575Dd7D02a804Ac46dE3FcF1D76
PRV_KEY=6ad58d7cc1e4f60ee36d4d75c10ce58e74fdeb3d2d6d25cb0d5c7b9a3dbb0e38
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test CreateTransactionReverted (src/BlockchainTestsFiller/InvalidBlocks/bcStateTests/CreateTransactionRevertedFiller.json)"

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[CreateTransactionReverted] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x7C802e22c1F85c232DA7590cC09fe17B81dDFB0d) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x7C802e22c1F85c232DA7590cC09fe17B81dDFB0d | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[CreateTransactionReverted] Processing transaction number 133 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x7C802e22c1F85c232DA7590cC09fe17B81dDFB0d) to None"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key e2c490b64a283fbf92c71ae5f5256bb365dd456e70c447082fc8c71d03343b08 --timeout 20 --value 0 --create 0x602280600c6000396000f30060e060020a600035048063f8a8fd6d14601457005b601a6020565b60006000f35b56 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[CreateTransactionReverted] Processing transaction number 134 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x7C802e22c1F85c232DA7590cC09fe17B81dDFB0d) to None"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key e2c490b64a283fbf92c71ae5f5256bb365dd456e70c447082fc8c71d03343b08 --timeout 20 --value 0 --create 0x602280600c6000396000f30060e060020a600035048063f8a8fd6d14601457005b601a6020565b60006000f35b56 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

