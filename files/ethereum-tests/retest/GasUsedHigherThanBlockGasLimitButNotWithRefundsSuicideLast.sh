# PRV_KEY for master sender 0xB8755108030Ce23f7aC133681c01D7B20163f0CB
PRV_KEY=1f35bb46c8d60810bb50249a13a8532d567db08282440d6e9951408ecb381ab0
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test GasUsedHigherThanBlockGasLimitButNotWithRefundsSuicideLast (src/BlockchainTestsFiller/InvalidBlocks/bcBlockGasLimitTest/GasUsedHigherThanBlockGasLimitButNotWithRefundsSuicideLastFiller.json)"

AMOUNT=$((2*150000*7*$GAS_PRICE+70))
echo "[GasUsedHigherThanBlockGasLimitButNotWithRefundsSuicideLast] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xd32f6D61a3Ba8DeB2fa26a9C5033E212D08704AA) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xd32f6D61a3Ba8DeB2fa26a9C5033E212D08704AA | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[GasUsedHigherThanBlockGasLimitButNotWithRefundsSuicideLast] Creating receiver 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b with code and balance 10000000000..."
ADDR_AAAF5374FCE5EDBC8E2A8697C15331677E6EBF0B=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 10000000000 --create 6300000016601260003963000000166000F373a94f5374fce5edbc8e2a8697c15331677e6ebf0bff | jq -r .contractAddress)
echo $ADDR_AAAF5374FCE5EDBC8E2A8697C15331677E6EBF0B

echo "[GasUsedHigherThanBlockGasLimitButNotWithRefundsSuicideLast] Processing transaction number 283 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xd32f6D61a3Ba8DeB2fa26a9C5033E212D08704AA) to 0xbbbf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 910e18e4859133b952214a09b9bae3dbd6354bb44c0fd5b5bb15c2f3f826ff8d --timeout 20 --value 10 0xbbbf5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[GasUsedHigherThanBlockGasLimitButNotWithRefundsSuicideLast] Processing transaction number 284 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xd32f6D61a3Ba8DeB2fa26a9C5033E212D08704AA) to 0xbbbf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 910e18e4859133b952214a09b9bae3dbd6354bb44c0fd5b5bb15c2f3f826ff8d --timeout 20 --value 10 0xbbbf5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[GasUsedHigherThanBlockGasLimitButNotWithRefundsSuicideLast] Processing transaction number 285 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xd32f6D61a3Ba8DeB2fa26a9C5033E212D08704AA) to 0xbbbf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 910e18e4859133b952214a09b9bae3dbd6354bb44c0fd5b5bb15c2f3f826ff8d --timeout 20 --value 10 0xbbbf5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[GasUsedHigherThanBlockGasLimitButNotWithRefundsSuicideLast] Processing transaction number 286 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xd32f6D61a3Ba8DeB2fa26a9C5033E212D08704AA) to 0xbbbf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 910e18e4859133b952214a09b9bae3dbd6354bb44c0fd5b5bb15c2f3f826ff8d --timeout 20 --value 10 0xbbbf5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[GasUsedHigherThanBlockGasLimitButNotWithRefundsSuicideLast] Processing transaction number 287 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xd32f6D61a3Ba8DeB2fa26a9C5033E212D08704AA) to 0xbbbf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 910e18e4859133b952214a09b9bae3dbd6354bb44c0fd5b5bb15c2f3f826ff8d --timeout 20 --value 10 0xbbbf5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[GasUsedHigherThanBlockGasLimitButNotWithRefundsSuicideLast] Processing transaction number 288 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xd32f6D61a3Ba8DeB2fa26a9C5033E212D08704AA) to 0xbbbf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 910e18e4859133b952214a09b9bae3dbd6354bb44c0fd5b5bb15c2f3f826ff8d --timeout 20 --value 10 0xbbbf5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[GasUsedHigherThanBlockGasLimitButNotWithRefundsSuicideLast] Processing transaction number 289 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xd32f6D61a3Ba8DeB2fa26a9C5033E212D08704AA) to 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 910e18e4859133b952214a09b9bae3dbd6354bb44c0fd5b5bb15c2f3f826ff8d --timeout 20 --value 10 $ADDR_AAAF5374FCE5EDBC8E2A8697C15331677E6EBF0B | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

