# PRV_KEY for master sender 0xCD5761DA307349B52DfDEdf294f58236Eb22455e
PRV_KEY=e23eb5cf2ea4b4219bba4bf5e487b83730233dead5f9deca06635b37532d578c
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test TransactionNonceCheck2 (src/BlockchainTestsFiller/InvalidBlocks/bcStateTests/TransactionNonceCheck2Filler.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+10))
echo "[TransactionNonceCheck2] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xd9BED59a899eD1a1AF8C38E81707fCdEE1863c1C) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xd9BED59a899eD1a1AF8C38E81707fCdEE1863c1C | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[TransactionNonceCheck2] Processing transaction number 126 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xd9BED59a899eD1a1AF8C38E81707fCdEE1863c1C) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 7fb3575a5d519d2e13e6e72b0ba9b79fa65dd791e43a8e976bf7648bf229d09c --timeout 20 --value 10 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

