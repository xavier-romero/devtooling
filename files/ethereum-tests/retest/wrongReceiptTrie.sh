# PRV_KEY for master sender 0x4caCE6ba213B6f5cca09f51e29AF00a2702Caa1e
PRV_KEY=6d198fbb6aa3b2575995cc83f56a16e041b484c23bc91183a29dc1cd01372457
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test wrongReceiptTrie (src/BlockchainTestsFiller/InvalidBlocks/bcInvalidHeaderTest/wrongReceiptTrieFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+5000))
echo "[wrongReceiptTrie] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xFEc28bAC075141349762F57A0d00db6950499f0C) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xFEc28bAC075141349762F57A0d00db6950499f0C | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[wrongReceiptTrie] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 100..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100 --create 630000002c6012600039630000002c6000F37fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff600052600060206000a100 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[wrongReceiptTrie] Processing transaction number 273 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xFEc28bAC075141349762F57A0d00db6950499f0C) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key b8d5f9a7cbe2a548d183c9c742d30a91d2fdd734b995ab36e48dc40223f1029f --timeout 20 --value 5000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

