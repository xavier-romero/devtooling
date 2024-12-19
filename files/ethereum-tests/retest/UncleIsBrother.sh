# PRV_KEY for master sender 0x1d64C6CcDe776aA4f02344D4472C7eef94f8a217
PRV_KEY=696d0eccfe04d02d113bf16ff3964edb952268ba001d71c9c10ed248b529aa85
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test UncleIsBrother (src/BlockchainTestsFiller/InvalidBlocks/bcUncleTest/UncleIsBrotherFiller.json)"

AMOUNT=$((2*150000*2*$GAS_PRICE+20))
echo "[UncleIsBrother] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xc60A9387Abba91ef7893dFBa46Cc360c818DC5B0) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xc60A9387Abba91ef7893dFBa46Cc360c818DC5B0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[UncleIsBrother] Processing transaction number 219 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xc60A9387Abba91ef7893dFBa46Cc360c818DC5B0) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 329e955ffe81b8f38a38cc133b03a2dc8d16dd832312fc18092d1da88e42ad8b --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[UncleIsBrother] Processing transaction number 220 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xc60A9387Abba91ef7893dFBa46Cc360c818DC5B0) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 329e955ffe81b8f38a38cc133b03a2dc8d16dd832312fc18092d1da88e42ad8b --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

