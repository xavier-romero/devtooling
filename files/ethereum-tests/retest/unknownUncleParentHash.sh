# PRV_KEY for master sender 0x0aAbE40B6c7a351A7df63344c6821C747aD2C805
PRV_KEY=232af3ef8efacf20c48e439380ca997da9dd47d759854c13205981ae3cdc64a4
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test unknownUncleParentHash (src/BlockchainTestsFiller/InvalidBlocks/bcUncleHeaderValidity/unknownUncleParentHashFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[unknownUncleParentHash] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0acA1291f82931f7ce6B2A061310294D485CEFB8) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x0acA1291f82931f7ce6B2A061310294D485CEFB8 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[unknownUncleParentHash] Processing transaction number 88 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0acA1291f82931f7ce6B2A061310294D485CEFB8) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 17ffe48bc8e2bec9ba986177bfec0431ac4e55c189ce8b54ecb7199e28cc3adf --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[unknownUncleParentHash] Processing transaction number 89 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0acA1291f82931f7ce6B2A061310294D485CEFB8) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 17ffe48bc8e2bec9ba986177bfec0431ac4e55c189ce8b54ecb7199e28cc3adf --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[unknownUncleParentHash] Processing transaction number 90 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0acA1291f82931f7ce6B2A061310294D485CEFB8) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 17ffe48bc8e2bec9ba986177bfec0431ac4e55c189ce8b54ecb7199e28cc3adf --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

