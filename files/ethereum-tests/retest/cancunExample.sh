# PRV_KEY for master sender 0x505bA8ea88A5bF58CCd3564d59a42440795976fC
PRV_KEY=909dd1f2534ef903179b58c5bbe0f02377f488cbee74558c0f56c312b688067e
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test cancunExample (src/EIPTestsFiller/BlockchainTests/bcExample/cancunExampleFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[cancunExample] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xf9CddDF479122d0cb331E122E4af06C775695689) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xf9CddDF479122d0cb331E122E4af06C775695689 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[cancunExample] Creating receiver 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b with code and balance 100000000000000000..."
ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100000000000000000 --create 6300000007601260003963000000076000F360004960015500 | jq -r .contractAddress)
echo $ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B

echo "[cancunExample] Processing transaction number 914 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xf9CddDF479122d0cb331E122E4af06C775695689) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d6dad69bbe531fd7c60adfd48597c48a7b260fff89ece9e7e8c3acb8d99ec599 --timeout 20 --value 0 $ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

