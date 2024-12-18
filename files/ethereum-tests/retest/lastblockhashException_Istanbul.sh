# PRV_KEY for master sender 0xa221E834eaE3aaaCEAF74603A7142e6b1654335E
PRV_KEY=37e5b989e3ab87657b53160c0648102690a330c45825d65f1b960c4de32a839b
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test lastblockhashException_Istanbul (src/BlockchainTestsFiller/InvalidBlocks/bcExpectSection/lastblockhashExceptionCopier.json)"

