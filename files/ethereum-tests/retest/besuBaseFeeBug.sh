# PRV_KEY for master sender 0x709bb3D90e1660e5f29d44bf8c90bdc66d584f27
PRV_KEY=0bde9e87345b0b003001895d901bb4d1897d7e490faf76fab1eefbc9acf8923e
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test besuBaseFeeBug (src/BlockchainTestsFiller/ValidBlocks/bcEIP1559/besuBaseFeeBugFiller.json)"

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[besuBaseFeeBug] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x274Bdd61734fA3bEac0d8d34E21F58b18Dac08c8) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x274Bdd61734fA3bEac0d8d34E21F58b18Dac08c8 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[besuBaseFeeBug] Creating receiver 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b with code and balance 0..."
ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6300000008601260003963000000086000F3623fffff60002000 | jq -r .contractAddress)
echo $ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B

echo "[besuBaseFeeBug] Processing transaction number 297 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x274Bdd61734fA3bEac0d8d34E21F58b18Dac08c8) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key f8f13a3266acf42b620e6460ee6d5740135e392e0ae818500823e41e729f8efa --timeout 20 --value 0 $ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[besuBaseFeeBug] Processing transaction number 298 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x274Bdd61734fA3bEac0d8d34E21F58b18Dac08c8) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key f8f13a3266acf42b620e6460ee6d5740135e392e0ae818500823e41e729f8efa --timeout 20 --value 0 $ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

