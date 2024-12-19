# PRV_KEY for master sender 0x5c21675895073b67604f4E044A647DE3f208e59B
PRV_KEY=29d5398766f1fcc59dc9b5effded1ca32a399cc77fb9b69da5a8a135ec0e52c3
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test wrongGasUsed (src/BlockchainTestsFiller/InvalidBlocks/bcInvalidHeaderTest/wrongGasUsedFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+5000))
echo "[wrongGasUsed] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x9eAD6BfE0bEDebaFCa521364f3aE04e21672F5D7) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x9eAD6BfE0bEDebaFCa521364f3aE04e21672F5D7 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[wrongGasUsed] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 100..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100 --create 630000002c6012600039630000002c6000F37fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff600052600060206000a100 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[wrongGasUsed] Processing transaction number 267 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x9eAD6BfE0bEDebaFCa521364f3aE04e21672F5D7) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key c5e57049861fb1f0eeb6f1239484487da38deea9a7caa88e27317625319b56d0 --timeout 20 --value 5000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

