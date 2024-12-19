# PRV_KEY for master sender 0xcfEF24aFA863E9485242623A2e8dFb2Ed8f76054
PRV_KEY=c980ea33553e7dbc737f5e72cd05ef3d7840f68fcf24cecabdf3289e45ca016e
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test timeDiff12 (src/BlockchainTestsFiller/ValidBlocks/bcValidBlockTest/timeDiff12Filler.json)"

AMOUNT=$((2*150000*2*$GAS_PRICE+12000))
echo "[timeDiff12] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x96539115bE45C808122a6BD76DD66b4808AE699C) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x96539115bE45C808122a6BD76DD66b4808AE699C | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[timeDiff12] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 100..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100 --create 630000002c6012600039630000002c6000F37fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff600052600060206000a100 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[timeDiff12] Processing transaction number 691 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x96539115bE45C808122a6BD76DD66b4808AE699C) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key c21df712ccb71a2b91ee3ab9a83f367004c580e054b89498d034d09b411c306e --timeout 20 --value 5000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[timeDiff12] Processing transaction number 692 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x96539115bE45C808122a6BD76DD66b4808AE699C) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key c21df712ccb71a2b91ee3ab9a83f367004c580e054b89498d034d09b411c306e --timeout 20 --value 7000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

