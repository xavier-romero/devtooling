# PRV_KEY for master sender 0x921F012045552f3398Bd7B09d67775559BF7b017
PRV_KEY=cf5d5e1b18feee72d39acab08df2f46da8b93f540e922edc841fd06003fd5129
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test GasUsedHigherThanBlockGasLimitButNotWithRefundsSuicideFirst (src/BlockchainTestsFiller/InvalidBlocks/bcBlockGasLimitTest/GasUsedHigherThanBlockGasLimitButNotWithRefundsSuicideFirstFiller.json)"

AMOUNT=$((2*150000*7*$GAS_PRICE+70))
echo "[GasUsedHigherThanBlockGasLimitButNotWithRefundsSuicideFirst] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x4AC422b7Ea096a191Ce4d4FF85443C3cBa1142AC) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x4AC422b7Ea096a191Ce4d4FF85443C3cBa1142AC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[GasUsedHigherThanBlockGasLimitButNotWithRefundsSuicideFirst] Creating receiver 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b with code and balance 10000000000..."
ADDR_AAAF5374FCE5EDBC8E2A8697C15331677E6EBF0B=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 10000000000 --create 6300000016601260003963000000166000F373a94f5374fce5edbc8e2a8697c15331677e6ebf0bff | jq -r .contractAddress)
echo $ADDR_AAAF5374FCE5EDBC8E2A8697C15331677E6EBF0B

echo "[GasUsedHigherThanBlockGasLimitButNotWithRefundsSuicideFirst] Processing transaction number 290 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x4AC422b7Ea096a191Ce4d4FF85443C3cBa1142AC) to 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 1727d389e009f6b54aceffaa030574ba1b4ae2cee2dcaf70464b13c4f0b4e304 --timeout 20 --value 10 $ADDR_AAAF5374FCE5EDBC8E2A8697C15331677E6EBF0B | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[GasUsedHigherThanBlockGasLimitButNotWithRefundsSuicideFirst] Processing transaction number 291 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x4AC422b7Ea096a191Ce4d4FF85443C3cBa1142AC) to 0xbbbf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 1727d389e009f6b54aceffaa030574ba1b4ae2cee2dcaf70464b13c4f0b4e304 --timeout 20 --value 10 0xbbbf5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[GasUsedHigherThanBlockGasLimitButNotWithRefundsSuicideFirst] Processing transaction number 292 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x4AC422b7Ea096a191Ce4d4FF85443C3cBa1142AC) to 0xbbbf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 1727d389e009f6b54aceffaa030574ba1b4ae2cee2dcaf70464b13c4f0b4e304 --timeout 20 --value 10 0xbbbf5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[GasUsedHigherThanBlockGasLimitButNotWithRefundsSuicideFirst] Processing transaction number 293 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x4AC422b7Ea096a191Ce4d4FF85443C3cBa1142AC) to 0xbbbf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 1727d389e009f6b54aceffaa030574ba1b4ae2cee2dcaf70464b13c4f0b4e304 --timeout 20 --value 10 0xbbbf5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[GasUsedHigherThanBlockGasLimitButNotWithRefundsSuicideFirst] Processing transaction number 294 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x4AC422b7Ea096a191Ce4d4FF85443C3cBa1142AC) to 0xbbbf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 1727d389e009f6b54aceffaa030574ba1b4ae2cee2dcaf70464b13c4f0b4e304 --timeout 20 --value 10 0xbbbf5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[GasUsedHigherThanBlockGasLimitButNotWithRefundsSuicideFirst] Processing transaction number 295 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x4AC422b7Ea096a191Ce4d4FF85443C3cBa1142AC) to 0xbbbf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 1727d389e009f6b54aceffaa030574ba1b4ae2cee2dcaf70464b13c4f0b4e304 --timeout 20 --value 10 0xbbbf5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[GasUsedHigherThanBlockGasLimitButNotWithRefundsSuicideFirst] Processing transaction number 296 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x4AC422b7Ea096a191Ce4d4FF85443C3cBa1142AC) to 0xbbbf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 1727d389e009f6b54aceffaa030574ba1b4ae2cee2dcaf70464b13c4f0b4e304 --timeout 20 --value 10 0xbbbf5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

