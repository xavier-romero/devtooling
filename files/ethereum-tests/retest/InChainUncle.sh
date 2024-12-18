# PRV_KEY for master sender 0x3B0742355B427d6bfEBeE8BA5fCA20938477c68f
PRV_KEY=a2eaf7d348ab6fe8e4aa49e6a84382512062f6d10316e14a771c8d2a4d0918c1
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test InChainUncle (src/BlockchainTestsFiller/InvalidBlocks/bcUncleTest/InChainUncleFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[InChainUncle] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x4850067195f2E0673C28f99B81a6DfE963116Da7) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x4850067195f2E0673C28f99B81a6DfE963116Da7 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncle] Processing transaction number 190 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x4850067195f2E0673C28f99B81a6DfE963116Da7) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 9fcce578b21983d4ec65465fad5339fe719c282a0da29b9094a20e41100c7135 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncle] Processing transaction number 191 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x4850067195f2E0673C28f99B81a6DfE963116Da7) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 9fcce578b21983d4ec65465fad5339fe719c282a0da29b9094a20e41100c7135 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncle] Processing transaction number 192 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x4850067195f2E0673C28f99B81a6DfE963116Da7) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 9fcce578b21983d4ec65465fad5339fe719c282a0da29b9094a20e41100c7135 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

