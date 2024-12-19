# PRV_KEY for master sender 0xee7b8BEE7E1347f03F2Ff1C4D2D479FCA292A615
PRV_KEY=5ebe667d3c04e366731d8abbf511c8efbfd1f754cabaa41ac02c1efa63d878a2
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test RefundOverflow2 (src/BlockchainTestsFiller/InvalidBlocks/bcStateTests/RefundOverflow2Filler.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[RefundOverflow2] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x871d6c58312cDBB53B34b1cF85C8Be9b48e6b2d0) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x871d6c58312cDBB53B34b1cF85C8Be9b48e6b2d0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[RefundOverflow2] Funding sender 0x55d786DF68385b59b919E0BfeE2A8Ada2D23Ecf8(remapped to 0x30399624229443Ab6F82e48dF4D11d71EE1dB88C) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x30399624229443Ab6F82e48dF4D11d71EE1dB88C | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[RefundOverflow2] Processing transaction number 128 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x871d6c58312cDBB53B34b1cF85C8Be9b48e6b2d0) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 438cc56f4f538ab5e65fd4100a401b3a9d85a57b60da62fdb6afe82b0d5d272a --timeout 20 --value 0 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[RefundOverflow2] Processing transaction number 129 from 0x55d786DF68385b59b919E0BfeE2A8Ada2D23Ecf8(remapped to 0x30399624229443Ab6F82e48dF4D11d71EE1dB88C) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 481b9a93c87db211ecbc8a884a0d014857ea08726410470ce2400829bafb0631 --timeout 20 --value 0 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

