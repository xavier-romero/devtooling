# PRV_KEY for master sender 0x1C42A51C5772a6522C7F7cac5B4ad888dB5c54dC
PRV_KEY=caad014699799768c001266aeb279e49cba212700688243277c39662d60ceb43
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test uncleBloomNot0 (src/BlockchainTestsFiller/InvalidBlocks/bcUncleSpecialTests/uncleBloomNot0Filler.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[uncleBloomNot0] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x85BB1D4a26261e416926896a75b5DD046dCAA988) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x85BB1D4a26261e416926896a75b5DD046dCAA988 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[uncleBloomNot0] Processing transaction number 1 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x85BB1D4a26261e416926896a75b5DD046dCAA988) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 5581ba453fe0ee4be936534987e01f806f9e7d1015309627370a3f56225a2994 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[uncleBloomNot0] Processing transaction number 2 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x85BB1D4a26261e416926896a75b5DD046dCAA988) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 5581ba453fe0ee4be936534987e01f806f9e7d1015309627370a3f56225a2994 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[uncleBloomNot0] Processing transaction number 3 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x85BB1D4a26261e416926896a75b5DD046dCAA988) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 5581ba453fe0ee4be936534987e01f806f9e7d1015309627370a3f56225a2994 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

