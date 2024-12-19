# PRV_KEY for master sender 0x40b45541B43f9b560E74db06FECa092a1fa18479
PRV_KEY=0c9ba42e6d852c4f5fd22732bd542c4860e1b250bcde17ddbcd5db22657c1499
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test timeDiff0 (src/BlockchainTestsFiller/InvalidBlocks/bcInvalidHeaderTest/timeDiff0Filler.json)"

AMOUNT=$((2*150000*2*$GAS_PRICE+12000))
echo "[timeDiff0] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xA330a72B84fd2a399b8415dE9c57E71B1cf994D3) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xA330a72B84fd2a399b8415dE9c57E71B1cf994D3 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[timeDiff0] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 100..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100 --create 630000002c6012600039630000002c6000F37fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff600052600060206000a100 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[timeDiff0] Processing transaction number 265 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xA330a72B84fd2a399b8415dE9c57E71B1cf994D3) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 2d3871135f1c71573416ee12e40b3ca0a8c46926fa867b1e434ee6e77e0c8df5 --timeout 20 --value 5000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[timeDiff0] Processing transaction number 266 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xA330a72B84fd2a399b8415dE9c57E71B1cf994D3) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 2d3871135f1c71573416ee12e40b3ca0a8c46926fa867b1e434ee6e77e0c8df5 --timeout 20 --value 7000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

