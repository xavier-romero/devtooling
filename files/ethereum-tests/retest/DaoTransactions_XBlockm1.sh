# PRV_KEY for master sender 0xeFe562D087f0334c612E14d9e02af47cEAb47Dc2
PRV_KEY=6a98a285f76409ff786b20a1165657732320ce6fd9b5151bdc532716ed067b8b
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test DaoTransactions_XBlockm1 (src/BlockchainTestsFiller/TransitionTests/bcHomesteadToDao/DaoTransactions_XBlockm1Filler.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[DaoTransactions_XBlockm1] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x003C108bA37442A3DA36AF81cB75FC49e9c30dB2) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x003C108bA37442A3DA36AF81cB75FC49e9c30dB2 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions_XBlockm1] Processing transaction number 859 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x003C108bA37442A3DA36AF81cB75FC49e9c30dB2) to 0x1000000000000000000000000000000000000007"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 9a04bfd3f9a68a2596c549c380c929ad177c9f131e49b3ee63db48231e1cc617 --timeout 20 --value 0 0x1000000000000000000000000000000000000007 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

