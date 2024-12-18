# PRV_KEY for master sender 0xaC53aD08B61363079f5ECb7D4e42362f5e027E7b
PRV_KEY=00c255798b7e86572654359bbefee8b30d8edc59eda725b6d4fe56a295d926cc
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test futureUncleTimestamp2 (src/BlockchainTestsFiller/InvalidBlocks/bcUncleSpecialTests/futureUncleTimestamp2Filler.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[futureUncleTimestamp2] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x3c651F3791f5E94e3E6B543947449E070f429CD0) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x3c651F3791f5E94e3E6B543947449E070f429CD0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[futureUncleTimestamp2] Processing transaction number 22 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x3c651F3791f5E94e3E6B543947449E070f429CD0) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key b99350a40dfcda077c780ed6159aed93a13a570e0cfbb4a1eaa19dcbdd122348 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[futureUncleTimestamp2] Processing transaction number 23 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x3c651F3791f5E94e3E6B543947449E070f429CD0) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key b99350a40dfcda077c780ed6159aed93a13a570e0cfbb4a1eaa19dcbdd122348 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[futureUncleTimestamp2] Processing transaction number 24 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x3c651F3791f5E94e3E6B543947449E070f429CD0) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key b99350a40dfcda077c780ed6159aed93a13a570e0cfbb4a1eaa19dcbdd122348 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

