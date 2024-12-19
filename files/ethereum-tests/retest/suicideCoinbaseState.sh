# PRV_KEY for master sender 0xc50f9e1a4aafdFf0EBa58976BA8905D026c44FE2
PRV_KEY=6ee89ddd48b83db723e3c00bc5f3aeeaa286f9a99e51e1a1f8ff3bffa9c4fec4
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test suicideCoinbaseState (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/suicideCoinbaseStateFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+100000))
echo "[suicideCoinbaseState] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x38f5E50dD4B2C3FE17bf38fb3c03d895bA7a6E79) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x38f5E50dD4B2C3FE17bf38fb3c03d895bA7a6E79 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[suicideCoinbaseState] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 1000000000000000000..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000000000000000000 --create 6300000017601260003963000000176000F373a94f5374fce5edbc8e2a8697c15331677e6ebf0bff00 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[suicideCoinbaseState] Processing transaction number 749 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x38f5E50dD4B2C3FE17bf38fb3c03d895bA7a6E79) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key bb3cc55ca9e8208398d87196c4991a9d6cd28503f64383c5af4d422d459be6ee --timeout 20 --value 100000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

