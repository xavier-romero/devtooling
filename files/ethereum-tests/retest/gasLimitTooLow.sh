# PRV_KEY for master sender 0x40A4B3F811fd573813Ed7Ccff9CdEDF76B89F3BB
PRV_KEY=14b13037570368ba69154b9bf83c2a3a7eddc39e0ca571e6e13e5d48dccc79c6
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test gasLimitTooLow (src/BlockchainTestsFiller/InvalidBlocks/bcUncleHeaderValidity/gasLimitTooLowFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[gasLimitTooLow] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x02590E6fe9b0213D5ac53F7200fFBFFF8cF309C5) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x02590E6fe9b0213D5ac53F7200fFBFFF8cF309C5 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[gasLimitTooLow] Processing transaction number 100 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x02590E6fe9b0213D5ac53F7200fFBFFF8cF309C5) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 0f60174e894717c550b54f471742b940fe4efdefbf22a97ba4e3a4a47179c658 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[gasLimitTooLow] Processing transaction number 101 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x02590E6fe9b0213D5ac53F7200fFBFFF8cF309C5) to 0x0000000000000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 0f60174e894717c550b54f471742b940fe4efdefbf22a97ba4e3a4a47179c658 --timeout 20 --value 10 0x0000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[gasLimitTooLow] Processing transaction number 102 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x02590E6fe9b0213D5ac53F7200fFBFFF8cF309C5) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 0f60174e894717c550b54f471742b940fe4efdefbf22a97ba4e3a4a47179c658 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

