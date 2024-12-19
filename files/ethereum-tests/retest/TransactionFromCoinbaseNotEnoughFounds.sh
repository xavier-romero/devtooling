# PRV_KEY for master sender 0xda65474c55E70ae7D989dA457488E8c6aeb49acF
PRV_KEY=cf9dbcec082ce583cbe063f7361dc3ab21e2e54738dd059666938cad81403294
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test TransactionFromCoinbaseNotEnoughFounds (src/BlockchainTestsFiller/InvalidBlocks/bcStateTests/TransactionFromCoinbaseNotEnoughFoundsFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+115000))
echo "[TransactionFromCoinbaseNotEnoughFounds] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xd8D9534E1f9281385A61BFBe76ecA6b99EAa1bDd) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xd8D9534E1f9281385A61BFBe76ecA6b99EAa1bDd | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[TransactionFromCoinbaseNotEnoughFounds] Processing transaction number 136 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xd8D9534E1f9281385A61BFBe76ecA6b99EAa1bDd) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key be65df1ba7b792782f4b66685fdc3fb15a7a34a12ca8ecf20f802fa534eacbbf --timeout 20 --value 5000 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[TransactionFromCoinbaseNotEnoughFounds] Processing transaction number 137 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xd8D9534E1f9281385A61BFBe76ecA6b99EAa1bDd) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key be65df1ba7b792782f4b66685fdc3fb15a7a34a12ca8ecf20f802fa534eacbbf --timeout 20 --value 30000 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[TransactionFromCoinbaseNotEnoughFounds] Processing transaction number 138 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xd8D9534E1f9281385A61BFBe76ecA6b99EAa1bDd) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key be65df1ba7b792782f4b66685fdc3fb15a7a34a12ca8ecf20f802fa534eacbbf --timeout 20 --value 80000 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

