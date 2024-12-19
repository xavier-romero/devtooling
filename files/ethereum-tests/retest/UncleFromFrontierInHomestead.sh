# PRV_KEY for master sender 0xFF108305a170EC50a65cB72efDC8D3Ebc1e5c71E
PRV_KEY=cf0ab4c201c620350857527cfa008a0c738f0e42ce8f01c3ea85a6505f448167
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test UncleFromFrontierInHomestead (src/BlockchainTestsFiller/TransitionTests/bcFrontierToHomestead/UncleFromFrontierInHomesteadFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+10))
echo "[UncleFromFrontierInHomestead] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE5848776A8457DC9627C58539AEc3A5944645bD1) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xE5848776A8457DC9627C58539AEc3A5944645bD1 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[UncleFromFrontierInHomestead] Processing transaction number 878 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE5848776A8457DC9627C58539AEc3A5944645bD1) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key bb2c82941506239b91c552cc0c0c8f19b9442809e36a5191b5d08404a6deb3ca --timeout 20 --value 10 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

