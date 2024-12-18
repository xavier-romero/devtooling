# PRV_KEY for master sender 0xe912C5119cC699B625b4CeC5BDCBf58bD7fE2A3b
PRV_KEY=f3f2bfacc67ce156392c3fb4b788d13e5f075ef1968158ed4e99b07ad372ccc2
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test TransactionFromCoinbaseHittingBlockGasLimit1 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/TransactionFromCoinbaseHittingBlockGasLimit1Filler.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+10))
echo "[TransactionFromCoinbaseHittingBlockGasLimit1] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xEeeE4225a1DC9Ea97AaeA4513C847560949047B3) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xEeeE4225a1DC9Ea97AaeA4513C847560949047B3 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[TransactionFromCoinbaseHittingBlockGasLimit1] Processing transaction number 766 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xEeeE4225a1DC9Ea97AaeA4513C847560949047B3) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 8eb54d8505a8ec08b285352e76d4c6ef51462c4ee7321629b08718c9580f078d --timeout 20 --value 10 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

