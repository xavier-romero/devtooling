# PRV_KEY for master sender 0xF3Dbcb6e16C90EBc966f81b0D8796D18e7C64e3d
PRV_KEY=628a13ca2e7df476efad1324b082570f34b61154565e25aaa9d8ef629c641d44
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test futureUncleTimestampDifficultyDrop4 (src/BlockchainTestsFiller/InvalidBlocks/bcUncleSpecialTests/futureUncleTimestampDifficultyDrop4Filler.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[futureUncleTimestampDifficultyDrop4] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x098f5cc7A31a4B1d1C402F1f47dB821503b2936E) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x098f5cc7A31a4B1d1C402F1f47dB821503b2936E | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[futureUncleTimestampDifficultyDrop4] Processing transaction number 7 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x098f5cc7A31a4B1d1C402F1f47dB821503b2936E) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 4580793e4413a071dedddee8f02c257d1c698b5fa8c279a2a7a58abcf3d7c179 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[futureUncleTimestampDifficultyDrop4] Processing transaction number 8 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x098f5cc7A31a4B1d1C402F1f47dB821503b2936E) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 4580793e4413a071dedddee8f02c257d1c698b5fa8c279a2a7a58abcf3d7c179 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[futureUncleTimestampDifficultyDrop4] Processing transaction number 9 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x098f5cc7A31a4B1d1C402F1f47dB821503b2936E) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 4580793e4413a071dedddee8f02c257d1c698b5fa8c279a2a7a58abcf3d7c179 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

