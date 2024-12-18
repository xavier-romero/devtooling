# PRV_KEY for master sender 0x9C33b2D1d5E030b88381E88A150aC6c7C6D1ffE2
PRV_KEY=dbcbbca8f5f266ea2554716de8591ac35380652fd6ad7ffd4950075082728a97
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test incorrectUncleTimestamp5 (src/BlockchainTestsFiller/InvalidBlocks/bcUncleHeaderValidity/incorrectUncleTimestamp5Filler.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[incorrectUncleTimestamp5] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8aA5De485FEc8F05020e18417Df7d905a4Aa06fa) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x8aA5De485FEc8F05020e18417Df7d905a4Aa06fa | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[incorrectUncleTimestamp5] Processing transaction number 61 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8aA5De485FEc8F05020e18417Df7d905a4Aa06fa) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 7d68a19934629546d50cbba9b80b306330ee4511cde46b0041916dcb2d592de3 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[incorrectUncleTimestamp5] Processing transaction number 62 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8aA5De485FEc8F05020e18417Df7d905a4Aa06fa) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 7d68a19934629546d50cbba9b80b306330ee4511cde46b0041916dcb2d592de3 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[incorrectUncleTimestamp5] Processing transaction number 63 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8aA5De485FEc8F05020e18417Df7d905a4Aa06fa) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 7d68a19934629546d50cbba9b80b306330ee4511cde46b0041916dcb2d592de3 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

