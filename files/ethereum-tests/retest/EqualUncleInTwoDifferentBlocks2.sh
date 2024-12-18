# PRV_KEY for master sender 0xfA4119Fb59Df591d3195F1d9Bb164181C1f82Fe0
PRV_KEY=0898e9efe3bb3ebb85d32a6426b1fd515656ba349662e2bacc1f66fd270cebfe
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test EqualUncleInTwoDifferentBlocks2 (src/BlockchainTestsFiller/InvalidBlocks/bcUncleTest/EqualUncleInTwoDifferentBlocks2Filler.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[EqualUncleInTwoDifferentBlocks2] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xB263e6A6157f11301ffb0936f2a04544bD7d87F7) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xB263e6A6157f11301ffb0936f2a04544bD7d87F7 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[EqualUncleInTwoDifferentBlocks2] Processing transaction number 172 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xB263e6A6157f11301ffb0936f2a04544bD7d87F7) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 74a0995d4f86edb89c11d13b6db0caaf0336ea416480b26f5c8bc9f4ead5c1e4 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[EqualUncleInTwoDifferentBlocks2] Processing transaction number 173 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xB263e6A6157f11301ffb0936f2a04544bD7d87F7) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 74a0995d4f86edb89c11d13b6db0caaf0336ea416480b26f5c8bc9f4ead5c1e4 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[EqualUncleInTwoDifferentBlocks2] Processing transaction number 174 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xB263e6A6157f11301ffb0936f2a04544bD7d87F7) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 74a0995d4f86edb89c11d13b6db0caaf0336ea416480b26f5c8bc9f4ead5c1e4 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

