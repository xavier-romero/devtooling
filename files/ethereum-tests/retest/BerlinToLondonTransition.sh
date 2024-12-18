# PRV_KEY for master sender 0xC8DfBFD1E8E91ad5A281b33C025Cf3252AB882ad
PRV_KEY=94c1c1420e654f14d445868688229022d45996fdd4b77c101ec9852b4cf3d1c1
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test BerlinToLondonTransition (src/BlockchainTestsFiller/TransitionTests/bcBerlinToLondon/BerlinToLondonTransitionFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+0))
echo "[BerlinToLondonTransition] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xf6082a458aF2FfB9D7e405F1dB526567eCCf8CB0) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xf6082a458aF2FfB9D7e405F1dB526567eCCf8CB0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[BerlinToLondonTransition] Processing transaction number 860 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xf6082a458aF2FfB9D7e405F1dB526567eCCf8CB0) to None"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 5df58f2c04aa82f6f6f358ba2b6b1997624d894cfda11ed03b6a3f1e4a36abe1 --timeout 20 --value 0 --create 0x600c60015560068060126000396000f300fe600f60005500 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[BerlinToLondonTransition] Processing transaction number 861 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xf6082a458aF2FfB9D7e405F1dB526567eCCf8CB0) to None"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 5df58f2c04aa82f6f6f358ba2b6b1997624d894cfda11ed03b6a3f1e4a36abe1 --timeout 20 --value 0 --create 0x600c60015560068060126000396000f300fe600f60005500 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[BerlinToLondonTransition] Processing transaction number 862 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xf6082a458aF2FfB9D7e405F1dB526567eCCf8CB0) to None"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 5df58f2c04aa82f6f6f358ba2b6b1997624d894cfda11ed03b6a3f1e4a36abe1 --timeout 20 --value 0 --create 0x600c60015560068060126000396000f300fe600f60005500 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

