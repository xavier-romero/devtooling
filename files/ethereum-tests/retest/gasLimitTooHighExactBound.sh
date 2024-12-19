# PRV_KEY for master sender 0x8966af23feBBf08808F423399ced443cf9C4d722
PRV_KEY=493f7967a326b7c4ad4ad493b9d1332d3e1acc0ababc06a0896a6aebb780e45a
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test gasLimitTooHighExactBound (src/BlockchainTestsFiller/InvalidBlocks/bcUncleHeaderValidity/gasLimitTooHighExactBoundFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[gasLimitTooHighExactBound] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xe6E76aBDa1C69749d09B0Ed0483dd6Cf3A8830DF) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xe6E76aBDa1C69749d09B0Ed0483dd6Cf3A8830DF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[gasLimitTooHighExactBound] Processing transaction number 40 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xe6E76aBDa1C69749d09B0Ed0483dd6Cf3A8830DF) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key c9979e21ace7f54b9a92676c11cea8d46a02343cbe027fe3a5040702cd75aaf8 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[gasLimitTooHighExactBound] Processing transaction number 41 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xe6E76aBDa1C69749d09B0Ed0483dd6Cf3A8830DF) to 0x0000000000000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key c9979e21ace7f54b9a92676c11cea8d46a02343cbe027fe3a5040702cd75aaf8 --timeout 20 --value 10 0x0000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[gasLimitTooHighExactBound] Processing transaction number 42 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xe6E76aBDa1C69749d09B0Ed0483dd6Cf3A8830DF) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key c9979e21ace7f54b9a92676c11cea8d46a02343cbe027fe3a5040702cd75aaf8 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

