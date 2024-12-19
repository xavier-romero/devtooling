# PRV_KEY for master sender 0xe8DB5D7BB5876d8488C46EcD8Ddd3Fbce42302b5
PRV_KEY=1b66c46a877736079d1716b042dbf017218ae4767a0caf13f005a46ab267dfd7
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test wrongRLPGenesis_Istanbul (src/BlockchainTestsFiller/InvalidBlocks/bcExpectSection/wrongRLPGenesisCopier.json)"

