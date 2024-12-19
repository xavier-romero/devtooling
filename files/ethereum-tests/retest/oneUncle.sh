# PRV_KEY for master sender 0x0a5BA855cfd786b81BC6fb33c0E24e18D7B7c1dc
PRV_KEY=a6d21376a1321dc7ea92a16c4a187f9834c417623b0f416f55f331ebfecd666f
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test oneUncle (src/BlockchainTestsFiller/InvalidBlocks/bcUncleTest/oneUncleFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[oneUncle] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xdD6d586294E748a4B44D021D0bf52AcBF33B9FE6) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xdD6d586294E748a4B44D021D0bf52AcBF33B9FE6 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncle] Processing transaction number 216 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xdD6d586294E748a4B44D021D0bf52AcBF33B9FE6) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 73b6cf84a3bda0b65d4253c4857e94a77af608648c2da87b6492615331c8bb05 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncle] Processing transaction number 217 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xdD6d586294E748a4B44D021D0bf52AcBF33B9FE6) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 73b6cf84a3bda0b65d4253c4857e94a77af608648c2da87b6492615331c8bb05 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncle] Processing transaction number 218 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xdD6d586294E748a4B44D021D0bf52AcBF33B9FE6) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 73b6cf84a3bda0b65d4253c4857e94a77af608648c2da87b6492615331c8bb05 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

