# PRV_KEY for master sender 0x13dee60CbD5588737CE5f3Dea8a4B3dCE4c0FD65
PRV_KEY=1011ed4679b73a3e08c2b278a09890d3708e3a4ff3df16e04828b8ea64b2e4e6
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test gasLimitTooHigh2 (src/BlockchainTestsFiller/ValidBlocks/bcValidBlockTest/gasLimitTooHigh2Filler.json)"

AMOUNT=$((2*150000*4*$GAS_PRICE+40))
echo "[gasLimitTooHigh2] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x919992Dd516c0415EF072e329CEae3b34e103B5f) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x919992Dd516c0415EF072e329CEae3b34e103B5f | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[gasLimitTooHigh2] Processing transaction number 699 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x919992Dd516c0415EF072e329CEae3b34e103B5f) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 77f1b0bc07d2799c298f8123154c6213754c1b6ff2bc8544c051ff99df256180 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[gasLimitTooHigh2] Processing transaction number 700 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x919992Dd516c0415EF072e329CEae3b34e103B5f) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 77f1b0bc07d2799c298f8123154c6213754c1b6ff2bc8544c051ff99df256180 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[gasLimitTooHigh2] Processing transaction number 701 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x919992Dd516c0415EF072e329CEae3b34e103B5f) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 77f1b0bc07d2799c298f8123154c6213754c1b6ff2bc8544c051ff99df256180 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[gasLimitTooHigh2] Processing transaction number 702 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x919992Dd516c0415EF072e329CEae3b34e103B5f) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 77f1b0bc07d2799c298f8123154c6213754c1b6ff2bc8544c051ff99df256180 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

