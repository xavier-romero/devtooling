# PRV_KEY for master sender 0xa35cBcB72b28959BBaa4DE058a77b56c0B43beb4
PRV_KEY=4a6cfe435e94730b03f4f733f0439dc2ee8460986579991e16d55c8bd0ca4d22
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test incorrectUncleNumber0 (src/BlockchainTestsFiller/InvalidBlocks/bcUncleHeaderValidity/incorrectUncleNumber0Filler.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[incorrectUncleNumber0] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x237AdceBD3fb0Db3d00c2e55e6D4B8C6b5AFFB6A) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x237AdceBD3fb0Db3d00c2e55e6D4B8C6b5AFFB6A | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[incorrectUncleNumber0] Processing transaction number 106 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x237AdceBD3fb0Db3d00c2e55e6D4B8C6b5AFFB6A) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d19d80fd11a334f15437ce020154c54d9b9876b80de0758fddd6232a133793f9 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[incorrectUncleNumber0] Processing transaction number 107 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x237AdceBD3fb0Db3d00c2e55e6D4B8C6b5AFFB6A) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d19d80fd11a334f15437ce020154c54d9b9876b80de0758fddd6232a133793f9 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[incorrectUncleNumber0] Processing transaction number 108 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x237AdceBD3fb0Db3d00c2e55e6D4B8C6b5AFFB6A) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d19d80fd11a334f15437ce020154c54d9b9876b80de0758fddd6232a133793f9 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

