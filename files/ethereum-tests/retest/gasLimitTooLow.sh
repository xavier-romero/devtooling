# PRV_KEY for master sender 0xF78560b4eb254caCE8bBb9c0f1D3d7F2d35a6A45
PRV_KEY=ec91e2a97142caef5bbf4863456aac00bc53c7aa91b3dcda340331e25a06f5c9
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test gasLimitTooLow (src/BlockchainTestsFiller/InvalidBlocks/bcUncleHeaderValidity/gasLimitTooLowFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[gasLimitTooLow] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x56E417B7f75bBDe84B6109D785C9CCf3c0b6D7cf) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x56E417B7f75bBDe84B6109D785C9CCf3c0b6D7cf | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[gasLimitTooLow] Processing transaction number 100 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x56E417B7f75bBDe84B6109D785C9CCf3c0b6D7cf) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 883c5afaa4d9d14ee82f8d27a62755c956c951808c9c2e0906ef8d84c5a56451 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[gasLimitTooLow] Processing transaction number 101 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x56E417B7f75bBDe84B6109D785C9CCf3c0b6D7cf) to 0x0000000000000000000000000000000000000000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 883c5afaa4d9d14ee82f8d27a62755c956c951808c9c2e0906ef8d84c5a56451 --timeout 20 --value 10 0x0000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[gasLimitTooLow] Processing transaction number 102 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x56E417B7f75bBDe84B6109D785C9CCf3c0b6D7cf) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 883c5afaa4d9d14ee82f8d27a62755c956c951808c9c2e0906ef8d84c5a56451 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

