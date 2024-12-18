# PRV_KEY for master sender 0x1beBEb1826459ff2883De3a034Cd1EbbC748d684
PRV_KEY=fa78f62486de95a92496a38578c0c6be2a243536ad7c4218267e0ce28ca54f3e
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test oneUncleGeneration2 (src/BlockchainTestsFiller/InvalidBlocks/bcUncleTest/oneUncleGeneration2Filler.json)"

AMOUNT=$((2*150000*4*$GAS_PRICE+40))
echo "[oneUncleGeneration2] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8a391E1F39b328FceB20163B91CE404a26206f69) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x8a391E1F39b328FceB20163B91CE404a26206f69 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration2] Processing transaction number 168 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8a391E1F39b328FceB20163B91CE404a26206f69) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key e030209bc8387e22db4844adf6742fe839724a615740e2a1282d325b49b7bd2b --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration2] Processing transaction number 169 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8a391E1F39b328FceB20163B91CE404a26206f69) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key e030209bc8387e22db4844adf6742fe839724a615740e2a1282d325b49b7bd2b --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration2] Processing transaction number 170 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8a391E1F39b328FceB20163B91CE404a26206f69) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key e030209bc8387e22db4844adf6742fe839724a615740e2a1282d325b49b7bd2b --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration2] Processing transaction number 171 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8a391E1F39b328FceB20163B91CE404a26206f69) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key e030209bc8387e22db4844adf6742fe839724a615740e2a1282d325b49b7bd2b --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

