# PRV_KEY for master sender 0x93BCB63Db4514124C4f37555A3E87435F3500813
PRV_KEY=033d0f2ab770fecd58df0a9958205066cb4fef9a495b9c0fcbfe5df046466e7e
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test txCost-sec73 (src/BlockchainTestsFiller/InvalidBlocks/bcStateTests/txCost-sec73Filler.json)"

AMOUNT=$((2*150000*2*$GAS_PRICE+200000))
echo "[txCost-sec73] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xC8Fcc9903601871a251F05557C0493DB2362014f) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xC8Fcc9903601871a251F05557C0493DB2362014f | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[txCost-sec73] Processing transaction number 130 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xC8Fcc9903601871a251F05557C0493DB2362014f) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key d3b1d6a58632a34001f1ba961ee836e6286db95905a6724ac35472f1f9c0f893 --timeout 20 --value 100000 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 0x00 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[txCost-sec73] Processing transaction number 131 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xC8Fcc9903601871a251F05557C0493DB2362014f) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key d3b1d6a58632a34001f1ba961ee836e6286db95905a6724ac35472f1f9c0f893 --timeout 20 --value 100000 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 0x00 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

