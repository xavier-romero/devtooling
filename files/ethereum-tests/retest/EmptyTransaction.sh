# PRV_KEY for master sender 0x4dEdc3683B03463cad6cC7Df8B4D6d1A22Aa4c16
PRV_KEY=359d9d1003b230f436a738586d7e5d50d29d033ddc1e9dab11babfcda01d70e0
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test EmptyTransaction (src/BlockchainTestsFiller/InvalidBlocks/bcStateTests/EmptyTransactionFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[EmptyTransaction] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x6Ba5291642594330878fd19718d577eFE1e46390) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x6Ba5291642594330878fd19718d577eFE1e46390 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[EmptyTransaction] Processing transaction number 123 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x6Ba5291642594330878fd19718d577eFE1e46390) to None"...
