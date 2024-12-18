# PRV_KEY for master sender 0xd3ae023eC5E702d1D03527D17BF99E23bEb47d89
PRV_KEY=5bfa4bae0db794d229505f706167e1a9fd8c20448be54e69de397c43f46b1a4f
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test oneUncleGeneration4 (src/BlockchainTestsFiller/InvalidBlocks/bcUncleTest/oneUncleGeneration4Filler.json)"

AMOUNT=$((2*150000*6*$GAS_PRICE+60))
echo "[oneUncleGeneration4] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xc5b825e77DC6ce54C130421848420B1c26dbc65d) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xc5b825e77DC6ce54C130421848420B1c26dbc65d | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration4] Processing transaction number 184 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xc5b825e77DC6ce54C130421848420B1c26dbc65d) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 756437f3af3c608f7f6a2a1d41304435d117d0db714a9e13243f377a7be6ceb0 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration4] Processing transaction number 185 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xc5b825e77DC6ce54C130421848420B1c26dbc65d) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 756437f3af3c608f7f6a2a1d41304435d117d0db714a9e13243f377a7be6ceb0 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration4] Processing transaction number 186 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xc5b825e77DC6ce54C130421848420B1c26dbc65d) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 756437f3af3c608f7f6a2a1d41304435d117d0db714a9e13243f377a7be6ceb0 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration4] Processing transaction number 187 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xc5b825e77DC6ce54C130421848420B1c26dbc65d) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 756437f3af3c608f7f6a2a1d41304435d117d0db714a9e13243f377a7be6ceb0 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration4] Processing transaction number 188 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xc5b825e77DC6ce54C130421848420B1c26dbc65d) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 756437f3af3c608f7f6a2a1d41304435d117d0db714a9e13243f377a7be6ceb0 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration4] Processing transaction number 189 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xc5b825e77DC6ce54C130421848420B1c26dbc65d) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 756437f3af3c608f7f6a2a1d41304435d117d0db714a9e13243f377a7be6ceb0 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

