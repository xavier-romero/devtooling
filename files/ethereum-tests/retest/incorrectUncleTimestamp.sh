# PRV_KEY for master sender 0xB341154cc6cF07F757a213EF869E393d14d39178
PRV_KEY=8fc04c02972a23a43ebabf87cc0d9f5f976feef2d33da8a3606b7604e87827b7
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test incorrectUncleTimestamp (src/BlockchainTestsFiller/InvalidBlocks/bcUncleHeaderValidity/incorrectUncleTimestampFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[incorrectUncleTimestamp] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x5fbd740F70D19eAe96d24756B1d46A64FAbc0425) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x5fbd740F70D19eAe96d24756B1d46A64FAbc0425 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[incorrectUncleTimestamp] Processing transaction number 46 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x5fbd740F70D19eAe96d24756B1d46A64FAbc0425) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key e1065bdc916ee6b7e9c1dcf2f78867b54c27805c94ec559fe15a1b8ef57ff878 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[incorrectUncleTimestamp] Processing transaction number 47 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x5fbd740F70D19eAe96d24756B1d46A64FAbc0425) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key e1065bdc916ee6b7e9c1dcf2f78867b54c27805c94ec559fe15a1b8ef57ff878 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[incorrectUncleTimestamp] Processing transaction number 48 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x5fbd740F70D19eAe96d24756B1d46A64FAbc0425) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key e1065bdc916ee6b7e9c1dcf2f78867b54c27805c94ec559fe15a1b8ef57ff878 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

