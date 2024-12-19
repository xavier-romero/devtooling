# PRV_KEY for master sender 0xCc96438F51D07b69e516c1f34611e8a97e11724d
PRV_KEY=f0f8879d27fef27cc4aebaa470a26fdccd97aa369ff2fc1ec122041c50050503
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test diffTooLow2 (src/BlockchainTestsFiller/InvalidBlocks/bcUncleHeaderValidity/diffTooLow2Filler.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[diffTooLow2] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xB62d15f680411a2E5C6f0E27C57eC33363C6820B) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xB62d15f680411a2E5C6f0E27C57eC33363C6820B | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[diffTooLow2] Processing transaction number 52 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xB62d15f680411a2E5C6f0E27C57eC33363C6820B) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 5c145c6d72b6c1e89b6acbbf3c5abf4c44b5a0cdff2e06975153555eb1ebe6b6 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[diffTooLow2] Processing transaction number 53 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xB62d15f680411a2E5C6f0E27C57eC33363C6820B) to 0x0000000000000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 5c145c6d72b6c1e89b6acbbf3c5abf4c44b5a0cdff2e06975153555eb1ebe6b6 --timeout 20 --value 10 0x0000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[diffTooLow2] Processing transaction number 54 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xB62d15f680411a2E5C6f0E27C57eC33363C6820B) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 5c145c6d72b6c1e89b6acbbf3c5abf4c44b5a0cdff2e06975153555eb1ebe6b6 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

