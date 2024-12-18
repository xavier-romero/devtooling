# PRV_KEY for master sender 0x774814C5CFE993feb8Ed460157c53a7C918E88cC
PRV_KEY=8383d1986e296cdfaefd6904e2ee93b3c45e4a9476f4cf8af6ed3aaf9e9af95c
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test wrongTransactionsTrie (src/BlockchainTestsFiller/InvalidBlocks/bcInvalidHeaderTest/wrongTransactionsTrieFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+5000))
echo "[wrongTransactionsTrie] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0e04696A5A1cBEdf670CffE1804550554C8626fE) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x0e04696A5A1cBEdf670CffE1804550554C8626fE | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[wrongTransactionsTrie] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 100..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100 --create 630000002c6012600039630000002c6000F37fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff600052600060206000a100 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[wrongTransactionsTrie] Processing transaction number 263 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0e04696A5A1cBEdf670CffE1804550554C8626fE) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ffc4abb9e8dda40ba4033b149a53e2b844b36a7852698189173ffca24e1c02fe --timeout 20 --value 5000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

