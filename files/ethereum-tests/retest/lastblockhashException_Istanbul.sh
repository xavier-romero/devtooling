# PRV_KEY for master sender 0x0e85bb4964b55ac9E3D02D77DCcD54fB835C127a
PRV_KEY=3fd0d91f108e430913f7beac3e8b68c6ebbabf84eb045e4d0c6955c0e5c12168
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test lastblockhashException_Istanbul (src/BlockchainTestsFiller/InvalidBlocks/bcExpectSection/lastblockhashExceptionCopier.json)"

