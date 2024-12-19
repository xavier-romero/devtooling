# PRV_KEY for master sender 0x7b865F0Ceb6De91dA489943fb8a257f795fcE3E5
PRV_KEY=b8dac1ff7c0212a480c6af1e7748700d996f6b280c3df44a5c2e2dbb1fb41c7d
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test wrongParentHash (src/BlockchainTestsFiller/InvalidBlocks/bcUncleHeaderValidity/wrongParentHashFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[wrongParentHash] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x30e36a1B5A7f4D6FF96E60d7071e3eF277dFdD1C) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x30e36a1B5A7f4D6FF96E60d7071e3eF277dFdD1C | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[wrongParentHash] Processing transaction number 49 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x30e36a1B5A7f4D6FF96E60d7071e3eF277dFdD1C) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key cff6705285a83bfb2449c98e0e24c7ae8393a2c61a0565c1c0a5e229b08b8b7c --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[wrongParentHash] Processing transaction number 50 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x30e36a1B5A7f4D6FF96E60d7071e3eF277dFdD1C) to 0x0000000000000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key cff6705285a83bfb2449c98e0e24c7ae8393a2c61a0565c1c0a5e229b08b8b7c --timeout 20 --value 10 0x0000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[wrongParentHash] Processing transaction number 51 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x30e36a1B5A7f4D6FF96E60d7071e3eF277dFdD1C) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key cff6705285a83bfb2449c98e0e24c7ae8393a2c61a0565c1c0a5e229b08b8b7c --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

