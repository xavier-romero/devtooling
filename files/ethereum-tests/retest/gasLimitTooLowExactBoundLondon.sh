# PRV_KEY for master sender 0xE89905F6d19393EfD92aece8f1e9Bb10A8992853
PRV_KEY=8ba47decc6c9b7f3f63e1e49dbee49c488132cfb9611622dcb1cb513eb4de4c8
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test gasLimitTooLowExactBoundLondon (src/BlockchainTestsFiller/InvalidBlocks/bcUncleHeaderValidity/gasLimitTooLowExactBoundLondonFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[gasLimitTooLowExactBoundLondon] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xF4C54d333A5C652a6D488c5cF22F76e182f9B1f2) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xF4C54d333A5C652a6D488c5cF22F76e182f9B1f2 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[gasLimitTooLowExactBoundLondon] Processing transaction number 64 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xF4C54d333A5C652a6D488c5cF22F76e182f9B1f2) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key e7dbd6c5d587b0ce28cb933cff4348eddcc8840b909dd89c9691b8c9774fd0e7 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[gasLimitTooLowExactBoundLondon] Processing transaction number 65 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xF4C54d333A5C652a6D488c5cF22F76e182f9B1f2) to 0x0000000000000000000000000000000000000000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key e7dbd6c5d587b0ce28cb933cff4348eddcc8840b909dd89c9691b8c9774fd0e7 --timeout 20 --value 10 0x0000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[gasLimitTooLowExactBoundLondon] Processing transaction number 66 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xF4C54d333A5C652a6D488c5cF22F76e182f9B1f2) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key e7dbd6c5d587b0ce28cb933cff4348eddcc8840b909dd89c9691b8c9774fd0e7 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

