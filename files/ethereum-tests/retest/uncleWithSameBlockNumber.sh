# PRV_KEY for master sender 0x876b55D912b189034880f5A20f8A90f83FF3a169
PRV_KEY=83255bfdd14b0f9db28db64b92915159842f6a8fc68c18c5a708bdfb34efe33b
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test uncleWithSameBlockNumber (src/BlockchainTestsFiller/InvalidBlocks/bcUncleTest/uncleWithSameBlockNumberFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[uncleWithSameBlockNumber] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x6d1dd127593FFe8E450225772b390f883a459308) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x6d1dd127593FFe8E450225772b390f883a459308 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[uncleWithSameBlockNumber] Processing transaction number 181 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x6d1dd127593FFe8E450225772b390f883a459308) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 768fe653129b397d1f748041178f807392879995ef6a5b12f202ae6310e60ada --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[uncleWithSameBlockNumber] Processing transaction number 182 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x6d1dd127593FFe8E450225772b390f883a459308) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 768fe653129b397d1f748041178f807392879995ef6a5b12f202ae6310e60ada --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[uncleWithSameBlockNumber] Processing transaction number 183 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x6d1dd127593FFe8E450225772b390f883a459308) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 768fe653129b397d1f748041178f807392879995ef6a5b12f202ae6310e60ada --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

