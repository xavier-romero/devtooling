# PRV_KEY for master sender 0x84571Cf0f80Ab9258F41cebfDAd64301959a705e
PRV_KEY=551b5d5a4979a4409f9f92d5a771c8e28e5ea758657774f765e11439ef34994f
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test wrongRLPGenesis_Istanbul (src/BlockchainTestsFiller/InvalidBlocks/bcExpectSection/wrongRLPGenesisCopier.json)"

