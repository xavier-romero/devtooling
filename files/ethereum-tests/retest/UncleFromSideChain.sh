# PRV_KEY for master sender 0x9BEf9D01528EBdF4Da104fB79D89be6eE9d4bAed
PRV_KEY=65b66c0eb1586d0e794fa849444a8ba119388df736ad32928abe3a96eb92b511
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test UncleFromSideChain (src/BlockchainTestsFiller/InvalidBlocks/bcMultiChainTest/UncleFromSideChainFiller.json)"

AMOUNT=$((2*150000*9*$GAS_PRICE+550))
echo "[UncleFromSideChain] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x13c95F7e0D948ad95afA5B09Ca525c72cFE1FBCF) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x13c95F7e0D948ad95afA5B09Ca525c72cFE1FBCF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[UncleFromSideChain] Processing transaction number 28 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x13c95F7e0D948ad95afA5B09Ca525c72cFE1FBCF) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key a10f53da0db9e473ebda8384682a3737acb140abcf272afea99ac6ffd38bc9db --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[UncleFromSideChain] Processing transaction number 29 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x13c95F7e0D948ad95afA5B09Ca525c72cFE1FBCF) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key a10f53da0db9e473ebda8384682a3737acb140abcf272afea99ac6ffd38bc9db --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[UncleFromSideChain] Processing transaction number 30 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x13c95F7e0D948ad95afA5B09Ca525c72cFE1FBCF) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key a10f53da0db9e473ebda8384682a3737acb140abcf272afea99ac6ffd38bc9db --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[UncleFromSideChain] Processing transaction number 31 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x13c95F7e0D948ad95afA5B09Ca525c72cFE1FBCF) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key a10f53da0db9e473ebda8384682a3737acb140abcf272afea99ac6ffd38bc9db --timeout 20 --value 100 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[UncleFromSideChain] Processing transaction number 32 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x13c95F7e0D948ad95afA5B09Ca525c72cFE1FBCF) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key a10f53da0db9e473ebda8384682a3737acb140abcf272afea99ac6ffd38bc9db --timeout 20 --value 100 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[UncleFromSideChain] Processing transaction number 33 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x13c95F7e0D948ad95afA5B09Ca525c72cFE1FBCF) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key a10f53da0db9e473ebda8384682a3737acb140abcf272afea99ac6ffd38bc9db --timeout 20 --value 100 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 0x34534540 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[UncleFromSideChain] Processing transaction number 34 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x13c95F7e0D948ad95afA5B09Ca525c72cFE1FBCF) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key a10f53da0db9e473ebda8384682a3737acb140abcf272afea99ac6ffd38bc9db --timeout 20 --value 20 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[UncleFromSideChain] Processing transaction number 35 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x13c95F7e0D948ad95afA5B09Ca525c72cFE1FBCF) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key a10f53da0db9e473ebda8384682a3737acb140abcf272afea99ac6ffd38bc9db --timeout 20 --value 100 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[UncleFromSideChain] Processing transaction number 36 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x13c95F7e0D948ad95afA5B09Ca525c72cFE1FBCF) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key a10f53da0db9e473ebda8384682a3737acb140abcf272afea99ac6ffd38bc9db --timeout 20 --value 100 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

