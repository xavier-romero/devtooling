# PRV_KEY for master sender 0xd102797575cdeDa2E012d584bAF58BA66C3b641b
PRV_KEY=7014473b29ab22d99ec285168160e58ba1e7467a7817ec6866e0fdb2b9ab0dda
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test filling_missingExpectedAccount (src/BlockchainTestsFiller/InvalidBlocks/bcExpectSection/filling_missingExpectedAccountFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+10))
echo "[filling_missingExpectedAccount] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xfb921Cd96AF6F3c4Db057b300b6172bB318B7287) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xfb921Cd96AF6F3c4Db057b300b6172bB318B7287 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[filling_missingExpectedAccount] Processing transaction number 119 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xfb921Cd96AF6F3c4Db057b300b6172bB318B7287) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 818e349d35b05348580cb65bbce4df8336fd4c7cbb24491e5f7d5529c0c1e721 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

