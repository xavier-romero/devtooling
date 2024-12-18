# PRV_KEY for master sender 0x1836aC5f7aa0B7F90597b0B771be32C92591f176
PRV_KEY=cf6673cdbae8cafdc7283324ab450f04b1667c9c54f4e15b6493915e83bf3070
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test RefundOverflow2 (src/BlockchainTestsFiller/InvalidBlocks/bcStateTests/RefundOverflow2Filler.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[RefundOverflow2] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x7064db25315CC55047b7bF49c5ec6a3fdC6ac949) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x7064db25315CC55047b7bF49c5ec6a3fdC6ac949 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[RefundOverflow2] Funding sender 0x55d786DF68385b59b919E0BfeE2A8Ada2D23Ecf8(remapped to 0x4cf8fb9f25c3fd9D1B9F22DD341861FE29cD24C1) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x4cf8fb9f25c3fd9D1B9F22DD341861FE29cD24C1 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[RefundOverflow2] Processing transaction number 128 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x7064db25315CC55047b7bF49c5ec6a3fdC6ac949) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 01d376fd6e686fa50937d9821e64fca090f66654277a3dced6feb6fbf1d6295a --timeout 20 --value 0 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[RefundOverflow2] Processing transaction number 129 from 0x55d786DF68385b59b919E0BfeE2A8Ada2D23Ecf8(remapped to 0x4cf8fb9f25c3fd9D1B9F22DD341861FE29cD24C1) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 5c498a8f467d54b2521bbca1a6cd3d55bcc002903fa40cafc19f6e88894bf368 --timeout 20 --value 0 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

