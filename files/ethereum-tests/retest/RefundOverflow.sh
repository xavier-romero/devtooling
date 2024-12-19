# PRV_KEY for master sender 0x2fe743431B8B916C9ee983e414331d37655AC1e3
PRV_KEY=052a67f1cdbb7853a991cd464f08b3eeae315848cf4cc144d98238a4edbfc8d3
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test RefundOverflow (src/BlockchainTestsFiller/InvalidBlocks/bcStateTests/RefundOverflowFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[RefundOverflow] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x6e9015F1d55a6611c5786BA7E15989ad0a83Fa85) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x6e9015F1d55a6611c5786BA7E15989ad0a83Fa85 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[RefundOverflow] Funding sender 0x55d786DF68385b59b919E0BfeE2A8Ada2D23Ecf8(remapped to 0x5Cf92267D077bE9f783A03c23b86d20Ad2a4CE4F) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x5Cf92267D077bE9f783A03c23b86d20Ad2a4CE4F | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[RefundOverflow] Processing transaction number 139 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x6e9015F1d55a6611c5786BA7E15989ad0a83Fa85) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key a4b7d9e39f48c4bda812478400406cd9657dd732e66fb361a87119a7e038f6c7 --timeout 20 --value 0 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[RefundOverflow] Processing transaction number 140 from 0x55d786DF68385b59b919E0BfeE2A8Ada2D23Ecf8(remapped to 0x5Cf92267D077bE9f783A03c23b86d20Ad2a4CE4F) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 271d2ffca60b2ce0baf3bd23bb0065461534591d1e6ad23a1bbe6f76cd1b04f1 --timeout 20 --value 0 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

