# PRV_KEY for master sender 0x0477050e15b9291aF550C5516ff6A4869e037a97
PRV_KEY=7fa6726d3e8abe2c7c7b7e905cb099b822cc3144a19617d51ad37264908c08b3
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test filling_wrongStorage_Istanbul (src/BlockchainTestsFiller/InvalidBlocks/bcExpectSection/wrongStorageCopier.json)"

echo "[filling_wrongStorage_Istanbul] Creating receiver 0xa94f5374fce5edbc8e2a8697c15331677e6ebf0b with code and balance 10000000000000..."
ADDR_A94F5374FCE5EDBC8E2A8697C15331677E6EBF0B=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 10000000000000 --create 6022600155 | jq -r .contractAddress)
echo $ADDR_A94F5374FCE5EDBC8E2A8697C15331677E6EBF0B

