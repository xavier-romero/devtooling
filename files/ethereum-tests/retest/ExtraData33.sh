# PRV_KEY for master sender 0x2729954572493152247814A7981279d900f50Cb8
PRV_KEY=bda44db4d2a68c9a4b5e4984516a84f0bc3db59f423064379ccb9bbf109b6fa9
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test ExtraData33 (src/BlockchainTestsFiller/InvalidBlocks/bcInvalidHeaderTest/ExtraData33Filler.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+5000000000))
echo "[ExtraData33] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8D1DB957bBa883ee1C9b651CCDFeC7d8E307eaBd) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x8D1DB957bBa883ee1C9b651CCDFeC7d8E307eaBd | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[ExtraData33] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 100..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100 --create 630000002c6012600039630000002c6000F37fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff600052600060206000a100 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[ExtraData33] Processing transaction number 277 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8D1DB957bBa883ee1C9b651CCDFeC7d8E307eaBd) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d5042924dd9da552cb738c1f4eaa3192f18dafd5d96f8572ced60a15e036db23 --timeout 20 --value 5000000000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

