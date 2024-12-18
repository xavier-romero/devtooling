# PRV_KEY for master sender 0x18Ecc0e42072b8c9c2376DeEFc1f7DC85B1D207f
PRV_KEY=2de5c38daaa7aa9866566fc1960d44313e42341b0204a23c67372f4a6afa2d3e
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test TransactionNonceCheck (src/BlockchainTestsFiller/InvalidBlocks/bcStateTests/TransactionNonceCheckFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+10))
echo "[TransactionNonceCheck] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x733c28BC45e319F6fb67B9cE26e4fE94ed87c211) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x733c28BC45e319F6fb67B9cE26e4fE94ed87c211 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[TransactionNonceCheck] Processing transaction number 123 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x733c28BC45e319F6fb67B9cE26e4fE94ed87c211) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key bfbadf453c99dc09ab9ef3a271269ccec68b49daabcde00818d1ff024a4d25cd --timeout 20 --value 10 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

