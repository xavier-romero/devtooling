# PRV_KEY for master sender 0xb47E71Bc5BF9a7F305c0E5f78993A0bc8Cf1FEb5
PRV_KEY=8306dbc7b2bc4a2f6e06d1fe2e65f8ebdde9dcaf2308c50f63baf4599bd330b4
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test threeUncle (src/BlockchainTestsFiller/InvalidBlocks/bcUncleTest/threeUncleFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[threeUncle] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xFca64F34ee525a660a2DCA5e983CcF6fA95FeDF6) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xFca64F34ee525a660a2DCA5e983CcF6fA95FeDF6 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[threeUncle] Processing transaction number 211 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xFca64F34ee525a660a2DCA5e983CcF6fA95FeDF6) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key e22181e4be80a3a923a3fe9f1f49773b771133589dc1e397aa5c2db15255cb8f --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[threeUncle] Processing transaction number 212 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xFca64F34ee525a660a2DCA5e983CcF6fA95FeDF6) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key e22181e4be80a3a923a3fe9f1f49773b771133589dc1e397aa5c2db15255cb8f --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[threeUncle] Processing transaction number 213 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xFca64F34ee525a660a2DCA5e983CcF6fA95FeDF6) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key e22181e4be80a3a923a3fe9f1f49773b771133589dc1e397aa5c2db15255cb8f --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

