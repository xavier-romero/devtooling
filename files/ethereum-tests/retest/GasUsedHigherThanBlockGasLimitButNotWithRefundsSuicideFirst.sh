# PRV_KEY for master sender 0x84C36a8DF8cE59805127B19f0B82D8916728B06a
PRV_KEY=83921d006d4c1800de51c987c27378994973f6ca694c8c2be8a91250b0bf6d05
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test GasUsedHigherThanBlockGasLimitButNotWithRefundsSuicideFirst (src/BlockchainTestsFiller/InvalidBlocks/bcBlockGasLimitTest/GasUsedHigherThanBlockGasLimitButNotWithRefundsSuicideFirstFiller.json)"

AMOUNT=$((2*150000*7*$GAS_PRICE+70))
echo "[GasUsedHigherThanBlockGasLimitButNotWithRefundsSuicideFirst] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xAd37698Ab83f1DF53b1c2a59Ec6D24E64A64172b) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xAd37698Ab83f1DF53b1c2a59Ec6D24E64A64172b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[GasUsedHigherThanBlockGasLimitButNotWithRefundsSuicideFirst] Creating receiver 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b with code and balance 10000000000..."
ADDR_AAAF5374FCE5EDBC8E2A8697C15331677E6EBF0B=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 10000000000 --create 6300000016601260003963000000166000F373a94f5374fce5edbc8e2a8697c15331677e6ebf0bff | jq -r .contractAddress)
echo $ADDR_AAAF5374FCE5EDBC8E2A8697C15331677E6EBF0B

echo "[GasUsedHigherThanBlockGasLimitButNotWithRefundsSuicideFirst] Processing transaction number 290 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xAd37698Ab83f1DF53b1c2a59Ec6D24E64A64172b) to 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 880842ea918ca424771e808bc3ed9144b4277248f0d051052dcd8ac5a1f5ad93 --timeout 20 --value 10 $ADDR_AAAF5374FCE5EDBC8E2A8697C15331677E6EBF0B | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[GasUsedHigherThanBlockGasLimitButNotWithRefundsSuicideFirst] Processing transaction number 291 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xAd37698Ab83f1DF53b1c2a59Ec6D24E64A64172b) to 0xbbbf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 880842ea918ca424771e808bc3ed9144b4277248f0d051052dcd8ac5a1f5ad93 --timeout 20 --value 10 0xbbbf5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[GasUsedHigherThanBlockGasLimitButNotWithRefundsSuicideFirst] Processing transaction number 292 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xAd37698Ab83f1DF53b1c2a59Ec6D24E64A64172b) to 0xbbbf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 880842ea918ca424771e808bc3ed9144b4277248f0d051052dcd8ac5a1f5ad93 --timeout 20 --value 10 0xbbbf5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[GasUsedHigherThanBlockGasLimitButNotWithRefundsSuicideFirst] Processing transaction number 293 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xAd37698Ab83f1DF53b1c2a59Ec6D24E64A64172b) to 0xbbbf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 880842ea918ca424771e808bc3ed9144b4277248f0d051052dcd8ac5a1f5ad93 --timeout 20 --value 10 0xbbbf5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[GasUsedHigherThanBlockGasLimitButNotWithRefundsSuicideFirst] Processing transaction number 294 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xAd37698Ab83f1DF53b1c2a59Ec6D24E64A64172b) to 0xbbbf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 880842ea918ca424771e808bc3ed9144b4277248f0d051052dcd8ac5a1f5ad93 --timeout 20 --value 10 0xbbbf5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[GasUsedHigherThanBlockGasLimitButNotWithRefundsSuicideFirst] Processing transaction number 295 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xAd37698Ab83f1DF53b1c2a59Ec6D24E64A64172b) to 0xbbbf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 880842ea918ca424771e808bc3ed9144b4277248f0d051052dcd8ac5a1f5ad93 --timeout 20 --value 10 0xbbbf5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[GasUsedHigherThanBlockGasLimitButNotWithRefundsSuicideFirst] Processing transaction number 296 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xAd37698Ab83f1DF53b1c2a59Ec6D24E64A64172b) to 0xbbbf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 880842ea918ca424771e808bc3ed9144b4277248f0d051052dcd8ac5a1f5ad93 --timeout 20 --value 10 0xbbbf5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

