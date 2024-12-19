# PRV_KEY for master sender 0x000C8509aa13463c96049d359ea8e2BA53B8F868
PRV_KEY=812fb44d3c62242fdede51ee91435260de23061ff18ce47111a420196e3059e5
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test gasLimitTooLowExactBound (src/BlockchainTestsFiller/InvalidBlocks/bcUncleHeaderValidity/gasLimitTooLowExactBoundFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[gasLimitTooLowExactBound] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0f1015dDDe781Ba7AB41b89F00ebc7778848f8f6) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x0f1015dDDe781Ba7AB41b89F00ebc7778848f8f6 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[gasLimitTooLowExactBound] Processing transaction number 82 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0f1015dDDe781Ba7AB41b89F00ebc7778848f8f6) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 9f7356f6d105fc999dc04771e77d675749191d590b2e86faf10122c50b6374df --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[gasLimitTooLowExactBound] Processing transaction number 83 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0f1015dDDe781Ba7AB41b89F00ebc7778848f8f6) to 0x0000000000000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 9f7356f6d105fc999dc04771e77d675749191d590b2e86faf10122c50b6374df --timeout 20 --value 10 0x0000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[gasLimitTooLowExactBound] Processing transaction number 84 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0f1015dDDe781Ba7AB41b89F00ebc7778848f8f6) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 9f7356f6d105fc999dc04771e77d675749191d590b2e86faf10122c50b6374df --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

