# PRV_KEY for master sender 0x374587420d64B7899DA7d167eEf6A90C3d690300
PRV_KEY=da6ce4085f0af303a398276362be0f9cf5c8d2d2bff4c34462bc97eb6dc46cbc
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test timestampTooLow (src/BlockchainTestsFiller/InvalidBlocks/bcUncleHeaderValidity/timestampTooLowFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[timestampTooLow] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x440d6f2b02E7Dbbc399FD1B3a0deE7F1f1961f16) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x440d6f2b02E7Dbbc399FD1B3a0deE7F1f1961f16 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[timestampTooLow] Processing transaction number 55 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x440d6f2b02E7Dbbc399FD1B3a0deE7F1f1961f16) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key cbf73745646e50844fdcb187f05d1f5737633d36c94ff4aa79052acacf3bf256 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[timestampTooLow] Processing transaction number 56 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x440d6f2b02E7Dbbc399FD1B3a0deE7F1f1961f16) to 0x0000000000000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key cbf73745646e50844fdcb187f05d1f5737633d36c94ff4aa79052acacf3bf256 --timeout 20 --value 10 0x0000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[timestampTooLow] Processing transaction number 57 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x440d6f2b02E7Dbbc399FD1B3a0deE7F1f1961f16) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key cbf73745646e50844fdcb187f05d1f5737633d36c94ff4aa79052acacf3bf256 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

