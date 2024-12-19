# PRV_KEY for master sender 0xFA6B194F30836D378dA046b04BDFd726f87b0e87
PRV_KEY=390d00a51ec3aab9461e2159005e6e678d2c9353282e486d9a6cd2160d88ab2c
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test TransactionNonceCheck2 (src/BlockchainTestsFiller/InvalidBlocks/bcStateTests/TransactionNonceCheck2Filler.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+10))
echo "[TransactionNonceCheck2] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x630d289b9f76b77a559971cd9E2cb0EBb30566b1) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x630d289b9f76b77a559971cd9E2cb0EBb30566b1 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[TransactionNonceCheck2] Processing transaction number 126 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x630d289b9f76b77a559971cd9E2cb0EBb30566b1) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key f71e35fd9d8fefaed9a518b17d633c7be6c35ed860488b665db0ba51bfd849cf --timeout 20 --value 10 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

