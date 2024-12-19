# PRV_KEY for master sender 0xAD77637A5816A73c72804dfc29d01A459e8bf203
PRV_KEY=a380c0b03fcf4d169e56621c5442e35be6e56c5080331257c8e5d6ba53bc4c0b
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test correct (src/BlockchainTestsFiller/InvalidBlocks/bcUncleHeaderValidity/correctFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[correct] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8FE9509c37E0C2c606a3C607Eb0420DFfb0882B7) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x8FE9509c37E0C2c606a3C607Eb0420DFfb0882B7 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[correct] Processing transaction number 37 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8FE9509c37E0C2c606a3C607Eb0420DFfb0882B7) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 854f02c7a6b9b888fe3bdea96a1381fd24e623e930f66628badab88c36f9d69e --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[correct] Processing transaction number 38 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8FE9509c37E0C2c606a3C607Eb0420DFfb0882B7) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 854f02c7a6b9b888fe3bdea96a1381fd24e623e930f66628badab88c36f9d69e --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[correct] Processing transaction number 39 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8FE9509c37E0C2c606a3C607Eb0420DFfb0882B7) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 854f02c7a6b9b888fe3bdea96a1381fd24e623e930f66628badab88c36f9d69e --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

