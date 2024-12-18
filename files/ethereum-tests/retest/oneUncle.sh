# PRV_KEY for master sender 0xbdadA24d8D83cf1c042127F3b9b2D910E3E26A62
PRV_KEY=2d62ffd8d21dd5a62e8766698dd5f1eb1e1a8b9e3b26552ba9165fa3c427e90b
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test oneUncle (src/BlockchainTestsFiller/InvalidBlocks/bcUncleTest/oneUncleFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[oneUncle] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x1f5e37312bEe5C4136e74273cb98356c5534b5Ea) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x1f5e37312bEe5C4136e74273cb98356c5534b5Ea | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncle] Processing transaction number 216 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x1f5e37312bEe5C4136e74273cb98356c5534b5Ea) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 84e9d8367f1a2c2cb79fea051e0b41f21eb332fb31663077de6dba29e393a314 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncle] Processing transaction number 217 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x1f5e37312bEe5C4136e74273cb98356c5534b5Ea) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 84e9d8367f1a2c2cb79fea051e0b41f21eb332fb31663077de6dba29e393a314 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncle] Processing transaction number 218 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x1f5e37312bEe5C4136e74273cb98356c5534b5Ea) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 84e9d8367f1a2c2cb79fea051e0b41f21eb332fb31663077de6dba29e393a314 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

