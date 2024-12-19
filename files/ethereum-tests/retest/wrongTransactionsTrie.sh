# PRV_KEY for master sender 0x693c5c2C8CC0B57792581bbD256F70648FBA4f92
PRV_KEY=9deaa289fffa1757a1261f32eaf6170c9a9f6cdb81c672bab8cdf02781d82d24
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test wrongTransactionsTrie (src/BlockchainTestsFiller/InvalidBlocks/bcInvalidHeaderTest/wrongTransactionsTrieFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+5000))
echo "[wrongTransactionsTrie] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x4e1904E694Fd8f70dE7004323Beff34454D14Dee) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x4e1904E694Fd8f70dE7004323Beff34454D14Dee | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[wrongTransactionsTrie] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 100..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100 --create 630000002c6012600039630000002c6000F37fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff600052600060206000a100 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[wrongTransactionsTrie] Processing transaction number 263 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x4e1904E694Fd8f70dE7004323Beff34454D14Dee) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key f701ef7c9ecc8f5d7bc73b6122041e0ac4bc1f067459b430bc21a88d95cb91c7 --timeout 20 --value 5000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

