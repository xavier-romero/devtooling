# PRV_KEY for master sender 0x0da033E5C5d1ca6228c84172Dfbf52Da2E5F6A8b
PRV_KEY=47249650d4ad503f9479ed92d41e418983c48e97fb3ffe1c7f8c78df3ae710c3
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test gasLimitTooLowExactBoundLondon (src/BlockchainTestsFiller/InvalidBlocks/bcUncleHeaderValidity/gasLimitTooLowExactBoundLondonFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[gasLimitTooLowExactBoundLondon] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xace0346a980Db8C031b55A8F224f31580E5Cb46c) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xace0346a980Db8C031b55A8F224f31580E5Cb46c | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[gasLimitTooLowExactBoundLondon] Processing transaction number 64 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xace0346a980Db8C031b55A8F224f31580E5Cb46c) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 03b1d7d39ca5242f20c955bcdb8b569c8b995c8807419faae066d7d47b128e9a --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[gasLimitTooLowExactBoundLondon] Processing transaction number 65 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xace0346a980Db8C031b55A8F224f31580E5Cb46c) to 0x0000000000000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 03b1d7d39ca5242f20c955bcdb8b569c8b995c8807419faae066d7d47b128e9a --timeout 20 --value 10 0x0000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[gasLimitTooLowExactBoundLondon] Processing transaction number 66 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xace0346a980Db8C031b55A8F224f31580E5Cb46c) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 03b1d7d39ca5242f20c955bcdb8b569c8b995c8807419faae066d7d47b128e9a --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

