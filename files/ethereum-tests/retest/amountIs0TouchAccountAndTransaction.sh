# PRV_KEY for master sender 0xF738782FAfF5580010d4Baaf58B53A857bCfc8B2
PRV_KEY=89d55702843654da023a18172681aa963860e3cea4139458ea3797176a0fb3fd
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test amountIs0TouchAccountAndTransaction (src/BlockchainTestsFiller/InvalidBlocks/bc4895-withdrawals/amountIs0TouchAccountAndTransactionFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+1))
echo "[amountIs0TouchAccountAndTransaction] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD5f27C62A602CED5720766aA08a847938E4eF4eD) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xD5f27C62A602CED5720766aA08a847938E4eF4eD | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[amountIs0TouchAccountAndTransaction] Processing transaction number 167 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD5f27C62A602CED5720766aA08a847938E4eF4eD) to 0xc94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 2fd3871d59ee73d9dbe483b4f6618cad444d01681e66d6ff8df11f5d7b009453 --timeout 20 --value 1 0xc94f5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

