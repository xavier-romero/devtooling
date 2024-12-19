# PRV_KEY for master sender 0x496c936DBe1c263FaD8Ae1F3DD4680AAE57B4BB1
PRV_KEY=06878f52549f24b86d8012e6e99d947ab2af06a0765b70a7aea5548fa0b255fc
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test wrongAccount_Istanbul (src/BlockchainTestsFiller/InvalidBlocks/bcExpectSection/wrongAccountCopier.json)"

