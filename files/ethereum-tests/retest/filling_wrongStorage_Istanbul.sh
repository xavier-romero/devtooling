# PRV_KEY for master sender 0x708C35fa5595776Af67beB4C8B47C270dE5fACA4
PRV_KEY=497dcef42aca8b5e1a2dda87ceee0d5e117d5ef38df953bde4acf62fcb43bf57
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test filling_wrongStorage_Istanbul (src/BlockchainTestsFiller/InvalidBlocks/bcExpectSection/wrongStorageCopier.json)"

echo "[filling_wrongStorage_Istanbul] Creating receiver 0xa94f5374fce5edbc8e2a8697c15331677e6ebf0b with code and balance 10000000000000..."
ADDR_A94F5374FCE5EDBC8E2A8697C15331677E6EBF0B=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 10000000000000 --create 6022600155 | jq -r .contractAddress)
echo $ADDR_A94F5374FCE5EDBC8E2A8697C15331677E6EBF0B

