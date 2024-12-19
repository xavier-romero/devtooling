# PRV_KEY for master sender 0xD3379319f7a195926Dd4672d0E2a71495C7E32ce
PRV_KEY=4691d1dd2bd8dc1af275179c0eb510f830841f90aecff6fe228014bbabfcd951
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test BerlinToLondonTransition (src/BlockchainTestsFiller/TransitionTests/bcBerlinToLondon/BerlinToLondonTransitionFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+0))
echo "[BerlinToLondonTransition] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x5241116999f2fab4BcF472F39dE8DdB83397e767) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x5241116999f2fab4BcF472F39dE8DdB83397e767 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[BerlinToLondonTransition] Processing transaction number 860 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x5241116999f2fab4BcF472F39dE8DdB83397e767) to None"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 46f630968e1f40872ae0334e59811efcd06aab2d7ee722207b66a47c36b800e0 --timeout 20 --value 0 --create 0x600c60015560068060126000396000f300fe600f60005500 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[BerlinToLondonTransition] Processing transaction number 861 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x5241116999f2fab4BcF472F39dE8DdB83397e767) to None"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 46f630968e1f40872ae0334e59811efcd06aab2d7ee722207b66a47c36b800e0 --timeout 20 --value 0 --create 0x600c60015560068060126000396000f300fe600f60005500 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[BerlinToLondonTransition] Processing transaction number 862 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x5241116999f2fab4BcF472F39dE8DdB83397e767) to None"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 46f630968e1f40872ae0334e59811efcd06aab2d7ee722207b66a47c36b800e0 --timeout 20 --value 0 --create 0x600c60015560068060126000396000f300fe600f60005500 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

