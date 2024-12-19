# PRV_KEY for master sender 0xD105e0b606c01F81610a56C2Fc1b2a0A15699350
PRV_KEY=2516bbfafdfddd1d27a5963c366da10eed1ce031bbe4f13502aa599ca4faf2cc
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test amountIs0TouchAccountAndTransaction (src/BlockchainTestsFiller/InvalidBlocks/bc4895-withdrawals/amountIs0TouchAccountAndTransactionFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+1))
echo "[amountIs0TouchAccountAndTransaction] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x2106D778CE65041B7A3B5Af245c7222BCfd47009) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x2106D778CE65041B7A3B5Af245c7222BCfd47009 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[amountIs0TouchAccountAndTransaction] Processing transaction number 167 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x2106D778CE65041B7A3B5Af245c7222BCfd47009) to 0xc94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key bd9bce772b22ec9a17770a14cb932a70c7b9cc527af6832dd48bcd7f307456eb --timeout 20 --value 1 0xc94f5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

