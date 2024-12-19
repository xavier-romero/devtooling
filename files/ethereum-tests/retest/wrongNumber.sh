# PRV_KEY for master sender 0xab72583c91d1dF54B54802E1B4b406f15830ec6b
PRV_KEY=a3cf9ad5b1cf06ac5837b668d3821a3fb941f27a25364efe12f20aab4bfb225b
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test wrongNumber (src/BlockchainTestsFiller/InvalidBlocks/bcInvalidHeaderTest/wrongNumberFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+5000))
echo "[wrongNumber] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x630586F9013f63F0a451277f92b28987477c4828) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x630586F9013f63F0a451277f92b28987477c4828 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[wrongNumber] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 100..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100 --create 630000002c6012600039630000002c6000F37fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff600052600060206000a100 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[wrongNumber] Processing transaction number 269 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x630586F9013f63F0a451277f92b28987477c4828) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 3fe9463de6eab4cb3b1aecb98afa137d25b236a695c8a826acd5cff1f992d57b --timeout 20 --value 5000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

