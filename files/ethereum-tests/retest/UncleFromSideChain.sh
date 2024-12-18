# PRV_KEY for master sender 0xE495a02F9f5d7D8bd2BC90aF6bA9f846DFd4C8d1
PRV_KEY=1387859565da84bbdae961d1b8ec830553218e2bf16c40ebea5dc81aa5c454d4
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test UncleFromSideChain (src/BlockchainTestsFiller/InvalidBlocks/bcMultiChainTest/UncleFromSideChainFiller.json)"

AMOUNT=$((2*150000*9*$GAS_PRICE+550))
echo "[UncleFromSideChain] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xf8201EC7cf6A4F233395Bbf7Af00222b59aCAd04) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xf8201EC7cf6A4F233395Bbf7Af00222b59aCAd04 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[UncleFromSideChain] Processing transaction number 28 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xf8201EC7cf6A4F233395Bbf7Af00222b59aCAd04) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 32c502704e8e8b110af1408a589b63456d6fad0e9366d35ca6e4b4f62993ce0c --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[UncleFromSideChain] Processing transaction number 29 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xf8201EC7cf6A4F233395Bbf7Af00222b59aCAd04) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 32c502704e8e8b110af1408a589b63456d6fad0e9366d35ca6e4b4f62993ce0c --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[UncleFromSideChain] Processing transaction number 30 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xf8201EC7cf6A4F233395Bbf7Af00222b59aCAd04) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 32c502704e8e8b110af1408a589b63456d6fad0e9366d35ca6e4b4f62993ce0c --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[UncleFromSideChain] Processing transaction number 31 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xf8201EC7cf6A4F233395Bbf7Af00222b59aCAd04) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 32c502704e8e8b110af1408a589b63456d6fad0e9366d35ca6e4b4f62993ce0c --timeout 20 --value 100 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[UncleFromSideChain] Processing transaction number 32 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xf8201EC7cf6A4F233395Bbf7Af00222b59aCAd04) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 32c502704e8e8b110af1408a589b63456d6fad0e9366d35ca6e4b4f62993ce0c --timeout 20 --value 100 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[UncleFromSideChain] Processing transaction number 33 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xf8201EC7cf6A4F233395Bbf7Af00222b59aCAd04) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 32c502704e8e8b110af1408a589b63456d6fad0e9366d35ca6e4b4f62993ce0c --timeout 20 --value 100 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 0x34534540 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[UncleFromSideChain] Processing transaction number 34 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xf8201EC7cf6A4F233395Bbf7Af00222b59aCAd04) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 32c502704e8e8b110af1408a589b63456d6fad0e9366d35ca6e4b4f62993ce0c --timeout 20 --value 20 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[UncleFromSideChain] Processing transaction number 35 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xf8201EC7cf6A4F233395Bbf7Af00222b59aCAd04) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 32c502704e8e8b110af1408a589b63456d6fad0e9366d35ca6e4b4f62993ce0c --timeout 20 --value 100 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[UncleFromSideChain] Processing transaction number 36 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xf8201EC7cf6A4F233395Bbf7Af00222b59aCAd04) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 32c502704e8e8b110af1408a589b63456d6fad0e9366d35ca6e4b4f62993ce0c --timeout 20 --value 100 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

