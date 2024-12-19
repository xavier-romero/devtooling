# PRV_KEY for master sender 0xB101B56586987C7A8CAB9882eCA66a89afEDE407
PRV_KEY=85d7f9d5d1f1f291b0e70b527c1e2368905ccff7024aa13daec203a09415b9ee
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test EmptyTransaction (src/BlockchainTestsFiller/InvalidBlocks/bcStateTests/EmptyTransactionFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[EmptyTransaction] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x54d9CBF4C13dFc21859431aDf466d110a2FD3899) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x54d9CBF4C13dFc21859431aDf466d110a2FD3899 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[EmptyTransaction] Processing transaction number 123 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x54d9CBF4C13dFc21859431aDf466d110a2FD3899) to None"...
