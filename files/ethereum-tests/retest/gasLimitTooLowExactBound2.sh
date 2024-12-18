# PRV_KEY for master sender 0xaDE559E040B573704eAaf9b2dC90c352acA3b0E6
PRV_KEY=9305c653b52bcca3965af5ad8f6e579bff380d1107a3af5186d4efad53202622
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test gasLimitTooLowExactBound2 (src/BlockchainTestsFiller/InvalidBlocks/bcUncleHeaderValidity/gasLimitTooLowExactBound2Filler.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[gasLimitTooLowExactBound2] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x821F142069AC6414c72C30173A38d43027fB41d8) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x821F142069AC6414c72C30173A38d43027fB41d8 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[gasLimitTooLowExactBound2] Processing transaction number 58 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x821F142069AC6414c72C30173A38d43027fB41d8) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key f4eb951493ddf54979bc1ad28d44751c9cf79b8a9bc311b8b1951ae25d509b9a --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[gasLimitTooLowExactBound2] Processing transaction number 59 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x821F142069AC6414c72C30173A38d43027fB41d8) to 0x0000000000000000000000000000000000000000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key f4eb951493ddf54979bc1ad28d44751c9cf79b8a9bc311b8b1951ae25d509b9a --timeout 20 --value 10 0x0000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[gasLimitTooLowExactBound2] Processing transaction number 60 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x821F142069AC6414c72C30173A38d43027fB41d8) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key f4eb951493ddf54979bc1ad28d44751c9cf79b8a9bc311b8b1951ae25d509b9a --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

