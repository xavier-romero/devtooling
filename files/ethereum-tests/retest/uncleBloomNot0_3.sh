# PRV_KEY for master sender 0x545cd96F2bF6FfaE9D7F69FA03C95d73fdeA4972
PRV_KEY=c942f2a5223cc49e1e8decd02be1ccb26e2ea0fdf91a98fd660671bd3d69f5f1
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test uncleBloomNot0_3 (src/BlockchainTestsFiller/InvalidBlocks/bcUncleSpecialTests/uncleBloomNot0_3Filler.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[uncleBloomNot0_3] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0Fb4a926B425A2dda3351bBBBE1C02a779dCD3EA) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x0Fb4a926B425A2dda3351bBBBE1C02a779dCD3EA | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[uncleBloomNot0_3] Processing transaction number 10 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0Fb4a926B425A2dda3351bBBBE1C02a779dCD3EA) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 9981140da13ef5539aabf1c5193e19a599d7997bce479e935db601f972e9d7ba --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[uncleBloomNot0_3] Processing transaction number 11 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0Fb4a926B425A2dda3351bBBBE1C02a779dCD3EA) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 9981140da13ef5539aabf1c5193e19a599d7997bce479e935db601f972e9d7ba --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[uncleBloomNot0_3] Processing transaction number 12 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0Fb4a926B425A2dda3351bBBBE1C02a779dCD3EA) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 9981140da13ef5539aabf1c5193e19a599d7997bce479e935db601f972e9d7ba --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

