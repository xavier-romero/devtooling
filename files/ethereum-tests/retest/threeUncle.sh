# PRV_KEY for master sender 0x4043598b22Dc590F53D23E8AE91267ba70ee66E5
PRV_KEY=37c99e42e2689890398a78a3409d13425aff2bf3f6b61c497ae0b28204911b9e
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test threeUncle (src/BlockchainTestsFiller/InvalidBlocks/bcUncleTest/threeUncleFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[threeUncle] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x198D3B774ee98A0F573a22D374B15D7BFE40A8a4) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x198D3B774ee98A0F573a22D374B15D7BFE40A8a4 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[threeUncle] Processing transaction number 211 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x198D3B774ee98A0F573a22D374B15D7BFE40A8a4) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 5d12b7d223d9747a8af988bcb6c37c9d513cf46ff7ef8e01e6112658be97da7d --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[threeUncle] Processing transaction number 212 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x198D3B774ee98A0F573a22D374B15D7BFE40A8a4) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 5d12b7d223d9747a8af988bcb6c37c9d513cf46ff7ef8e01e6112658be97da7d --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[threeUncle] Processing transaction number 213 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x198D3B774ee98A0F573a22D374B15D7BFE40A8a4) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 5d12b7d223d9747a8af988bcb6c37c9d513cf46ff7ef8e01e6112658be97da7d --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

