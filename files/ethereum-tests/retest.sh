TEST_FOLDER=${TEST_FOLDER:-.}
RPC_URL=${L2_RPC_URL:-http://localhost:8545}
# PRV_KEY for master sender with addr: 0x3f17f1962B36e491b30A40b2405849e597Ba5FB5
PRV_KEY=${L2_PRV_KEY:-0x0000000000000000000000000000000000000000000000000000000000000000}
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

NONCE=$(cast nonce --rpc-url $RPC_URL 0x3f17f1962B36e491b30A40b2405849e597Ba5FB5)
NONCE=$((NONCE))

TEST_MASTER_SENDER_AMOUNT=5ether

echo "Funding sender 0x1C42A51C5772a6522C7F7cac5B4ad888dB5c54dC for test uncleBloomNot0 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x1C42A51C5772a6522C7F7cac5B4ad888dB5c54dC)
NONCE=$((NONCE+1))

echo "Funding sender 0x44DD430A813CC92AbFdA595D19BcE61268c9EB41 for test futureUncleTimestampDifficultyDrop with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x44DD430A813CC92AbFdA595D19BcE61268c9EB41)
NONCE=$((NONCE+1))

echo "Funding sender 0xF3Dbcb6e16C90EBc966f81b0D8796D18e7C64e3d for test futureUncleTimestampDifficultyDrop4 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xF3Dbcb6e16C90EBc966f81b0D8796D18e7C64e3d)
NONCE=$((NONCE+1))

echo "Funding sender 0x545cd96F2bF6FfaE9D7F69FA03C95d73fdeA4972 for test uncleBloomNot0_3 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x545cd96F2bF6FfaE9D7F69FA03C95d73fdeA4972)
NONCE=$((NONCE+1))

echo "Funding sender 0x3d03cA41B7456663b49799b8b1893F50E3866a39 for test futureUncleTimestamp3 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x3d03cA41B7456663b49799b8b1893F50E3866a39)
NONCE=$((NONCE+1))

echo "Funding sender 0xbB1134AEACcC8F0848310E4e3ffC10F1071E7041 for test futureUncleTimestampDifficultyDrop3 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xbB1134AEACcC8F0848310E4e3ffC10F1071E7041)
NONCE=$((NONCE+1))

echo "Funding sender 0xd07FFe15b7Be01005A30B7f1117294B1568C17ec for test futureUncleTimestampDifficultyDrop2 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xd07FFe15b7Be01005A30B7f1117294B1568C17ec)
NONCE=$((NONCE+1))

echo "Funding sender 0xaC53aD08B61363079f5ECb7D4e42362f5e027E7b for test futureUncleTimestamp2 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xaC53aD08B61363079f5ECb7D4e42362f5e027E7b)
NONCE=$((NONCE+1))

echo "Funding sender 0xAd047dc7b81C8E5FfDa3f7463754616Ad1227ae8 for test uncleBloomNot0_2 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xAd047dc7b81C8E5FfDa3f7463754616Ad1227ae8)
NONCE=$((NONCE+1))

echo "Funding sender 0xE495a02F9f5d7D8bd2BC90aF6bA9f846DFd4C8d1 for test UncleFromSideChain with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xE495a02F9f5d7D8bd2BC90aF6bA9f846DFd4C8d1)
NONCE=$((NONCE+1))

echo "Funding sender 0xb8647abC8059ee75016688B3c16458FA3997b430 for test correct with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xb8647abC8059ee75016688B3c16458FA3997b430)
NONCE=$((NONCE+1))

echo "Funding sender 0x98CD61F25c3aE3594F108B472C8d0c4Ef126f4D3 for test gasLimitTooHighExactBound with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x98CD61F25c3aE3594F108B472C8d0c4Ef126f4D3)
NONCE=$((NONCE+1))

echo "Funding sender 0xf30D001dE07d6C231F5fF6123528bEAbe2e3D937 for test gasLimitLTGasUsageUncle with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xf30D001dE07d6C231F5fF6123528bEAbe2e3D937)
NONCE=$((NONCE+1))

echo "Funding sender 0x102677f50521249c50C7FaEdA19176fdaFB6589D for test incorrectUncleTimestamp with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x102677f50521249c50C7FaEdA19176fdaFB6589D)
NONCE=$((NONCE+1))

echo "Funding sender 0x412855e9C6149b318b908de6Ac92ecd5F5652F8B for test wrongParentHash with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x412855e9C6149b318b908de6Ac92ecd5F5652F8B)
NONCE=$((NONCE+1))

echo "Funding sender 0xb6f3F963276C7749bD789211a2Bd45e40f085098 for test diffTooLow2 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xb6f3F963276C7749bD789211a2Bd45e40f085098)
NONCE=$((NONCE+1))

echo "Funding sender 0xb518702c52fC7005f76128E4ED71A306546F2C3E for test timestampTooLow with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xb518702c52fC7005f76128E4ED71A306546F2C3E)
NONCE=$((NONCE+1))

echo "Funding sender 0xaDE559E040B573704eAaf9b2dC90c352acA3b0E6 for test gasLimitTooLowExactBound2 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xaDE559E040B573704eAaf9b2dC90c352acA3b0E6)
NONCE=$((NONCE+1))

echo "Funding sender 0x9C33b2D1d5E030b88381E88A150aC6c7C6D1ffE2 for test incorrectUncleTimestamp5 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x9C33b2D1d5E030b88381E88A150aC6c7C6D1ffE2)
NONCE=$((NONCE+1))

echo "Funding sender 0xE89905F6d19393EfD92aece8f1e9Bb10A8992853 for test gasLimitTooLowExactBoundLondon with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xE89905F6d19393EfD92aece8f1e9Bb10A8992853)
NONCE=$((NONCE+1))

echo "Funding sender 0x0A5c8d95182A5321FcB8FC831e1d335B3b42204b for test incorrectUncleNumber500 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x0A5c8d95182A5321FcB8FC831e1d335B3b42204b)
NONCE=$((NONCE+1))

echo "Funding sender 0xaE416Ed004bf24a92034F5FD6ac97b4f92A08696 for test wrongStateRoot with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xaE416Ed004bf24a92034F5FD6ac97b4f92A08696)
NONCE=$((NONCE+1))

echo "Funding sender 0xd2578Cb94cE9eb9C93181dE2D0Bf9248918dff3F for test incorrectUncleTimestamp3 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xd2578Cb94cE9eb9C93181dE2D0Bf9248918dff3F)
NONCE=$((NONCE+1))

echo "Funding sender 0xEB48e959a3F27F4e9cceD3C75Fe5C1f37862BAC8 for test timestampTooHigh with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xEB48e959a3F27F4e9cceD3C75Fe5C1f37862BAC8)
NONCE=$((NONCE+1))

echo "Funding sender 0x383F304B3400c1CA2dBBa0012aBE602d86c7bf81 for test incorrectUncleNumber1 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x383F304B3400c1CA2dBBa0012aBE602d86c7bf81)
NONCE=$((NONCE+1))

echo "Funding sender 0xc9Fa084d4010f336566081B7F2981e25a906e336 for test gasLimitTooLowExactBound with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xc9Fa084d4010f336566081B7F2981e25a906e336)
NONCE=$((NONCE+1))

echo "Funding sender 0x246B07946236a26163d1ADF74a754b731A380a90 for test diffTooLow with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x246B07946236a26163d1ADF74a754b731A380a90)
NONCE=$((NONCE+1))

echo "Funding sender 0x0aAbE40B6c7a351A7df63344c6821C747aD2C805 for test unknownUncleParentHash with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x0aAbE40B6c7a351A7df63344c6821C747aD2C805)
NONCE=$((NONCE+1))

echo "Funding sender 0x686D0686757510F14B5682539F6eDBa3d28c80cE for test incorrectUncleTimestamp2 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x686D0686757510F14B5682539F6eDBa3d28c80cE)
NONCE=$((NONCE+1))

echo "Funding sender 0xa0318109762038310bB1769A0A446DaA8b812469 for test gasLimitTooHigh with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xa0318109762038310bB1769A0A446DaA8b812469)
NONCE=$((NONCE+1))

echo "Funding sender 0x20032ab191b6F6f4E637689AbAFF4D5345af29B6 for test diffTooHigh with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x20032ab191b6F6f4E637689AbAFF4D5345af29B6)
NONCE=$((NONCE+1))

echo "Funding sender 0xF78560b4eb254caCE8bBb9c0f1D3d7F2d35a6A45 for test gasLimitTooLow with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xF78560b4eb254caCE8bBb9c0f1D3d7F2d35a6A45)
NONCE=$((NONCE+1))

echo "Funding sender 0xAe33949463d57d75Ab06F02744CBDDa994b5F2eC for test incorrectUncleTimestamp4 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xAe33949463d57d75Ab06F02744CBDDa994b5F2eC)
NONCE=$((NONCE+1))

echo "Funding sender 0xbACFF5dAB605Dd4c3A6cc6a7d31698f716ea1682 for test incorrectUncleNumber0 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xbACFF5dAB605Dd4c3A6cc6a7d31698f716ea1682)
NONCE=$((NONCE+1))

echo "Funding sender 0x0cdc8FA14fc6060189db3a9f99569fD30C2043F1 for test pastUncleTimestamp with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x0cdc8FA14fc6060189db3a9f99569fD30C2043F1)
NONCE=$((NONCE+1))

echo "Funding sender 0xdE0a6d4B12667dB998Dd6A08D9B2C8FE1661da64 for test result_legacyEnvConvertion with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xdE0a6d4B12667dB998Dd6A08D9B2C8FE1661da64)
NONCE=$((NONCE+1))

echo "Funding sender 0x3aa8a306b99B598B12B1EBC12c16540aDC22E170 for test result_CancunEnvConvertion with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x3aa8a306b99B598B12B1EBC12c16540aDC22E170)
NONCE=$((NONCE+1))

echo "Funding sender 0x84571Cf0f80Ab9258F41cebfDAd64301959a705e for test wrongRLPGenesis_Istanbul with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x84571Cf0f80Ab9258F41cebfDAd64301959a705e)
NONCE=$((NONCE+1))

echo "Funding sender 0xf667F584295791b096ae4Fb7E197d78FF464c83b for test filling_unexpectedException with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xf667F584295791b096ae4Fb7E197d78FF464c83b)
NONCE=$((NONCE+1))

echo "Funding sender 0xf183d97320f31d7ad0511f12f4c014B17b5FDd17 for test unexpectedAccount_Istanbul with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xf183d97320f31d7ad0511f12f4c014B17b5FDd17)
NONCE=$((NONCE+1))

echo "Funding sender 0x834899CC2127c9d843eDa29c4B941Dc1d6ACD2c5 for test result_MergeEnvConvertion with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x834899CC2127c9d843eDa29c4B941Dc1d6ACD2c5)
NONCE=$((NONCE+1))

echo "Funding sender 0x924c4E6cCd50F8Dd454Bb35b704D6884ca8e64B4 for test filling_wrongStorage with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x924c4E6cCd50F8Dd454Bb35b704D6884ca8e64B4)
NONCE=$((NONCE+1))

echo "Funding sender 0x612Dc0ca5487B2C6Eb03556cc107168DD029Fea2 for test filling_wrongStorage2 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x612Dc0ca5487B2C6Eb03556cc107168DD029Fea2)
NONCE=$((NONCE+1))

echo "Funding sender 0xa221E834eaE3aaaCEAF74603A7142e6b1654335E for test lastblockhashException_Istanbul with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xa221E834eaE3aaaCEAF74603A7142e6b1654335E)
NONCE=$((NONCE+1))

echo "Funding sender 0xd8Ed17FCB4A1f0C1B846eA7De018F0De14a3284e for test filling_wrongAccount with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xd8Ed17FCB4A1f0C1B846eA7De018F0De14a3284e)
NONCE=$((NONCE+1))

echo "Funding sender 0xd102797575cdeDa2E012d584bAF58BA66C3b641b for test filling_missingExpectedAccount with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xd102797575cdeDa2E012d584bAF58BA66C3b641b)
NONCE=$((NONCE+1))

echo "Funding sender 0xeA8F8326405384Dd31331EeE1d8ECf21eCbC2Bd3 for test result_ShanghaiEnvConvertion with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xeA8F8326405384Dd31331EeE1d8ECf21eCbC2Bd3)
NONCE=$((NONCE+1))

echo "Funding sender 0x0477050e15b9291aF550C5516ff6A4869e037a97 for test filling_wrongStorage_Istanbul with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x0477050e15b9291aF550C5516ff6A4869e037a97)
NONCE=$((NONCE+1))

echo "Funding sender 0x335E8Ab27D1C929155F6E0c62e228cBC7A97dcA1 for test wrongAccount_Istanbul with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x335E8Ab27D1C929155F6E0c62e228cBC7A97dcA1)
NONCE=$((NONCE+1))

echo "Funding sender 0x6870dc13bf937171D8AdCc24f67b4264bd569D5B for test result_eip1559EnvConvertion with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x6870dc13bf937171D8AdCc24f67b4264bd569D5B)
NONCE=$((NONCE+1))

echo "Funding sender 0x6c6B8C4c6AA81434023AaEd2A3fE60656f93A633 for test ZeroValue_TransactionCALL_ToEmpty_OOGRevert_Paris with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x6c6B8C4c6AA81434023AaEd2A3fE60656f93A633)
NONCE=$((NONCE+1))

echo "Funding sender 0x4dEdc3683B03463cad6cC7Df8B4D6d1A22Aa4c16 for test EmptyTransaction with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x4dEdc3683B03463cad6cC7Df8B4D6d1A22Aa4c16)
NONCE=$((NONCE+1))

echo "Funding sender 0x18Ecc0e42072b8c9c2376DeEFc1f7DC85B1D207f for test TransactionNonceCheck with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x18Ecc0e42072b8c9c2376DeEFc1f7DC85B1D207f)
NONCE=$((NONCE+1))

echo "Funding sender 0xEf3AFA9E4D7Dd79F07cdb443d523f400B74FD1D3 for test createRevert with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xEf3AFA9E4D7Dd79F07cdb443d523f400B74FD1D3)
NONCE=$((NONCE+1))

echo "Funding sender 0x80d4E793616A8d9Cb7F56916A8356eB77c7B92DA for test ZeroValue_TransactionCALLwithData_ToOneStorageKey_OOGRevert_Istanbul_Paris with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x80d4E793616A8d9Cb7F56916A8356eB77c7B92DA)
NONCE=$((NONCE+1))

echo "Funding sender 0xCD5761DA307349B52DfDEdf294f58236Eb22455e for test TransactionNonceCheck2 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xCD5761DA307349B52DfDEdf294f58236Eb22455e)
NONCE=$((NONCE+1))

echo "Funding sender 0xB618D84239755ffA30a4E50087C6688752E79624 for test createNameRegistratorPerTxsNotEnoughGasBefore with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xB618D84239755ffA30a4E50087C6688752E79624)
NONCE=$((NONCE+1))

echo "Funding sender 0x1836aC5f7aa0B7F90597b0B771be32C92591f176 for test RefundOverflow2 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x1836aC5f7aa0B7F90597b0B771be32C92591f176)
NONCE=$((NONCE+1))

echo "Funding sender 0x93BCB63Db4514124C4f37555A3E87435F3500813 for test txCost-sec73 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x93BCB63Db4514124C4f37555A3E87435F3500813)
NONCE=$((NONCE+1))

echo "Funding sender 0xE67B3bd79F2AA67d2522D7A28510fD91cA7537c3 for test ZeroValue_TransactionCALL_OOGRevert with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xE67B3bd79F2AA67d2522D7A28510fD91cA7537c3)
NONCE=$((NONCE+1))

echo "Funding sender 0x8221c665227207d6E80D370bD3E9f51fF2441DA8 for test CreateTransactionReverted with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x8221c665227207d6E80D370bD3E9f51fF2441DA8)
NONCE=$((NONCE+1))

echo "Funding sender 0x50aAB7398EDad7D7F45a49dFb9306Ff7795DC2FB for test createNameRegistratorPerTxsNotEnoughGasAfter with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x50aAB7398EDad7D7F45a49dFb9306Ff7795DC2FB)
NONCE=$((NONCE+1))

echo "Funding sender 0x582B6ee0D00b4e29AF5aD21DE2aD5EAE57a21d42 for test TransactionFromCoinbaseNotEnoughFounds with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x582B6ee0D00b4e29AF5aD21DE2aD5EAE57a21d42)
NONCE=$((NONCE+1))

echo "Funding sender 0x3aeA44161df389288785E17Aad5B812A13356177 for test RefundOverflow with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x3aeA44161df389288785E17Aad5B812A13356177)
NONCE=$((NONCE+1))

echo "Funding sender 0x1e43c2d203B69F07E7fa34EEbF8c2D85628357CC for test callcodeOutput2 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x1e43c2d203B69F07E7fa34EEbF8c2D85628357CC)
NONCE=$((NONCE+1))

echo "Funding sender 0xDc963C3aACA831A93a629015e84242707C221427 for test createNameRegistratorPerTxsNotEnoughGasAt with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xDc963C3aACA831A93a629015e84242707C221427)
NONCE=$((NONCE+1))

echo "Funding sender 0x4663109df0268B8a75cbAd1E7bfBBE0102D2e964 for test ZeroValue_TransactionCALLwithData_ToEmpty_OOGRevert_Istanbul_Paris with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x4663109df0268B8a75cbAd1E7bfBBE0102D2e964)
NONCE=$((NONCE+1))

echo "Funding sender 0x24c84EE8C02464EB472E84284e2dA2Ba2987b603 for test dataTx with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x24c84EE8C02464EB472E84284e2dA2Ba2987b603)
NONCE=$((NONCE+1))

echo "Funding sender 0x39bA1AB8759779cB0bE45Bcc30240618d8bb82EC for test ZeroValue_TransactionCALL_ToOneStorageKey_OOGRevert_Paris with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x39bA1AB8759779cB0bE45Bcc30240618d8bb82EC)
NONCE=$((NONCE+1))

echo "Funding sender 0x9787dEBB0e42D12E73e6A3bef7A18Dbaf9012d1f for test NotEnoughCashContractCreation with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x9787dEBB0e42D12E73e6A3bef7A18Dbaf9012d1f)
NONCE=$((NONCE+1))

echo "Funding sender 0x4B7BEC04E60490FB8E9d46Bfd26521ef2f3F9C46 for test ZeroValue_TransactionCALL_ToNonZeroBalance_OOGRevert with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x4B7BEC04E60490FB8E9d46Bfd26521ef2f3F9C46)
NONCE=$((NONCE+1))

echo "Funding sender 0xF838d541a22Fde83C73Fb61328ef9E9d029959AF for test UserTransactionGasLimitIsTooLowWhenZeroCost with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xF838d541a22Fde83C73Fb61328ef9E9d029959AF)
NONCE=$((NONCE+1))

echo "Funding sender 0x4E907F2f24b767A235393ac1Cd748501f46CfE55 for test staticcall with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x4E907F2f24b767A235393ac1Cd748501f46CfE55)
NONCE=$((NONCE+1))

echo "Funding sender 0xd27554a7469DbB50F63a91cf059F53f8DDcFfd1f for test shanghaiWithoutWithdrawalsRLP with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xd27554a7469DbB50F63a91cf059F53f8DDcFfd1f)
NONCE=$((NONCE+1))

echo "Funding sender 0x01aa0803B2e6f9Dd24cd43005E3a3D1F30792B8B for test incorrectWithdrawalsRoot with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x01aa0803B2e6f9Dd24cd43005E3a3D1F30792B8B)
NONCE=$((NONCE+1))

echo "Funding sender 0x38e858C5C8fa64e97F893A3D43398BEF662f6B81 for test accountInteractions with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x38e858C5C8fa64e97F893A3D43398BEF662f6B81)
NONCE=$((NONCE+1))

echo "Funding sender 0xF738782FAfF5580010d4Baaf58B53A857bCfc8B2 for test amountIs0TouchAccountAndTransaction with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xF738782FAfF5580010d4Baaf58B53A857bCfc8B2)
NONCE=$((NONCE+1))

echo "Funding sender 0x1beBEb1826459ff2883De3a034Cd1EbbC748d684 for test oneUncleGeneration2 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x1beBEb1826459ff2883De3a034Cd1EbbC748d684)
NONCE=$((NONCE+1))

echo "Funding sender 0xfA4119Fb59Df591d3195F1d9Bb164181C1f82Fe0 for test EqualUncleInTwoDifferentBlocks2 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xfA4119Fb59Df591d3195F1d9Bb164181C1f82Fe0)
NONCE=$((NONCE+1))

echo "Funding sender 0xf4832D94955114ca2f2C17315385220756688C30 for test uncleHeaderWithGeneration0 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xf4832D94955114ca2f2C17315385220756688C30)
NONCE=$((NONCE+1))

echo "Funding sender 0x6c41b87dAb98313CDaf23AE4DcA899e85e385c9c for test twoEqualUncle with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x6c41b87dAb98313CDaf23AE4DcA899e85e385c9c)
NONCE=$((NONCE+1))

echo "Funding sender 0x876b55D912b189034880f5A20f8A90f83FF3a169 for test uncleWithSameBlockNumber with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x876b55D912b189034880f5A20f8A90f83FF3a169)
NONCE=$((NONCE+1))

echo "Funding sender 0xd3ae023eC5E702d1D03527D17BF99E23bEb47d89 for test oneUncleGeneration4 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xd3ae023eC5E702d1D03527D17BF99E23bEb47d89)
NONCE=$((NONCE+1))

echo "Funding sender 0x3B0742355B427d6bfEBeE8BA5fCA20938477c68f for test InChainUncle with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x3B0742355B427d6bfEBeE8BA5fCA20938477c68f)
NONCE=$((NONCE+1))

echo "Funding sender 0xbd7BE52A4EcC5264AB979973a6A406CA2B700C27 for test InChainUncleGreatGrandPa with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xbd7BE52A4EcC5264AB979973a6A406CA2B700C27)
NONCE=$((NONCE+1))

echo "Funding sender 0x16887Cb50db266fE0981Dda8A88dd3444233C4d4 for test InChainUncleGreatGreatGreatGreatGrandPa with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x16887Cb50db266fE0981Dda8A88dd3444233C4d4)
NONCE=$((NONCE+1))

echo "Funding sender 0x4Af86FEb19b97fbea4B74F91039FB0F3cb448A11 for test oneUncleGeneration5 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x4Af86FEb19b97fbea4B74F91039FB0F3cb448A11)
NONCE=$((NONCE+1))

echo "Funding sender 0x4043598b22Dc590F53D23E8AE91267ba70ee66E5 for test threeUncle with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x4043598b22Dc590F53D23E8AE91267ba70ee66E5)
NONCE=$((NONCE+1))

echo "Funding sender 0xc5f167AF0792502D391B0422094DD801F5571Ee0 for test uncleHeaderAtBlock2 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xc5f167AF0792502D391B0422094DD801F5571Ee0)
NONCE=$((NONCE+1))

echo "Funding sender 0xbdadA24d8D83cf1c042127F3b9b2D910E3E26A62 for test oneUncle with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xbdadA24d8D83cf1c042127F3b9b2D910E3E26A62)
NONCE=$((NONCE+1))

echo "Funding sender 0x3592Da7198FC9a26dc17873384f010487E0093e2 for test UncleIsBrother with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x3592Da7198FC9a26dc17873384f010487E0093e2)
NONCE=$((NONCE+1))

echo "Funding sender 0xe3e2F16Fc46cc2Ed335694682D882D65d93a91ec for test oneUncleGeneration7 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xe3e2F16Fc46cc2Ed335694682D882D65d93a91ec)
NONCE=$((NONCE+1))

echo "Funding sender 0x8716c19D53fE3a2Afff1C02C3dcF907f14fb7CB8 for test InChainUncleGrandPa with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x8716c19D53fE3a2Afff1C02C3dcF907f14fb7CB8)
NONCE=$((NONCE+1))

echo "Funding sender 0x615e0E7a1c49D5889D423d6d65355739d3F5B669 for test oneUncleGeneration3 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x615e0E7a1c49D5889D423d6d65355739d3F5B669)
NONCE=$((NONCE+1))

echo "Funding sender 0x2DC3f80B240C1A70382eF7BA38175B53051dF3C4 for test oneUncleGeneration6 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x2DC3f80B240C1A70382eF7BA38175B53051dF3C4)
NONCE=$((NONCE+1))

echo "Funding sender 0xFCC860B0D5706fa4f1132E5c86B2fD4E37C25abc for test InChainUncleFather with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xFCC860B0D5706fa4f1132E5c86B2fD4E37C25abc)
NONCE=$((NONCE+1))

echo "Funding sender 0xfD7798a897bb9d5F5981702e50286a1138bfBdfc for test twoUncle with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xfD7798a897bb9d5F5981702e50286a1138bfBdfc)
NONCE=$((NONCE+1))

echo "Funding sender 0x4eD559F8501095ce538f708C0FA7320Dde841415 for test InChainUncleGreatGreatGrandPa with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x4eD559F8501095ce538f708C0FA7320Dde841415)
NONCE=$((NONCE+1))

echo "Funding sender 0xaa845389C38f275AEEE5f52293D705D6b98592C6 for test InChainUncleGreatGreatGreatGrandPa with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xaa845389C38f275AEEE5f52293D705D6b98592C6)
NONCE=$((NONCE+1))

echo "Funding sender 0x774814C5CFE993feb8Ed460157c53a7C918E88cC for test wrongTransactionsTrie with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x774814C5CFE993feb8Ed460157c53a7C918E88cC)
NONCE=$((NONCE+1))

echo "Funding sender 0x4Dbb6BE904566D3135d4f40c44f549Da0981F7ef for test log1_wrongBlockNumber with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x4Dbb6BE904566D3135d4f40c44f549Da0981F7ef)
NONCE=$((NONCE+1))

echo "Funding sender 0x49b8301e2DBC37765Cc34B88daf9C4A4e843852B for test timeDiff0 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x49b8301e2DBC37765Cc34B88daf9C4A4e843852B)
NONCE=$((NONCE+1))

echo "Funding sender 0x5EE5bB0FB0daa0C0aa53F7ACa55769f3182e0592 for test wrongGasUsed with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x5EE5bB0FB0daa0C0aa53F7ACa55769f3182e0592)
NONCE=$((NONCE+1))

echo "Funding sender 0x330a5FbA492523A2017a7E7e44156E9Aa6E226B1 for test wrongDifficulty with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x330a5FbA492523A2017a7E7e44156E9Aa6E226B1)
NONCE=$((NONCE+1))

echo "Funding sender 0x3221680140B92b2bF1F33964A5AA98e5e7685a3D for test wrongNumber with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x3221680140B92b2bF1F33964A5AA98e5e7685a3D)
NONCE=$((NONCE+1))

echo "Funding sender 0x016dcBAa06e7E033960f5D5D43605b03faaa9567 for test wrongUncleHash with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x016dcBAa06e7E033960f5D5D43605b03faaa9567)
NONCE=$((NONCE+1))

echo "Funding sender 0xC1df0847C94E59D6e24b448E33b527dBFc235646 for test log1_wrongBloom with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xC1df0847C94E59D6e24b448E33b527dBFc235646)
NONCE=$((NONCE+1))

echo "Funding sender 0x14FfeAe49CF87949005960dC41c87ef7dD80ee55 for test wrongGasLimit with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x14FfeAe49CF87949005960dC41c87ef7dD80ee55)
NONCE=$((NONCE+1))

echo "Funding sender 0x4A986c97AC5c2FCf15E3CF7aa890b54c2C50E6C0 for test wrongReceiptTrie with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x4A986c97AC5c2FCf15E3CF7aa890b54c2C50E6C0)
NONCE=$((NONCE+1))

echo "Funding sender 0x381ED012BAb08A847D1DC985630F7D708dF027E2 for test DifferentExtraData1025 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x381ED012BAb08A847D1DC985630F7D708dF027E2)
NONCE=$((NONCE+1))

echo "Funding sender 0x5847C773075f94d3a2B90Ab184Ffc64a2B269148 for test DifficultyIsZero with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x5847C773075f94d3a2B90Ab184Ffc64a2B269148)
NONCE=$((NONCE+1))

echo "Funding sender 0x1b5F56dB995207B7aB9f6eadf0b2f9054BC58bEF for test wrongParentHash2 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x1b5F56dB995207B7aB9f6eadf0b2f9054BC58bEF)
NONCE=$((NONCE+1))

echo "Funding sender 0xa6Ba93f12Cd6A8c67c2C25Bf34C2808763E27f76 for test ExtraData33 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xa6Ba93f12Cd6A8c67c2C25Bf34C2808763E27f76)
NONCE=$((NONCE+1))

echo "Funding sender 0x6D52463A9e849a7bC53bA93E23f10d147e295CDd for test wrongCoinbase with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x6D52463A9e849a7bC53bA93E23f10d147e295CDd)
NONCE=$((NONCE+1))

echo "Funding sender 0x1bFaAe9f4f820C42c8B228ecACDD60D942e38E61 for test GasLimitHigherThan2p63m1 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x1bFaAe9f4f820C42c8B228ecACDD60D942e38E61)
NONCE=$((NONCE+1))

echo "Funding sender 0x63633A8f8426F74F0c0628AfA365504Ac827BB17 for test ExtraData1024 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x63633A8f8426F74F0c0628AfA365504Ac827BB17)
NONCE=$((NONCE+1))

echo "Funding sender 0x4Aa99c470C21F4a2eB06B3a052Ef48c1CE430DE4 for test GasLimitIsZero with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x4Aa99c470C21F4a2eB06B3a052Ef48c1CE430DE4)
NONCE=$((NONCE+1))

echo "Funding sender 0x7A23b40B246Ca3ebf66461C85F1A523FEba88E69 for test wrongTimestamp with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x7A23b40B246Ca3ebf66461C85F1A523FEba88E69)
NONCE=$((NONCE+1))

echo "Funding sender 0xF10E950E5f5790050fc6846C4Bff92ccBF68C0C4 for test GasUsedHigherThanBlockGasLimitButNotWithRefundsSuicideLast with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xF10E950E5f5790050fc6846C4Bff92ccBF68C0C4)
NONCE=$((NONCE+1))

echo "Funding sender 0x84C36a8DF8cE59805127B19f0B82D8916728B06a for test GasUsedHigherThanBlockGasLimitButNotWithRefundsSuicideFirst with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x84C36a8DF8cE59805127B19f0B82D8916728B06a)
NONCE=$((NONCE+1))

echo "Funding sender 0xD1Dbd97543984bcFB83B6429C06f9a7ED05b037f for test besuBaseFeeBug with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xD1Dbd97543984bcFB83B6429C06f9a7ED05b037f)
NONCE=$((NONCE+1))

echo "Funding sender 0x2f27a9Bd8Fde2C5D78Eb1fCB912c5dE468aaF82c for test wallet2outOf3txsRevoke with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x2f27a9Bd8Fde2C5D78Eb1fCB912c5dE468aaF82c)
NONCE=$((NONCE+1))

echo "Funding sender 0x505a631c1fc6ae2a9BF5DBC9EaB96032E29cB61a for test walletReorganizeOwners with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x505a631c1fc6ae2a9BF5DBC9EaB96032E29cB61a)
NONCE=$((NONCE+1))

echo "Funding sender 0x8b7fe2b355319f9fbA227CEa8f959BE08701F943 for test wallet2outOf3txsRevokeAndConfirmAgain with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x8b7fe2b355319f9fbA227CEa8f959BE08701F943)
NONCE=$((NONCE+1))

echo "Funding sender 0x1B9826643e24431e127247146735a485697900Bd for test wallet2outOf3txs with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x1B9826643e24431e127247146735a485697900Bd)
NONCE=$((NONCE+1))

echo "Funding sender 0x9dE9590DEB0A04D830E31ee92F1273Fb410359c1 for test wallet2outOf3txs2 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x9dE9590DEB0A04D830E31ee92F1273Fb410359c1)
NONCE=$((NONCE+1))

echo "Funding sender 0x72CafcE8848d3511f2C648154864263d3a130167 for test randomStatetest235BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x72CafcE8848d3511f2C648154864263d3a130167)
NONCE=$((NONCE+1))

echo "Funding sender 0xa48F7E045f09B269baC0e751A4e840F1Ed66D351 for test randomStatetest423BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xa48F7E045f09B269baC0e751A4e840F1Ed66D351)
NONCE=$((NONCE+1))

echo "Funding sender 0x4EeFd30220913B6cAbA087C6e275eA8446DD7772 for test randomStatetest182BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x4EeFd30220913B6cAbA087C6e275eA8446DD7772)
NONCE=$((NONCE+1))

echo "Funding sender 0xc4D838Aea154F536FF02889E7d70c1ee24E98934 for test randomStatetest373BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xc4D838Aea154F536FF02889E7d70c1ee24E98934)
NONCE=$((NONCE+1))

echo "Funding sender 0x89Dd70E45a4E9f88cd5f005031782dAD82b13f2b for test randomStatetest598BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x89Dd70E45a4E9f88cd5f005031782dAD82b13f2b)
NONCE=$((NONCE+1))

echo "Funding sender 0x2390704F97F7e2ffFa33Cc01E6Fa9B001cBFEeed for test randomStatetest614BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x2390704F97F7e2ffFa33Cc01E6Fa9B001cBFEeed)
NONCE=$((NONCE+1))

echo "Funding sender 0xeEF6Da13346bD2ED9C4cDC23C6938505e931A3EB for test randomStatetest256BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xeEF6Da13346bD2ED9C4cDC23C6938505e931A3EB)
NONCE=$((NONCE+1))

echo "Funding sender 0xf931797A296A4eE840F4d69292bBBbcC6310a982 for test randomStatetest591BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xf931797A296A4eE840F4d69292bBBbcC6310a982)
NONCE=$((NONCE+1))

echo "Funding sender 0xFdA29421aD31a3612d1151D30ADb0C674cfF8F5a for test randomStatetest314BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xFdA29421aD31a3612d1151D30ADb0C674cfF8F5a)
NONCE=$((NONCE+1))

echo "Funding sender 0xb7c24836c350CCC3547a16C109521CE9d3Ad110e for test randomStatetest21BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xb7c24836c350CCC3547a16C109521CE9d3Ad110e)
NONCE=$((NONCE+1))

echo "Funding sender 0x03363eb6A64F865274C972B3edCEB557492ADdce for test randomStatetest392BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x03363eb6A64F865274C972B3edCEB557492ADdce)
NONCE=$((NONCE+1))

echo "Funding sender 0x944BB3790709f0693Cc54D270C9c53Ee3f48A3Ad for test randomStatetest551BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x944BB3790709f0693Cc54D270C9c53Ee3f48A3Ad)
NONCE=$((NONCE+1))

echo "Funding sender 0x9Fb1A0465a81580132bD4A5c02E48789cbe7E67a for test randomStatetest319BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x9Fb1A0465a81580132bD4A5c02E48789cbe7E67a)
NONCE=$((NONCE+1))

echo "Funding sender 0xa515babF40359BE104d51243E3c64B45a3a8de9f for test randomStatetest79BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xa515babF40359BE104d51243E3c64B45a3a8de9f)
NONCE=$((NONCE+1))

echo "Funding sender 0x7Fe646862F640807Ff93d3E3e10290dAeeE95A9f for test randomStatetest468BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x7Fe646862F640807Ff93d3E3e10290dAeeE95A9f)
NONCE=$((NONCE+1))

echo "Funding sender 0x33dDAe64a3CFd0C92bcAE5f09d158B5B761FC737 for test randomStatetest330BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x33dDAe64a3CFd0C92bcAE5f09d158B5B761FC737)
NONCE=$((NONCE+1))

echo "Funding sender 0xa9E649BA223dA6431961DE1dda95B91fE2532C89 for test randomStatetest557BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xa9E649BA223dA6431961DE1dda95B91fE2532C89)
NONCE=$((NONCE+1))

echo "Funding sender 0x12456629F37bb0B813Cf240c045Bc4Fa4B8D5792 for test randomStatetest561BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x12456629F37bb0B813Cf240c045Bc4Fa4B8D5792)
NONCE=$((NONCE+1))

echo "Funding sender 0x8b711c7Ba9CBb55eFb3Fdce6D987321400df67f2 for test randomStatetest568BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x8b711c7Ba9CBb55eFb3Fdce6D987321400df67f2)
NONCE=$((NONCE+1))

echo "Funding sender 0x5dA4CB5D5f40F2137dF5628C464123C62C1F5741 for test randomStatetest317BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x5dA4CB5D5f40F2137dF5628C464123C62C1F5741)
NONCE=$((NONCE+1))

echo "Funding sender 0xD300eFb0E841499B34A39f49D9e78B864CFBb5bD for test randomStatetest570BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xD300eFb0E841499B34A39f49D9e78B864CFBb5bD)
NONCE=$((NONCE+1))

echo "Funding sender 0x285d13d522A4930206efBD16C3B39e20d9a6B44D for test randomStatetest431BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x285d13d522A4930206efBD16C3B39e20d9a6B44D)
NONCE=$((NONCE+1))

echo "Funding sender 0x88Da170CF9d2f124029fab8699b72C56a794E98a for test randomStatetest277BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x88Da170CF9d2f124029fab8699b72C56a794E98a)
NONCE=$((NONCE+1))

echo "Funding sender 0x6d762Ed9999B795DAd63C406a7458A8D176dD696 for test randomStatetest32BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x6d762Ed9999B795DAd63C406a7458A8D176dD696)
NONCE=$((NONCE+1))

echo "Funding sender 0x3B68EB5954e6fE199665B923621B70a33f52FC4b for test randomStatetest34BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x3B68EB5954e6fE199665B923621B70a33f52FC4b)
NONCE=$((NONCE+1))

echo "Funding sender 0x980e6540d186B112A0343043Ad6320d6F032ceA6 for test randomStatetest70BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x980e6540d186B112A0343043Ad6320d6F032ceA6)
NONCE=$((NONCE+1))

echo "Funding sender 0xf5A9f244b7F7B5ff5dFe78b2840F8270334c3a88 for test randomStatetest394BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xf5A9f244b7F7B5ff5dFe78b2840F8270334c3a88)
NONCE=$((NONCE+1))

echo "Funding sender 0xCec21911E78B74dA4e17217854fa196D04ba5C72 for test randomStatetest234BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xCec21911E78B74dA4e17217854fa196D04ba5C72)
NONCE=$((NONCE+1))

echo "Funding sender 0x406eaA425BcAB1832CBaDc7e48F4F22F6eED3343 for test randomStatetest631BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x406eaA425BcAB1832CBaDc7e48F4F22F6eED3343)
NONCE=$((NONCE+1))

echo "Funding sender 0xCe23Bd52003d4194418bEec8E5148fE45c1D4f66 for test randomStatetest374BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xCe23Bd52003d4194418bEec8E5148fE45c1D4f66)
NONCE=$((NONCE+1))

echo "Funding sender 0x00d9d59Ad5b368f282497E7d76208e6Fb26c3dd7 for test randomStatetest590BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x00d9d59Ad5b368f282497E7d76208e6Fb26c3dd7)
NONCE=$((NONCE+1))

echo "Funding sender 0xE0CA19ea05b60836Db441B04626b4b435056be0E for test randomStatetest50BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xE0CA19ea05b60836Db441B04626b4b435056be0E)
NONCE=$((NONCE+1))

echo "Funding sender 0x1272ea6f4488Af148e0273B4500F7Bf45Fd9d0BD for test randomStatetest403BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x1272ea6f4488Af148e0273B4500F7Bf45Fd9d0BD)
NONCE=$((NONCE+1))

echo "Funding sender 0x8ecd31a147D18ce218F21D816A497979757c3Da2 for test randomStatetest93BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x8ecd31a147D18ce218F21D816A497979757c3Da2)
NONCE=$((NONCE+1))

echo "Funding sender 0x6e57E3009D5042F852bA19b812A8B9a834255779 for test randomStatetest400BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x6e57E3009D5042F852bA19b812A8B9a834255779)
NONCE=$((NONCE+1))

echo "Funding sender 0x1fcb06B605798CA1b97386e544763819e4c76F55 for test randomStatetest165BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x1fcb06B605798CA1b97386e544763819e4c76F55)
NONCE=$((NONCE+1))

echo "Funding sender 0xa32555EF62De24F17f60F4629EF72b6b342aeEeb for test randomStatetest132BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xa32555EF62De24F17f60F4629EF72b6b342aeEeb)
NONCE=$((NONCE+1))

echo "Funding sender 0x4bdbb8Ee7E438B4ff8C57496b01412D8C3dc3e63 for test randomStatetest634BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x4bdbb8Ee7E438B4ff8C57496b01412D8C3dc3e63)
NONCE=$((NONCE+1))

echo "Funding sender 0xF8c3fBb95eF17128ab2ea649E7e6a2B5C63908eC for test randomStatetest453BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xF8c3fBb95eF17128ab2ea649E7e6a2B5C63908eC)
NONCE=$((NONCE+1))

echo "Funding sender 0x10F4D15Cf20B7eB74249DED916873f0B815b2E6B for test randomStatetest522BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x10F4D15Cf20B7eB74249DED916873f0B815b2E6B)
NONCE=$((NONCE+1))

echo "Funding sender 0x1053f8145F62CCa40aef8fa0a69700d14757A21C for test randomStatetest113BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x1053f8145F62CCa40aef8fa0a69700d14757A21C)
NONCE=$((NONCE+1))

echo "Funding sender 0x3F53d7c76645bfC284F3854a2B220f523511b426 for test randomStatetest427BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x3F53d7c76645bfC284F3854a2B220f523511b426)
NONCE=$((NONCE+1))

echo "Funding sender 0x5e349f2c1FFa0628a06c732f17a858b4C0102243 for test randomStatetest258BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x5e349f2c1FFa0628a06c732f17a858b4C0102243)
NONCE=$((NONCE+1))

echo "Funding sender 0xBD5196EF928B9B8d5bDA6B3272B66f8bD40Cd9Be for test randomStatetest239BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xBD5196EF928B9B8d5bDA6B3272B66f8bD40Cd9Be)
NONCE=$((NONCE+1))

echo "Funding sender 0xb835Ba7DbE6C1293203a5826CF4cCf7082bd604A for test randomStatetest344BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xb835Ba7DbE6C1293203a5826CF4cCf7082bd604A)
NONCE=$((NONCE+1))

echo "Funding sender 0xE4Ffd54B0a3FC2497FC878b12AAB0EB14729dbD7 for test randomStatetest593BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xE4Ffd54B0a3FC2497FC878b12AAB0EB14729dbD7)
NONCE=$((NONCE+1))

echo "Funding sender 0x1ebE4BA9Bf84A5d177D9D5d70994237F1bCA7DD5 for test randomStatetest595BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x1ebE4BA9Bf84A5d177D9D5d70994237F1bCA7DD5)
NONCE=$((NONCE+1))

echo "Funding sender 0x160260Ef062D55012889E252475A3E504F99CC43 for test randomStatetest76BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x160260Ef062D55012889E252475A3E504F99CC43)
NONCE=$((NONCE+1))

echo "Funding sender 0xD95DD6507a8E5E75011392CA80B7000bbda4026f for test randomStatetest331BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xD95DD6507a8E5E75011392CA80B7000bbda4026f)
NONCE=$((NONCE+1))

echo "Funding sender 0x9BdBB165D8319253B3c557Aab90cA73736993E52 for test randomStatetest240BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x9BdBB165D8319253B3c557Aab90cA73736993E52)
NONCE=$((NONCE+1))

echo "Funding sender 0x7AA694c8348472AE17541F0740e7C6124411AAed for test randomStatetest486BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x7AA694c8348472AE17541F0740e7C6124411AAed)
NONCE=$((NONCE+1))

echo "Funding sender 0xa54BA7A6341D7a5CA9f605832DB8F5416200FD6d for test randomStatetest515BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xa54BA7A6341D7a5CA9f605832DB8F5416200FD6d)
NONCE=$((NONCE+1))

echo "Funding sender 0xBFC256bDFCdfD2441Cca9b20De473f9a2b52D735 for test randomStatetest213BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xBFC256bDFCdfD2441Cca9b20De473f9a2b52D735)
NONCE=$((NONCE+1))

echo "Funding sender 0xD69707Bc4a4EA6EBeB6E2E407387Ea1615b63Af4 for test randomStatetest463BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xD69707Bc4a4EA6EBeB6E2E407387Ea1615b63Af4)
NONCE=$((NONCE+1))

echo "Funding sender 0xFEC33CD7c0c5a196EC8f4068f83813A475Af7D86 for test randomStatetest56BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xFEC33CD7c0c5a196EC8f4068f83813A475Af7D86)
NONCE=$((NONCE+1))

echo "Funding sender 0x75B6739f913B22552CC2F34f9eE85d23033D5030 for test randomStatetest193BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x75B6739f913B22552CC2F34f9eE85d23033D5030)
NONCE=$((NONCE+1))

echo "Funding sender 0x7FCA2A3182D03400db3340A73Af3ECa617A5f6e9 for test randomStatetest613BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x7FCA2A3182D03400db3340A73Af3ECa617A5f6e9)
NONCE=$((NONCE+1))

echo "Funding sender 0x4f1Fc124ff54360dFa2bB8eb400A873733be7222 for test randomStatetest140BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x4f1Fc124ff54360dFa2bB8eb400A873733be7222)
NONCE=$((NONCE+1))

echo "Funding sender 0x1a51Ff330F60636F9Fe967a16b4738Bf0Ecc9d71 for test randomStatetest255BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x1a51Ff330F60636F9Fe967a16b4738Bf0Ecc9d71)
NONCE=$((NONCE+1))

echo "Funding sender 0x33d4aAF4134103E674901Bf23ac3b0F0267C7273 for test randomStatetest540BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x33d4aAF4134103E674901Bf23ac3b0F0267C7273)
NONCE=$((NONCE+1))

echo "Funding sender 0x968C5c9196e01d0217DA830758b846315E03Af4c for test randomStatetest573BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x968C5c9196e01d0217DA830758b846315E03Af4c)
NONCE=$((NONCE+1))

echo "Funding sender 0xdDf2C7eEe43a930B0E11483fB3ebfd5297bF235F for test randomStatetest203BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xdDf2C7eEe43a930B0E11483fB3ebfd5297bF235F)
NONCE=$((NONCE+1))

echo "Funding sender 0x97f4047cfeA75a8498E5fc709faDc76D5f454a69 for test randomStatetest289BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x97f4047cfeA75a8498E5fc709faDc76D5f454a69)
NONCE=$((NONCE+1))

echo "Funding sender 0x29497aAaf51121Db1e62baF21a3DFDc35e1E6Df0 for test randomStatetest432BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x29497aAaf51121Db1e62baF21a3DFDc35e1E6Df0)
NONCE=$((NONCE+1))

echo "Funding sender 0x1EFB532D97643F668fFDFF18765fDEcAF56F218F for test randomStatetest181BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x1EFB532D97643F668fFDFF18765fDEcAF56F218F)
NONCE=$((NONCE+1))

echo "Funding sender 0x29042734Ecc11161ec67965B1aef411a12Ce0A0b for test randomStatetest152BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x29042734Ecc11161ec67965B1aef411a12Ce0A0b)
NONCE=$((NONCE+1))

echo "Funding sender 0xa9676E5790b6Cd9ed6B09d0C16a46d4324E11387 for test randomStatetest128BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xa9676E5790b6Cd9ed6B09d0C16a46d4324E11387)
NONCE=$((NONCE+1))

echo "Funding sender 0x136BC9a4f08a35c75c5715b9fcB0F1339a698749 for test randomStatetest492BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x136BC9a4f08a35c75c5715b9fcB0F1339a698749)
NONCE=$((NONCE+1))

echo "Funding sender 0x72880475e2fdA22Bc304E83a0aE5E0b7b2Bc3B38 for test randomStatetest127BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x72880475e2fdA22Bc304E83a0aE5E0b7b2Bc3B38)
NONCE=$((NONCE+1))

echo "Funding sender 0x8aF845DB4cfc79B66905828b9A6c0B3467c17567 for test randomStatetest91BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x8aF845DB4cfc79B66905828b9A6c0B3467c17567)
NONCE=$((NONCE+1))

echo "Funding sender 0x6b8A47B1FFa6828cDC696c110fCA39Bf2090c496 for test randomStatetest390BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x6b8A47B1FFa6828cDC696c110fCA39Bf2090c496)
NONCE=$((NONCE+1))

echo "Funding sender 0x5fFa903D4D8dCC0c56ceC4F604cc3d074338Fd74 for test randomStatetest434BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x5fFa903D4D8dCC0c56ceC4F604cc3d074338Fd74)
NONCE=$((NONCE+1))

echo "Funding sender 0xcaf8dF5AaD44f7131f20E0dA5BF02EC7DD5DF15f for test randomStatetest65BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xcaf8dF5AaD44f7131f20E0dA5BF02EC7DD5DF15f)
NONCE=$((NONCE+1))

echo "Funding sender 0x4C97941Af3EB3396de2027c24664d006129520bB for test randomStatetest44BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x4C97941Af3EB3396de2027c24664d006129520bB)
NONCE=$((NONCE+1))

echo "Funding sender 0x412FD6F56f68E2889E27BF4fcdba71381BA2C5a6 for test randomStatetest61BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x412FD6F56f68E2889E27BF4fcdba71381BA2C5a6)
NONCE=$((NONCE+1))

echo "Funding sender 0x04d0997D72C157263fD0fB7AaeAC736a8Efcb5b0 for test randomStatetest606BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x04d0997D72C157263fD0fB7AaeAC736a8Efcb5b0)
NONCE=$((NONCE+1))

echo "Funding sender 0x30A2C1aE2B5Fe729Ae2858A4d7FBb45F548C1daB for test randomStatetest284BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x30A2C1aE2B5Fe729Ae2858A4d7FBb45F548C1daB)
NONCE=$((NONCE+1))

echo "Funding sender 0x6b13Ac31D5d38B127aa850DC7018093C89c7d854 for test randomStatetest35BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x6b13Ac31D5d38B127aa850DC7018093C89c7d854)
NONCE=$((NONCE+1))

echo "Funding sender 0xDB4f690dAad8e859dd7d05AA2dD8B9dcb647D6dF for test randomStatetest141BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xDB4f690dAad8e859dd7d05AA2dD8B9dcb647D6dF)
NONCE=$((NONCE+1))

echo "Funding sender 0xD2A562389E83Ecd72e823947F3267D0f8C3651FF for test randomStatetest272BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xD2A562389E83Ecd72e823947F3267D0f8C3651FF)
NONCE=$((NONCE+1))

echo "Funding sender 0xF60dAe43E8D7BeB51069e5B38469FaAB6f7A3624 for test randomStatetest68BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xF60dAe43E8D7BeB51069e5B38469FaAB6f7A3624)
NONCE=$((NONCE+1))

echo "Funding sender 0x4d0DbcC6e87Ac2af83CAd57f8C97Fc526f3f3E9c for test randomStatetest538BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x4d0DbcC6e87Ac2af83CAd57f8C97Fc526f3f3E9c)
NONCE=$((NONCE+1))

echo "Funding sender 0x996Bf472D8805e17221eA9AF6d2e61705252183a for test randomStatetest224BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x996Bf472D8805e17221eA9AF6d2e61705252183a)
NONCE=$((NONCE+1))

echo "Funding sender 0x11Db40325AC2eD3293C9C113CA41f16cFa7b9662 for test 201503110226PYTHON_DUP6BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x11Db40325AC2eD3293C9C113CA41f16cFa7b9662)
NONCE=$((NONCE+1))

echo "Funding sender 0x85Ae5A2aF948044B0eE62DD582A0d9e13CE0D568 for test randomStatetest622BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x85Ae5A2aF948044B0eE62DD582A0d9e13CE0D568)
NONCE=$((NONCE+1))

echo "Funding sender 0xD86190eDd4e2f4C8874C6889E57e7f2a682eeb14 for test randomStatetest109BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xD86190eDd4e2f4C8874C6889E57e7f2a682eeb14)
NONCE=$((NONCE+1))

echo "Funding sender 0xe46c09e258D654B1294b5Ea77f7f626b08680859 for test randomStatetest530BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xe46c09e258D654B1294b5Ea77f7f626b08680859)
NONCE=$((NONCE+1))

echo "Funding sender 0x5e9515F526D395B73Ba063364557E132875B76f6 for test randomStatetest218BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x5e9515F526D395B73Ba063364557E132875B76f6)
NONCE=$((NONCE+1))

echo "Funding sender 0xf0ff0DdF98EAdc79B09FB73D20b49f642Ff40310 for test randomStatetest253BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xf0ff0DdF98EAdc79B09FB73D20b49f642Ff40310)
NONCE=$((NONCE+1))

echo "Funding sender 0x75d43F2182a4a9Aca0229141926eEb9F8d0B015a for test randomStatetest8BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x75d43F2182a4a9Aca0229141926eEb9F8d0B015a)
NONCE=$((NONCE+1))

echo "Funding sender 0xB71A67C765865F0A02A73358e373f219FB5Cb3d0 for test randomStatetest479BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xB71A67C765865F0A02A73358e373f219FB5Cb3d0)
NONCE=$((NONCE+1))

echo "Funding sender 0x35C7a76a40727cF771d9C2e8b7495a2e8d3B6904 for test randomStatetest7BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x35C7a76a40727cF771d9C2e8b7495a2e8d3B6904)
NONCE=$((NONCE+1))

echo "Funding sender 0x7e5AC0DB07ffb083e701F3e0955b247315752Cd2 for test randomStatetest623BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x7e5AC0DB07ffb083e701F3e0955b247315752Cd2)
NONCE=$((NONCE+1))

echo "Funding sender 0xAcdD55262F21cFB87FcF5b88e9fBcc1Aa7509BD8 for test randomStatetest168BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xAcdD55262F21cFB87FcF5b88e9fBcc1Aa7509BD8)
NONCE=$((NONCE+1))

echo "Funding sender 0x2d0906ee67A78D4bB358B3c8486341900140b0CB for test randomStatetest40BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x2d0906ee67A78D4bB358B3c8486341900140b0CB)
NONCE=$((NONCE+1))

echo "Funding sender 0x119cb221419b60749f38983c4C30Ccf18A2fA6Ea for test randomStatetest459BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x119cb221419b60749f38983c4C30Ccf18A2fA6Ea)
NONCE=$((NONCE+1))

echo "Funding sender 0x053964AB836453BFd3d8dbd2638981CA18A3CE65 for test randomStatetest262BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x053964AB836453BFd3d8dbd2638981CA18A3CE65)
NONCE=$((NONCE+1))

echo "Funding sender 0xFd47c6B268F3eaD42dA91406834d0D02efB57bcC for test randomStatetest529BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xFd47c6B268F3eaD42dA91406834d0D02efB57bcC)
NONCE=$((NONCE+1))

echo "Funding sender 0xbE3a6e0E8011219203eeC74BdC1F47aCA29100bC for test randomStatetest99BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xbE3a6e0E8011219203eeC74BdC1F47aCA29100bC)
NONCE=$((NONCE+1))

echo "Funding sender 0xA66b3153C65e0Fd4F8c9a3cFCcaEeB7F6333EA91 for test randomStatetest186BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xA66b3153C65e0Fd4F8c9a3cFCcaEeB7F6333EA91)
NONCE=$((NONCE+1))

echo "Funding sender 0xe89cD9Fe5300935FC70F2b6f69d86F05851a2061 for test randomStatetest490BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xe89cD9Fe5300935FC70F2b6f69d86F05851a2061)
NONCE=$((NONCE+1))

echo "Funding sender 0x1F0bA9F420CA320997e84FF29C991c8843a857B8 for test randomStatetest86BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x1F0bA9F420CA320997e84FF29C991c8843a857B8)
NONCE=$((NONCE+1))

echo "Funding sender 0xd6c2342811c67005b00D1A3848bF2cD989FdCc10 for test randomStatetest617BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xd6c2342811c67005b00D1A3848bF2cD989FdCc10)
NONCE=$((NONCE+1))

echo "Funding sender 0x5cbC238bDfDEDdf42Fd90cb8e8b951770cFdd87e for test randomStatetest101BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x5cbC238bDfDEDdf42Fd90cb8e8b951770cFdd87e)
NONCE=$((NONCE+1))

echo "Funding sender 0xa081C3ce23B4ba207a0d9eFE2754f729F5f03e62 for test randomStatetest71BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xa081C3ce23B4ba207a0d9eFE2754f729F5f03e62)
NONCE=$((NONCE+1))

echo "Funding sender 0x447db36AA1C7dD9642668D3434896250fd03b81a for test ExtraData32 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x447db36AA1C7dD9642668D3434896250fd03b81a)
NONCE=$((NONCE+1))

echo "Funding sender 0x5BE3243C2D7252C0806F6bBA6A394E6aE73d70c4 for test timeDiff12 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x5BE3243C2D7252C0806F6bBA6A394E6aE73d70c4)
NONCE=$((NONCE+1))

echo "Funding sender 0x89eE4bcdfC65c754A55c49a9658C2405aEba4f5D for test log1_correct with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x89eE4bcdfC65c754A55c49a9658C2405aEba4f5D)
NONCE=$((NONCE+1))

echo "Funding sender 0x96DDe924Ce2da99a64437beBCb80f9F230f5b27d for test dataTx2 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x96DDe924Ce2da99a64437beBCb80f9F230f5b27d)
NONCE=$((NONCE+1))

echo "Funding sender 0x886Ca92a0f3725C04dDB51906969643d376fDAeb for test SimpleTx3LowS with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x886Ca92a0f3725C04dDB51906969643d376fDAeb)
NONCE=$((NONCE+1))

echo "Funding sender 0x5bd39F46A4C02F4E2c696fafdcC33A63421E8D93 for test timeDiff14 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x5bd39F46A4C02F4E2c696fafdcC33A63421E8D93)
NONCE=$((NONCE+1))

echo "Funding sender 0x84B53CB09c7dEABD0E24eC01A610201AF3C6B80A for test diff1024 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x84B53CB09c7dEABD0E24eC01A610201AF3C6B80A)
NONCE=$((NONCE+1))

echo "Funding sender 0x13dee60CbD5588737CE5f3Dea8a4B3dCE4c0FD65 for test gasLimitTooHigh2 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x13dee60CbD5588737CE5f3Dea8a4B3dCE4c0FD65)
NONCE=$((NONCE+1))

echo "Funding sender 0x82Cc58C3f44995d3500BbB5b756676382979cB69 for test RecallSuicidedContractInOneBlock with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x82Cc58C3f44995d3500BbB5b756676382979cB69)
NONCE=$((NONCE+1))

echo "Funding sender 0xB7D44CFcAA89471193cc39f7c92400648630f567 for test timeDiff13 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xB7D44CFcAA89471193cc39f7c92400648630f567)
NONCE=$((NONCE+1))

echo "Funding sender 0x2555d05BCace0CD5236bfCc7E58c70e4186D8258 for test RecallSuicidedContract with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x2555d05BCace0CD5236bfCc7E58c70e4186D8258)
NONCE=$((NONCE+1))

echo "Funding sender 0xf6DAAbE67836e398C328C8a40Ea31e6DdD6fA8f7 for test callRevert with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xf6DAAbE67836e398C328C8a40Ea31e6DdD6fA8f7)
NONCE=$((NONCE+1))

echo "Funding sender 0x8eff9263801f81a6836a9C075216A18d0E6D3943 for test SimpleTx with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x8eff9263801f81a6836a9C075216A18d0E6D3943)
NONCE=$((NONCE+1))

echo "Funding sender 0xd2B1DE5d73d87593dA45F4274Dba98666e584b7b for test AmIOnEIP150 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xd2B1DE5d73d87593dA45F4274Dba98666e584b7b)
NONCE=$((NONCE+1))

echo "Funding sender 0xEBD4f3AF06B0bf48611f27f45277A1Cbd313377A for test create2collisionwithSelfdestructSameBlock with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xEBD4f3AF06B0bf48611f27f45277A1Cbd313377A)
NONCE=$((NONCE+1))

echo "Funding sender 0x2C906d9b3f821EF9ed220FeB4Fa83c9E5E6CAF1c for test suicideStorageCheckVCreate with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x2C906d9b3f821EF9ed220FeB4Fa83c9E5E6CAF1c)
NONCE=$((NONCE+1))

echo "Funding sender 0x49A7FeA981cA81a200EEC17B60F45a7Aa3091514 for test suicideStorageCheck with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x49A7FeA981cA81a200EEC17B60F45a7Aa3091514)
NONCE=$((NONCE+1))

echo "Funding sender 0x60d72662d6F9Aa172E91F5e74C9Fa7d879cb9890 for test SuicidesMixingCoinbase2 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x60d72662d6F9Aa172E91F5e74C9Fa7d879cb9890)
NONCE=$((NONCE+1))

echo "Funding sender 0x9eDc3fe5BB45E7de5AF15211Aed9AA5cd2bB4229 for test ZeroValue_TransactionCALLwithData_ToOneStorageKey_OOGRevert_Paris with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x9eDc3fe5BB45E7de5AF15211Aed9AA5cd2bB4229)
NONCE=$((NONCE+1))

echo "Funding sender 0xC1c9A79dd279329A2e708502d75f3CDEd848B553 for test SuicidesMixingCoinbase with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xC1c9A79dd279329A2e708502d75f3CDEd848B553)
NONCE=$((NONCE+1))

echo "Funding sender 0xC8FC14d305d466f3DaaF184e0610db244e8F439C for test randomStatetest160 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xC8FC14d305d466f3DaaF184e0610db244e8F439C)
NONCE=$((NONCE+1))

echo "Funding sender 0x14dC9DF8600291158d1F46981ba09a097b4Acb2C for test suicideStorageCheckVCreate2 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x14dC9DF8600291158d1F46981ba09a097b4Acb2C)
NONCE=$((NONCE+1))

echo "Funding sender 0xe96401F53a52838016395eA9782E7fDBb44a69D1 for test randomStatetest594 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xe96401F53a52838016395eA9782E7fDBb44a69D1)
NONCE=$((NONCE+1))

echo "Funding sender 0xC419aB23b29d1e952e034BaC28BB54A0F74eEfde for test randomStatetest46 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xC419aB23b29d1e952e034BaC28BB54A0F74eEfde)
NONCE=$((NONCE+1))

echo "Funding sender 0xE23671529782F7A876f79460E66e33566FdCE0Bb for test callcodeOutput3partial with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xE23671529782F7A876f79460E66e33566FdCE0Bb)
NONCE=$((NONCE+1))

echo "Funding sender 0xd7F05ce7675fDBb751133760260cf44AD0DE336d for test randomStatetest170 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xd7F05ce7675fDBb751133760260cf44AD0DE336d)
NONCE=$((NONCE+1))

echo "Funding sender 0xA6fECb48c7720427206C86bbA3F69031f11abb20 for test OOGStateCopyContainingDeletedContract with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xA6fECb48c7720427206C86bbA3F69031f11abb20)
NONCE=$((NONCE+1))

echo "Funding sender 0xE00Ae718bA77eE48E5E736eEDB3bB3e757316e74 for test randomStatetest441 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xE00Ae718bA77eE48E5E736eEDB3bB3e757316e74)
NONCE=$((NONCE+1))

echo "Funding sender 0x99E5eFa1f3311f1A3496b3e9441d51137d29f30c for test randomStatetest94 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x99E5eFa1f3311f1A3496b3e9441d51137d29f30c)
NONCE=$((NONCE+1))

echo "Funding sender 0x8e9309ca1Ef8537087c4aDebF3d48b0Fc68268F3 for test randomStatetest123 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x8e9309ca1Ef8537087c4aDebF3d48b0Fc68268F3)
NONCE=$((NONCE+1))

echo "Funding sender 0x27c4fE920A4664d6c3e5fCF9d9403a9A79E38576 for test blockhashTests with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x27c4fE920A4664d6c3e5fCF9d9403a9A79E38576)
NONCE=$((NONCE+1))

echo "Funding sender 0xb1792942d2Cc2a556060D6eB82748312B04c791B for test randomStatetest324 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xb1792942d2Cc2a556060D6eB82748312B04c791B)
NONCE=$((NONCE+1))

echo "Funding sender 0x1c052F6a2E0CCdf72cbE19ED1FE1492C915ce6E7 for test multimpleBalanceInstruction with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x1c052F6a2E0CCdf72cbE19ED1FE1492C915ce6E7)
NONCE=$((NONCE+1))

echo "Funding sender 0xD8Ea41B42892f89331b1BF21b117e980959904BF for test simpleSuicide with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xD8Ea41B42892f89331b1BF21b117e980959904BF)
NONCE=$((NONCE+1))

echo "Funding sender 0x489163a6705Ed71Da65b7ddAB9FA37D274cAB431 for test randomStatetest38 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x489163a6705Ed71Da65b7ddAB9FA37D274cAB431)
NONCE=$((NONCE+1))

echo "Funding sender 0x3D06a99D0802d32A7ac00875F49C2820f2E6be76 for test randomStatetest375 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x3D06a99D0802d32A7ac00875F49C2820f2E6be76)
NONCE=$((NONCE+1))

echo "Funding sender 0x01B37ece1D3Cc77D255375E0C06070Ebb622d63d for test suicideCoinbaseState with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x01B37ece1D3Cc77D255375E0C06070Ebb622d63d)
NONCE=$((NONCE+1))

echo "Funding sender 0x31D2db5F264f0d8Caa13Aba7546b46F2044Fb480 for test randomStatetest328 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x31D2db5F264f0d8Caa13Aba7546b46F2044Fb480)
NONCE=$((NONCE+1))

echo "Funding sender 0x447cCa0FB2B7D0D652c4E7101f1588cA5444adDd for test ZeroValue_TransactionCALLwithData_ToNonZeroBalance_OOGRevert with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x447cCa0FB2B7D0D652c4E7101f1588cA5444adDd)
NONCE=$((NONCE+1))

echo "Funding sender 0xB68Cef64909dc0BBb141E2A635CE891a64982aD0 for test randomStatetest136 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xB68Cef64909dc0BBb141E2A635CE891a64982aD0)
NONCE=$((NONCE+1))

echo "Funding sender 0xC1c4A03dfd4DA030749E2F8804Be8ECA7285A60F for test randomStatetest377 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xC1c4A03dfd4DA030749E2F8804Be8ECA7285A60F)
NONCE=$((NONCE+1))

echo "Funding sender 0xD86B9bbDe01868b408934a3584CC9CFDdAAB1A59 for test extCodeHashOfDeletedAccountDynamic with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xD86B9bbDe01868b408934a3584CC9CFDdAAB1A59)
NONCE=$((NONCE+1))

echo "Funding sender 0x28FeBd413DdAbAEBb944558D0c64969405D269DF for test OverflowGasRequire with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x28FeBd413DdAbAEBb944558D0c64969405D269DF)
NONCE=$((NONCE+1))

echo "Funding sender 0xc58Ed11C754357d9ACE2355164f912fD91dFB217 for test randomStatetest229 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xc58Ed11C754357d9ACE2355164f912fD91dFB217)
NONCE=$((NONCE+1))

echo "Funding sender 0xCDB0A0ce5f67A994154149E00E55522fb131FA24 for test ZeroValue_TransactionCALLwithData_OOGRevert with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xCDB0A0ce5f67A994154149E00E55522fb131FA24)
NONCE=$((NONCE+1))

echo "Funding sender 0xa810c83ee5d0BFDE4EB883079390D176E046CcBb for test randomStatetest549 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xa810c83ee5d0BFDE4EB883079390D176E046CcBb)
NONCE=$((NONCE+1))

echo "Funding sender 0x924889fF6c05b9503d51AB064F4416d79A5155A2 for test BLOCKHASH_Bounds with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x924889fF6c05b9503d51AB064F4416d79A5155A2)
NONCE=$((NONCE+1))

echo "Funding sender 0x6664681EB617962F40826058AEE835E313e0023a for test BadStateRootTxBC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x6664681EB617962F40826058AEE835E313e0023a)
NONCE=$((NONCE+1))

echo "Funding sender 0xAF699BF915C61a62C2A01b0e2D51E3AC79f108cD for test randomStatetest223 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xAF699BF915C61a62C2A01b0e2D51E3AC79f108cD)
NONCE=$((NONCE+1))

echo "Funding sender 0xe912C5119cC699B625b4CeC5BDCBf58bD7fE2A3b for test TransactionFromCoinbaseHittingBlockGasLimit1 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xe912C5119cC699B625b4CeC5BDCBf58bD7fE2A3b)
NONCE=$((NONCE+1))

echo "Funding sender 0x1a5E268F69f638c0eb104c304958Be6403c03A17 for test suicideCoinbase with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x1a5E268F69f638c0eb104c304958Be6403c03A17)
NONCE=$((NONCE+1))

echo "Funding sender 0x8c94458a83A866f1c732Bf5b5B774fB43f4c6666 for test randomStatetest241 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x8c94458a83A866f1c732Bf5b5B774fB43f4c6666)
NONCE=$((NONCE+1))

echo "Funding sender 0xcB1806E2aceeda6f486771093eC60bf829AC634E for test suicideThenCheckBalance with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xcB1806E2aceeda6f486771093eC60bf829AC634E)
NONCE=$((NONCE+1))

echo "Funding sender 0x76EF38d0dcc889be6C9Ab7d2e50798d0b65a6C4C for test blockhashNonConstArg with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x76EF38d0dcc889be6C9Ab7d2e50798d0b65a6C4C)
NONCE=$((NONCE+1))

echo "Funding sender 0x8599cE9DF1ee3229f93c9A7Aa8c05f071D51Ea65 for test extCodeHashOfDeletedAccount with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x8599cE9DF1ee3229f93c9A7Aa8c05f071D51Ea65)
NONCE=$((NONCE+1))

echo "Funding sender 0xe886096Aee2D9Ba1636472a004107335AfB2fC09 for test ZeroValue_TransactionCALLwithData_ToEmpty_OOGRevert_Paris with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xe886096Aee2D9Ba1636472a004107335AfB2fC09)
NONCE=$((NONCE+1))

echo "Funding sender 0x6407EAaf857bcf1723C617891cd9059527043846 for test randomStatetest619 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x6407EAaf857bcf1723C617891cd9059527043846)
NONCE=$((NONCE+1))

echo "Funding sender 0x1124EC3d53eC68bdB87c0455c070E0937194146e for test optionsTest with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x1124EC3d53eC68bdB87c0455c070E0937194146e)
NONCE=$((NONCE+1))

echo "Funding sender 0x526B02AAE4EDd41A36B2DD5Ed173048A3F57a718 for test mergeExample with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x526B02AAE4EDd41A36B2DD5Ed173048A3F57a718)
NONCE=$((NONCE+1))

echo "Funding sender 0x5A962ce060bC47Cae19eA46b65cED5C95D4688A2 for test basefeeExample with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x5A962ce060bC47Cae19eA46b65cED5C95D4688A2)
NONCE=$((NONCE+1))

echo "Funding sender 0xe6E5b48B36929fc12950b07c00E705E011923e59 for test shanghaiExample with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xe6E5b48B36929fc12950b07c00E705E011923e59)
NONCE=$((NONCE+1))

echo "Funding sender 0x3e2D3047181377a96b896BD3142e8b6acA5161ae for test ShanghaiLove with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x3e2D3047181377a96b896BD3142e8b6acA5161ae)
NONCE=$((NONCE+1))

echo "Funding sender 0x4A29a3D404e95e7D3BeE98bD4EF20F19297C3811 for test DelegateCallSpam with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x4A29a3D404e95e7D3BeE98bD4EF20F19297C3811)
NONCE=$((NONCE+1))

echo "Funding sender 0x6F7aa6e8B6bB086946010bf66Ff1AB97dC7B2999 for test StrangeContractCreation with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x6F7aa6e8B6bB086946010bf66Ff1AB97dC7B2999)
NONCE=$((NONCE+1))

echo "Funding sender 0xD3131F2262994993D62e060b942B8d20E15c01a4 for test SuicideIssue with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xD3131F2262994993D62e060b942B8d20E15c01a4)
NONCE=$((NONCE+1))

echo "Funding sender 0x5c4AdDB8813dbDbcAd1fC1C38D6bF8d7BDBB2863 for test BlockGasLimit2p63m1 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x5c4AdDB8813dbDbcAd1fC1C38D6bF8d7BDBB2863)
NONCE=$((NONCE+1))

echo "Funding sender 0xec81215Fb4de45E6427968FBFafEfD314C3241F4 for test TransactionGasHigherThanLimit2p63m1 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xec81215Fb4de45E6427968FBFafEfD314C3241F4)
NONCE=$((NONCE+1))

echo "Funding sender 0x890B890596B495BE685954584b80097d0ae58911 for test TransactionGasHigherThanLimit2p63m1_2 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x890B890596B495BE685954584b80097d0ae58911)
NONCE=$((NONCE+1))

echo "Funding sender 0xdCB1FACA8d221FCD925d1D7e322A127d9eB26B06 for test SuicideTransaction with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xdCB1FACA8d221FCD925d1D7e322A127d9eB26B06)
NONCE=$((NONCE+1))

echo "Funding sender 0x55c1ECC46aa68b463098F3dcF30D6C3E28A20037 for test highGasUsage with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x55c1ECC46aa68b463098F3dcF30D6C3E28A20037)
NONCE=$((NONCE+1))

echo "Funding sender 0xDA67b54573FB9aC5758Bd6091303ebFB883d7074 for test DaoTransactions_UncleExtradata with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xDA67b54573FB9aC5758Bd6091303ebFB883d7074)
NONCE=$((NONCE+1))

echo "Funding sender 0x8E7E39e217CACE7014B414ba3d85C9374d34D3e4 for test DaoTransactions with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x8E7E39e217CACE7014B414ba3d85C9374d34D3e4)
NONCE=$((NONCE+1))

echo "Funding sender 0x12892d7B71e4078D83BBc62ACCe4cbe2Aa7bC979 for test DaoTransactions_EmptyTransactionAndForkBlocksAhead with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x12892d7B71e4078D83BBc62ACCe4cbe2Aa7bC979)
NONCE=$((NONCE+1))

echo "Funding sender 0xeFe562D087f0334c612E14d9e02af47cEAb47Dc2 for test DaoTransactions_XBlockm1 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xeFe562D087f0334c612E14d9e02af47cEAb47Dc2)
NONCE=$((NONCE+1))

echo "Funding sender 0xC8DfBFD1E8E91ad5A281b33C025Cf3252AB882ad for test BerlinToLondonTransition with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xC8DfBFD1E8E91ad5A281b33C025Cf3252AB882ad)
NONCE=$((NONCE+1))

echo "Funding sender 0x577479fFfAFe88bD337cA8Ce7AEC4FD1b25dFb2f for test EIP150Transition with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x577479fFfAFe88bD337cA8Ce7AEC4FD1b25dFb2f)
NONCE=$((NONCE+1))

echo "Funding sender 0xf65bd66339884178beD2F593eaC515F01Fa376E3 for test blockChainFrontierWithLargerTDvsHomesteadBlockchain2 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xf65bd66339884178beD2F593eaC515F01Fa376E3)
NONCE=$((NONCE+1))

echo "Funding sender 0x0F1e2ceaa564AdD93EDb21bb734Ef758dEc8A0d7 for test HomesteadOverrideFrontier with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x0F1e2ceaa564AdD93EDb21bb734Ef758dEc8A0d7)
NONCE=$((NONCE+1))

echo "Funding sender 0xC54385FE0c08963673776F0307159216407db6ed for test UncleFromFrontierInHomestead with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xC54385FE0c08963673776F0307159216407db6ed)
NONCE=$((NONCE+1))

echo "Funding sender 0x4224C37856bf74081f0d95bCe7b2D45627cC5c92 for test blockChainFrontierWithLargerTDvsHomesteadBlockchain with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x4224C37856bf74081f0d95bCe7b2D45627cC5c92)
NONCE=$((NONCE+1))

echo "Funding sender 0xc33D6E37A100315472A0d1B6fe2Ef539eB45f560 for test CallContractThatCreateContractBeforeAndAfterSwitchover with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xc33D6E37A100315472A0d1B6fe2Ef539eB45f560)
NONCE=$((NONCE+1))

echo "Funding sender 0x9636c585bAFad435a6bDA7338CAA7AbA7156cA2C for test ContractCreationFailsOnHomestead with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x9636c585bAFad435a6bDA7338CAA7AbA7156cA2C)
NONCE=$((NONCE+1))

echo "Funding sender 0xa210D38f98Aa62Eb804c8a7320977520E8a464f8 for test UnclePopulation with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xa210D38f98Aa62Eb804c8a7320977520E8a464f8)
NONCE=$((NONCE+1))

echo "Funding sender 0x080C7F12808cF2348757fa7c41554223c1f1e4a1 for test ConstantinopleFixTransition with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x080C7F12808cF2348757fa7c41554223c1f1e4a1)
NONCE=$((NONCE+1))

echo "Funding sender 0x074eD5981D695E42282368d0ad2172dB244601c6 for test powToPosTest with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x074eD5981D695E42282368d0ad2172dB244601c6)
NONCE=$((NONCE+1))

echo "Funding sender 0xBEAD110DF8e9b03eAdd343E948524170C2F8D19c for test powToPosBlockRejection with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xBEAD110DF8e9b03eAdd343E948524170C2F8D19c)
NONCE=$((NONCE+1))

echo "Funding sender 0x86A1cD5cbCDf11d988eaf33A02714d1fcF481402 for test ByzantiumTransition with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x86A1cD5cbCDf11d988eaf33A02714d1fcF481402)
NONCE=$((NONCE+1))

echo "Funding sender 0xcAa4356564C7FE355D6be3A58CDcbe80dFd153e2 for test cancunExample with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xcAa4356564C7FE355D6be3A58CDcbe80dFd153e2)
NONCE=$((NONCE+1))

echo "Funding sender 0xc824BeE00f3b5F1D4Dc6890299ABaa498926bbEA for test transFail with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xc824BeE00f3b5F1D4Dc6890299ABaa498926bbEA)
NONCE=$((NONCE+1))

echo "Funding sender 0x96F2D6fd9D7D3a9D12c52F9A8662F08f32f2b7D8 for test badUncles with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x96F2D6fd9D7D3a9D12c52F9A8662F08f32f2b7D8)
NONCE=$((NONCE+1))

echo "Funding sender 0x5f226ee71Ce654d2f87E80580E6f98E341AE49fB for test valCausesOOF with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x5f226ee71Ce654d2f87E80580E6f98E341AE49fB)
NONCE=$((NONCE+1))

echo "Funding sender 0xc076c7bA1042D946B04F5cA6799D0A5c92A6Fa9a for test baseFee with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xc076c7bA1042D946B04F5cA6799D0A5c92A6Fa9a)
NONCE=$((NONCE+1))

echo "Funding sender 0xc7D29734414242Aee2c458c96E5ec45E45985d22 for test intrinsicOrFail with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xc7D29734414242Aee2c458c96E5ec45E45985d22)
NONCE=$((NONCE+1))

echo "Funding sender 0x1bB58e3F9b9187e2a837aEF28Be98099bF89866e for test checkGasLimit with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x1bB58e3F9b9187e2a837aEF28Be98099bF89866e)
NONCE=$((NONCE+1))

echo "Funding sender 0x841C62bFd5E0deD437a56d40aDe5822d450D300C for test feeCap with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x841C62bFd5E0deD437a56d40aDe5822d450D300C)
NONCE=$((NONCE+1))

echo "Funding sender 0x308d72bE4AE83e7e3058fd86fF52fC407216a0F4 for test transactionFromSelfDestructedContract with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x308d72bE4AE83e7e3058fd86fF52fC407216a0F4)
NONCE=$((NONCE+1))

echo "Funding sender 0x3Dfa5c6c35E93CF5130371f5028b9943e4E51DBb for test warmup with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x3Dfa5c6c35E93CF5130371f5028b9943e4E51DBb)
NONCE=$((NONCE+1))

echo "Funding sender 0x985A457C4Ac8CcCdcbA147164384C7092B5C1455 for test timestampPerBlock with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x985A457C4Ac8CcCdcbA147164384C7092B5C1455)
NONCE=$((NONCE+1))

echo "Funding sender 0xF6605588dFB71263f6C0e2BA57899122F4543dc9 for test medDemand with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xF6605588dFB71263f6C0e2BA57899122F4543dc9)
NONCE=$((NONCE+1))

echo "Funding sender 0xe9E04F0Cf6B5ADaFf04aA71694eb5aA5294eaf06 for test highDemand with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xe9E04F0Cf6B5ADaFf04aA71694eb5aA5294eaf06)
NONCE=$((NONCE+1))

echo "Funding sender 0x1d6964B23330935b536f0f207fD9f5E4E270Ca10 for test tips with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x1d6964B23330935b536f0f207fD9f5E4E270Ca10)
NONCE=$((NONCE+1))

echo "Funding sender 0x30a3eafC3E695815cE71b7e04908D16d2251E910 for test burnVerify with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x30a3eafC3E695815cE71b7e04908D16d2251E910)
NONCE=$((NONCE+1))

echo "Funding sender 0xc99E08c46cb7F77B44f59a610a6965914626c56f for test intrinsic with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xc99E08c46cb7F77B44f59a610a6965914626c56f)
NONCE=$((NONCE+1))

echo "Funding sender 0xA3dFa44998842D0E01ee5a143B69611961ec3D03 for test lowDemand with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xA3dFa44998842D0E01ee5a143B69611961ec3D03)
NONCE=$((NONCE+1))

echo "Funding sender 0xa77a167F06f1bf9B66be2A5Dc04A0Aca9ca3034C for test intrinsicTip with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xa77a167F06f1bf9B66be2A5Dc04A0Aca9ca3034C)
NONCE=$((NONCE+1))

echo "Funding sender 0x18E1D5a19E987622a3175F048d30c1318775E7E2 for test transType with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x18E1D5a19E987622a3175F048d30c1318775E7E2)
NONCE=$((NONCE+1))

echo "Funding sender 0xE2363303a06E5D5Add5eC2715af6746da4E8cDCF for test reentrencySuicide with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xE2363303a06E5D5Add5eC2715af6746da4E8cDCF)
NONCE=$((NONCE+1))

echo "Funding sender 0x934FB220b81F07b5F5E1d9436F2D9f852E734295 for test emptyPostTransfer with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x934FB220b81F07b5F5E1d9436F2D9f852E734295)
NONCE=$((NONCE+1))

echo "Funding sender 0x41496A819bA8d4fcA5CDBc461195d004EC6eCA2d for test eip2930 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x41496A819bA8d4fcA5CDBc461195d004EC6eCA2d)
NONCE=$((NONCE+1))

echo "Funding sender 0xc73C86993AAd53c51AA7bd4cd6F2Ea637250cF83 for test testOpcode_00 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xc73C86993AAd53c51AA7bd4cd6F2Ea637250cF83)
NONCE=$((NONCE+1))

echo "Funding sender 0x90626b06F3a0a38ccde9f04Aa26689171497E05e for test testOpcode_01 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x90626b06F3a0a38ccde9f04Aa26689171497E05e)
NONCE=$((NONCE+1))

echo "Funding sender 0xe053e42f03C54b76BF76fdA1C6E3600f4229bfBe for test testOpcode_02 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xe053e42f03C54b76BF76fdA1C6E3600f4229bfBe)
NONCE=$((NONCE+1))

echo "Funding sender 0x8b8Ecbd320BD474e1b76794eedD18B604B5C2ACa for test testOpcode_03 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x8b8Ecbd320BD474e1b76794eedD18B604B5C2ACa)
NONCE=$((NONCE+1))

echo "Funding sender 0x045dC7395Af8CB87Bae37e460018d716fF0A7552 for test testOpcode_04 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x045dC7395Af8CB87Bae37e460018d716fF0A7552)
NONCE=$((NONCE+1))

echo "Funding sender 0xeb125EC040943f0bE3F4681689Bc17cd2efe0885 for test testOpcode_05 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xeb125EC040943f0bE3F4681689Bc17cd2efe0885)
NONCE=$((NONCE+1))

echo "Funding sender 0x708B1Baf4E5753227bc0e84221604aD18DA89e65 for test testOpcode_06 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x708B1Baf4E5753227bc0e84221604aD18DA89e65)
NONCE=$((NONCE+1))

echo "Funding sender 0xD24a47253c9BCe812E72D518683bE337852Ce9B1 for test testOpcode_07 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xD24a47253c9BCe812E72D518683bE337852Ce9B1)
NONCE=$((NONCE+1))

echo "Funding sender 0x3D8D6dB56a88c1Ee57aFE71bEfdF76762D0b379f for test testOpcode_08 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x3D8D6dB56a88c1Ee57aFE71bEfdF76762D0b379f)
NONCE=$((NONCE+1))

echo "Funding sender 0x65306d760609D287DB65FD42f5E9C546Bb2CE6fc for test testOpcode_09 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x65306d760609D287DB65FD42f5E9C546Bb2CE6fc)
NONCE=$((NONCE+1))

echo "Funding sender 0x3d50b65a97c8d12d8e5558D95B8440bd8b472743 for test testOpcode_0a with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x3d50b65a97c8d12d8e5558D95B8440bd8b472743)
NONCE=$((NONCE+1))

echo "Funding sender 0xc553022D76604457B818382256D55CfD53ed92cF for test testOpcode_0b with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xc553022D76604457B818382256D55CfD53ed92cF)
NONCE=$((NONCE+1))

echo "Funding sender 0x259314ce4C6fE4a88cB5d7BF11DAEe7B4CD296A2 for test testOpcode_0c with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x259314ce4C6fE4a88cB5d7BF11DAEe7B4CD296A2)
NONCE=$((NONCE+1))

echo "Funding sender 0x1B51047999b21354e66A7eFcd0DF13d846cb982A for test testOpcode_0d with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x1B51047999b21354e66A7eFcd0DF13d846cb982A)
NONCE=$((NONCE+1))

echo "Funding sender 0xFd3d568a4da608997574df7d2d6d16B998AE5ab8 for test testOpcode_0e with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xFd3d568a4da608997574df7d2d6d16B998AE5ab8)
NONCE=$((NONCE+1))

echo "Funding sender 0x1f1304D7711e0Aeacd97fA553F549A4323B00019 for test testOpcode_0f with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x1f1304D7711e0Aeacd97fA553F549A4323B00019)
NONCE=$((NONCE+1))

echo "Funding sender 0x18625C66236dbeD8a2d3B1A31d40567666024258 for test testOpcode_30 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x18625C66236dbeD8a2d3B1A31d40567666024258)
NONCE=$((NONCE+1))

echo "Funding sender 0x7d4Bbdf76EB1f34E0ca79A457Da871B21C6DbCbf for test testOpcode_31 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x7d4Bbdf76EB1f34E0ca79A457Da871B21C6DbCbf)
NONCE=$((NONCE+1))

echo "Funding sender 0x6187cE5128efc98C3C810f07E57C2aA63C13AEf7 for test testOpcode_32 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x6187cE5128efc98C3C810f07E57C2aA63C13AEf7)
NONCE=$((NONCE+1))

echo "Funding sender 0x348Eee78A01b188d76c11cc064af1D9B8DFAcC47 for test testOpcode_33 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x348Eee78A01b188d76c11cc064af1D9B8DFAcC47)
NONCE=$((NONCE+1))

echo "Funding sender 0xB28D1b6CAB597e21AcE3372D12da8c805aDa94A4 for test testOpcode_34 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xB28D1b6CAB597e21AcE3372D12da8c805aDa94A4)
NONCE=$((NONCE+1))

echo "Funding sender 0x95953B6728Fa24651cD839baE4E457FAdb78a499 for test testOpcode_35 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x95953B6728Fa24651cD839baE4E457FAdb78a499)
NONCE=$((NONCE+1))

echo "Funding sender 0x11A04814810aBE26973470BbEfcee4de3218baF8 for test testOpcode_36 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x11A04814810aBE26973470BbEfcee4de3218baF8)
NONCE=$((NONCE+1))

echo "Funding sender 0x7F4d626399481bab0edDD267a122E9d5c564e4eB for test testOpcode_37 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x7F4d626399481bab0edDD267a122E9d5c564e4eB)
NONCE=$((NONCE+1))

echo "Funding sender 0x0231cB23e81711255405FA4DE50e38539Aa48C3B for test testOpcode_38 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x0231cB23e81711255405FA4DE50e38539Aa48C3B)
NONCE=$((NONCE+1))

echo "Funding sender 0x54CCe2a0Fbe84bB1Dc4e25DAb2Dd7cf60A5C41f8 for test testOpcode_39 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x54CCe2a0Fbe84bB1Dc4e25DAb2Dd7cf60A5C41f8)
NONCE=$((NONCE+1))

echo "Funding sender 0x9093F042E651f7B7A86E7fd588f14c1A6DE43649 for test testOpcode_3a with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x9093F042E651f7B7A86E7fd588f14c1A6DE43649)
NONCE=$((NONCE+1))

echo "Funding sender 0x62C0157d1c4b745587F27b22A822E10B6f109806 for test testOpcode_3b with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x62C0157d1c4b745587F27b22A822E10B6f109806)
NONCE=$((NONCE+1))

echo "Funding sender 0xf7853f2673e13BE068214aee8827eD77DE5FBa1a for test testOpcode_3c with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xf7853f2673e13BE068214aee8827eD77DE5FBa1a)
NONCE=$((NONCE+1))

echo "Funding sender 0x7fF627EEB578F17F158C73975Ccd15eB2a237eCE for test testOpcode_3d with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x7fF627EEB578F17F158C73975Ccd15eB2a237eCE)
NONCE=$((NONCE+1))

echo "Funding sender 0xDd40e709050A005F55AABF1114B0E97C5cfF3c73 for test testOpcode_3e with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xDd40e709050A005F55AABF1114B0E97C5cfF3c73)
NONCE=$((NONCE+1))

echo "Funding sender 0x0f069B752E36245363555dd54FA2f28485aE53d8 for test testOpcode_3f with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x0f069B752E36245363555dd54FA2f28485aE53d8)
NONCE=$((NONCE+1))

echo "Funding sender 0xB86D0fcDf8Aa33CCAFee46C698eFFE855A008909 for test testOpcode_b0 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xB86D0fcDf8Aa33CCAFee46C698eFFE855A008909)
NONCE=$((NONCE+1))

echo "Funding sender 0xe1481A07098F4B946465C633beD0537246A2cDBC for test testOpcode_b1 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xe1481A07098F4B946465C633beD0537246A2cDBC)
NONCE=$((NONCE+1))

echo "Funding sender 0x6Cc0afAD951AAc3c948bBe5b66cE8F5446225De6 for test testOpcode_b2 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x6Cc0afAD951AAc3c948bBe5b66cE8F5446225De6)
NONCE=$((NONCE+1))

echo "Funding sender 0xaf5F173Ab4EefC225B230d243361B10D3568c6e0 for test testOpcode_b3 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xaf5F173Ab4EefC225B230d243361B10D3568c6e0)
NONCE=$((NONCE+1))

echo "Funding sender 0xb5B9906F98e65e392021FFc6c455D2beb3Dea5fF for test testOpcode_b4 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xb5B9906F98e65e392021FFc6c455D2beb3Dea5fF)
NONCE=$((NONCE+1))

echo "Funding sender 0x668798791dE4BF079FF05CF6FA53a50827c1f8D6 for test testOpcode_b5 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x668798791dE4BF079FF05CF6FA53a50827c1f8D6)
NONCE=$((NONCE+1))

echo "Funding sender 0x0974abE5EF35D18bdE67830573331f3002eb77c6 for test testOpcode_b6 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x0974abE5EF35D18bdE67830573331f3002eb77c6)
NONCE=$((NONCE+1))

echo "Funding sender 0xEdf09B4CB071877BF0EdCcC7B429294CCb8dBf39 for test testOpcode_b7 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xEdf09B4CB071877BF0EdCcC7B429294CCb8dBf39)
NONCE=$((NONCE+1))

echo "Funding sender 0x7ac0F64d314FBd161d395cDe299Ea52262746519 for test testOpcode_b8 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x7ac0F64d314FBd161d395cDe299Ea52262746519)
NONCE=$((NONCE+1))

echo "Funding sender 0x03Aa27B926b49CD012A6695AC289F6D6bC833fA8 for test testOpcode_b9 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x03Aa27B926b49CD012A6695AC289F6D6bC833fA8)
NONCE=$((NONCE+1))

echo "Funding sender 0x0FE1D42F3e8eD995AF10Fa193295BE54f8eb8518 for test testOpcode_ba with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x0FE1D42F3e8eD995AF10Fa193295BE54f8eb8518)
NONCE=$((NONCE+1))

echo "Funding sender 0xC6e9FbB26C25daF6a8181faF2F8419E817297afa for test testOpcode_bb with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xC6e9FbB26C25daF6a8181faF2F8419E817297afa)
NONCE=$((NONCE+1))

echo "Funding sender 0x20b618fD99943d89ce2249C6D431E7d02cB4e666 for test testOpcode_bc with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x20b618fD99943d89ce2249C6D431E7d02cB4e666)
NONCE=$((NONCE+1))

echo "Funding sender 0x7a3bdeeC3Bc78094Af56FD8F3f57660468eDdD4d for test testOpcode_bd with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x7a3bdeeC3Bc78094Af56FD8F3f57660468eDdD4d)
NONCE=$((NONCE+1))

echo "Funding sender 0xa1724861FE7e9D1af753948A2EBe58FD464d555B for test testOpcode_be with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xa1724861FE7e9D1af753948A2EBe58FD464d555B)
NONCE=$((NONCE+1))

echo "Funding sender 0x00675c4bF5FD2d4d32757aAaBd710f4e929e4716 for test testOpcode_bf with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x00675c4bF5FD2d4d32757aAaBd710f4e929e4716)
NONCE=$((NONCE+1))

echo "Funding sender 0x08d63748D5b75B824B78dFB6e61853460eBD481a for test testOpcode_60 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x08d63748D5b75B824B78dFB6e61853460eBD481a)
NONCE=$((NONCE+1))

echo "Funding sender 0x83D95980D1489EA3Ea33150f10A7E3fd965FBbc6 for test testOpcode_61 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x83D95980D1489EA3Ea33150f10A7E3fd965FBbc6)
NONCE=$((NONCE+1))

echo "Funding sender 0xEce7b9eF8B787F7a0BAd41011Beb138675a72943 for test testOpcode_62 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xEce7b9eF8B787F7a0BAd41011Beb138675a72943)
NONCE=$((NONCE+1))

echo "Funding sender 0xca647944C9359ec1708cD1D05857229beb709Edb for test testOpcode_63 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xca647944C9359ec1708cD1D05857229beb709Edb)
NONCE=$((NONCE+1))

echo "Funding sender 0x367724911Afa418c941cE847e6232811BDBA713F for test testOpcode_64 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x367724911Afa418c941cE847e6232811BDBA713F)
NONCE=$((NONCE+1))

echo "Funding sender 0x488Bb06519CbdF4f79ED2ba4Dc9310A50cFEc93A for test testOpcode_65 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x488Bb06519CbdF4f79ED2ba4Dc9310A50cFEc93A)
NONCE=$((NONCE+1))

echo "Funding sender 0x04c74dAEFd108e70d6074CB0A5077901BA0ECAAd for test testOpcode_66 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x04c74dAEFd108e70d6074CB0A5077901BA0ECAAd)
NONCE=$((NONCE+1))

echo "Funding sender 0x05844dd4E881D0C87bed7eF5e41f9eb7692a4148 for test testOpcode_67 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x05844dd4E881D0C87bed7eF5e41f9eb7692a4148)
NONCE=$((NONCE+1))

echo "Funding sender 0xc011FF5A1710d4CF99f2bdeA5f97379f770afB71 for test testOpcode_68 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xc011FF5A1710d4CF99f2bdeA5f97379f770afB71)
NONCE=$((NONCE+1))

echo "Funding sender 0x697386d4467f8a330919Ee990cE69dbb315623c3 for test testOpcode_69 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x697386d4467f8a330919Ee990cE69dbb315623c3)
NONCE=$((NONCE+1))

echo "Funding sender 0x94a204Be15B21e99c2F85eECcECC2e4E4e1562D1 for test testOpcode_6a with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x94a204Be15B21e99c2F85eECcECC2e4E4e1562D1)
NONCE=$((NONCE+1))

echo "Funding sender 0x890A2536EDcb324BdF7c7e804CBb962B9Aa78041 for test testOpcode_6b with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x890A2536EDcb324BdF7c7e804CBb962B9Aa78041)
NONCE=$((NONCE+1))

echo "Funding sender 0xc1806D00957338A32c46Ec8B4114D0B76E8BabcB for test testOpcode_6c with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xc1806D00957338A32c46Ec8B4114D0B76E8BabcB)
NONCE=$((NONCE+1))

echo "Funding sender 0x6eb7844398f0D63eDad2E1562E3eA8816DDA47D8 for test testOpcode_6d with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x6eb7844398f0D63eDad2E1562E3eA8816DDA47D8)
NONCE=$((NONCE+1))

echo "Funding sender 0x50f2CdFA60773Ebd62F049F4187DEb1FbfeB218C for test testOpcode_6e with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x50f2CdFA60773Ebd62F049F4187DEb1FbfeB218C)
NONCE=$((NONCE+1))

echo "Funding sender 0x3D3E2a101B6A6A7B47515a615b0a8D691eD4D2Eb for test testOpcode_6f with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x3D3E2a101B6A6A7B47515a615b0a8D691eD4D2Eb)
NONCE=$((NONCE+1))

echo "Funding sender 0xE6d7715B173522eA9513525bD02868e755b1FB45 for test testOpcode_90 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xE6d7715B173522eA9513525bD02868e755b1FB45)
NONCE=$((NONCE+1))

echo "Funding sender 0xF4903BBDc0C9e9Fbf4E798bB00424378f562D28A for test testOpcode_91 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xF4903BBDc0C9e9Fbf4E798bB00424378f562D28A)
NONCE=$((NONCE+1))

echo "Funding sender 0x2d373356f2fB9B9E4d15421d066524547042100a for test testOpcode_92 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x2d373356f2fB9B9E4d15421d066524547042100a)
NONCE=$((NONCE+1))

echo "Funding sender 0x39C15119196d4303De425acc6517a69bE5A21d77 for test testOpcode_93 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x39C15119196d4303De425acc6517a69bE5A21d77)
NONCE=$((NONCE+1))

echo "Funding sender 0x584bE1E3fc5e58aeC83D97d0f990a0b3682f6B3c for test testOpcode_94 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x584bE1E3fc5e58aeC83D97d0f990a0b3682f6B3c)
NONCE=$((NONCE+1))

echo "Funding sender 0x0e8EF926EA5e6eC81fb9216A5673774c26539018 for test testOpcode_95 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x0e8EF926EA5e6eC81fb9216A5673774c26539018)
NONCE=$((NONCE+1))

echo "Funding sender 0xba8a8C7BAEE9D46ef163Ce6ccd16cFFa19E54245 for test testOpcode_96 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xba8a8C7BAEE9D46ef163Ce6ccd16cFFa19E54245)
NONCE=$((NONCE+1))

echo "Funding sender 0xa0C9Ba742dDe2F94711ea23d247BA8908Fd3a821 for test testOpcode_97 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xa0C9Ba742dDe2F94711ea23d247BA8908Fd3a821)
NONCE=$((NONCE+1))

echo "Funding sender 0xf331243C6Bd9e1352aa195FA8748ed408d8a533A for test testOpcode_98 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xf331243C6Bd9e1352aa195FA8748ed408d8a533A)
NONCE=$((NONCE+1))

echo "Funding sender 0xBc120985B674643DfD6601BeE90B35C0E213ac83 for test testOpcode_99 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xBc120985B674643DfD6601BeE90B35C0E213ac83)
NONCE=$((NONCE+1))

echo "Funding sender 0xd76A8649726D36736Da0dE9a471BEd600463eBA6 for test testOpcode_9a with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xd76A8649726D36736Da0dE9a471BEd600463eBA6)
NONCE=$((NONCE+1))

echo "Funding sender 0xFcF76e93d1e332104Bd34fE461006eBffC34E560 for test testOpcode_9b with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xFcF76e93d1e332104Bd34fE461006eBffC34E560)
NONCE=$((NONCE+1))

echo "Funding sender 0xb929841E71283DFE26F9d4B4856AD409fF6b412A for test testOpcode_9c with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xb929841E71283DFE26F9d4B4856AD409fF6b412A)
NONCE=$((NONCE+1))

echo "Funding sender 0x61076CE41A22c0511f5d70E037072bE440E7c21a for test testOpcode_9d with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x61076CE41A22c0511f5d70E037072bE440E7c21a)
NONCE=$((NONCE+1))

echo "Funding sender 0xC2756CcD9eDdb7e8bF0C8248adE99f871c15B2b9 for test testOpcode_9e with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xC2756CcD9eDdb7e8bF0C8248adE99f871c15B2b9)
NONCE=$((NONCE+1))

echo "Funding sender 0x4E9e835D82BB8025AbEebdEc2De5Cfb1b26298C1 for test testOpcode_9f with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x4E9e835D82BB8025AbEebdEc2De5Cfb1b26298C1)
NONCE=$((NONCE+1))

echo "Funding sender 0xAa96B1dc0294B062ACF4EFa757009BdC9311A2B4 for test testOpcode_40 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xAa96B1dc0294B062ACF4EFa757009BdC9311A2B4)
NONCE=$((NONCE+1))

echo "Funding sender 0x86DC66Ef0aa5164aFF0BAB7A9c762F62dc01871D for test testOpcode_41 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x86DC66Ef0aa5164aFF0BAB7A9c762F62dc01871D)
NONCE=$((NONCE+1))

echo "Funding sender 0x27c796408E30A3c31a61859CD0bdfA480Db37D16 for test testOpcode_42 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x27c796408E30A3c31a61859CD0bdfA480Db37D16)
NONCE=$((NONCE+1))

echo "Funding sender 0x69241d749f28d72B68Cc02519CdDEAe3A7C931c8 for test testOpcode_43 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x69241d749f28d72B68Cc02519CdDEAe3A7C931c8)
NONCE=$((NONCE+1))

echo "Funding sender 0x823f4ff2260356a3e2bfD8f0570669B65851565b for test testOpcode_44 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x823f4ff2260356a3e2bfD8f0570669B65851565b)
NONCE=$((NONCE+1))

echo "Funding sender 0xafADDa18e533C93B894b0542807534f96118ab68 for test testOpcode_45 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xafADDa18e533C93B894b0542807534f96118ab68)
NONCE=$((NONCE+1))

echo "Funding sender 0xCF87B26a26bB166171fc8a2A0c4f68f273cEc00C for test testOpcode_46 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xCF87B26a26bB166171fc8a2A0c4f68f273cEc00C)
NONCE=$((NONCE+1))

echo "Funding sender 0x4b0fBD443E0507148D9fEcB91903702b749b525A for test testOpcode_47 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x4b0fBD443E0507148D9fEcB91903702b749b525A)
NONCE=$((NONCE+1))

echo "Funding sender 0x3683BF8DDdF2ACE769a2456277Aae0beDF52E9c4 for test testOpcode_48 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x3683BF8DDdF2ACE769a2456277Aae0beDF52E9c4)
NONCE=$((NONCE+1))

echo "Funding sender 0x005b270e5D4526f42441facab07F5B243E0B65F1 for test testOpcode_49 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x005b270e5D4526f42441facab07F5B243E0B65F1)
NONCE=$((NONCE+1))

echo "Funding sender 0xb7FdC8EcfA2108993Fcc55CfEFFC0d969e65bAB2 for test testOpcode_4a with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xb7FdC8EcfA2108993Fcc55CfEFFC0d969e65bAB2)
NONCE=$((NONCE+1))

echo "Funding sender 0xb64255c8f2F3C3959Cd64e0f85fB97F2780FD13c for test testOpcode_4b with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xb64255c8f2F3C3959Cd64e0f85fB97F2780FD13c)
NONCE=$((NONCE+1))

echo "Funding sender 0x4e9bF5C820C1126289Bc386Ab91bd2A0e75854cC for test testOpcode_4c with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x4e9bF5C820C1126289Bc386Ab91bd2A0e75854cC)
NONCE=$((NONCE+1))

echo "Funding sender 0x34655eb99abdA97702eFE2623076daa2ad5c3Acb for test testOpcode_4d with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x34655eb99abdA97702eFE2623076daa2ad5c3Acb)
NONCE=$((NONCE+1))

echo "Funding sender 0x9406e36fC1650E054046Aae3bd937bE55831b1a7 for test testOpcode_4e with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x9406e36fC1650E054046Aae3bd937bE55831b1a7)
NONCE=$((NONCE+1))

echo "Funding sender 0x6EeD373c7fD52aaD188402c08147b879910B17B0 for test testOpcode_4f with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x6EeD373c7fD52aaD188402c08147b879910B17B0)
NONCE=$((NONCE+1))

echo "Funding sender 0x25a85c577989c693fB78bA6F1EE43A2b1Bc19B21 for test testOpcode_10 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x25a85c577989c693fB78bA6F1EE43A2b1Bc19B21)
NONCE=$((NONCE+1))

echo "Funding sender 0x06ECeb26DdF7f42bBa4C2Ba1dDC44F95de2beC8F for test testOpcode_11 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x06ECeb26DdF7f42bBa4C2Ba1dDC44F95de2beC8F)
NONCE=$((NONCE+1))

echo "Funding sender 0xa5f6ac184eE274D69a36ae7B3a36362980092b4d for test testOpcode_12 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xa5f6ac184eE274D69a36ae7B3a36362980092b4d)
NONCE=$((NONCE+1))

echo "Funding sender 0x02a12E13B6Ce910AC3453F28840F22d34174f002 for test testOpcode_13 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x02a12E13B6Ce910AC3453F28840F22d34174f002)
NONCE=$((NONCE+1))

echo "Funding sender 0x8344a322994880899b38b1e1DdBa3817c43E8E95 for test testOpcode_14 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x8344a322994880899b38b1e1DdBa3817c43E8E95)
NONCE=$((NONCE+1))

echo "Funding sender 0x4EBC7C3e413a69F34665073f2e9f0423b70af753 for test testOpcode_15 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x4EBC7C3e413a69F34665073f2e9f0423b70af753)
NONCE=$((NONCE+1))

echo "Funding sender 0x9F226D26fE1fb4d5f3886065669CB04cAF241BA4 for test testOpcode_16 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x9F226D26fE1fb4d5f3886065669CB04cAF241BA4)
NONCE=$((NONCE+1))

echo "Funding sender 0xB622eE1d7dEa7f271b6f2C0D86E9D15f50195C0E for test testOpcode_17 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xB622eE1d7dEa7f271b6f2C0D86E9D15f50195C0E)
NONCE=$((NONCE+1))

echo "Funding sender 0x35eBD6784490Ae126b09eB5366148AA9fD0D3DEb for test testOpcode_18 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x35eBD6784490Ae126b09eB5366148AA9fD0D3DEb)
NONCE=$((NONCE+1))

echo "Funding sender 0xA4ceA321629EDBf1562a8d22Af5ad98598e3fFe6 for test testOpcode_19 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xA4ceA321629EDBf1562a8d22Af5ad98598e3fFe6)
NONCE=$((NONCE+1))

echo "Funding sender 0x831b4C5d280B3D171296eD90a5C88e98CD3302D5 for test testOpcode_1a with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x831b4C5d280B3D171296eD90a5C88e98CD3302D5)
NONCE=$((NONCE+1))

echo "Funding sender 0x2997e3B06219E6E201EC5460B93178413955e80f for test testOpcode_1b with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x2997e3B06219E6E201EC5460B93178413955e80f)
NONCE=$((NONCE+1))

echo "Funding sender 0xF1D1642747015Bd5d8d02f25F1dbe3eb6a3Cef68 for test testOpcode_1c with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xF1D1642747015Bd5d8d02f25F1dbe3eb6a3Cef68)
NONCE=$((NONCE+1))

echo "Funding sender 0x24f88591694646f0B3bcb7694F987A0dFec8390f for test testOpcode_1d with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x24f88591694646f0B3bcb7694F987A0dFec8390f)
NONCE=$((NONCE+1))

echo "Funding sender 0x652438034070d2A29A90553EC6d1977f86F1753D for test testOpcode_1e with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x652438034070d2A29A90553EC6d1977f86F1753D)
NONCE=$((NONCE+1))

echo "Funding sender 0xC711cA496ae8883615FAaC2667a920dFC4dAf3e1 for test testOpcode_1f with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xC711cA496ae8883615FAaC2667a920dFC4dAf3e1)
NONCE=$((NONCE+1))

echo "Funding sender 0xD011b301d7d98573a2CFBFB9A3c95Da19d13452e for test testOpcode_f0 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xD011b301d7d98573a2CFBFB9A3c95Da19d13452e)
NONCE=$((NONCE+1))

echo "Funding sender 0x9AcA9Fd5476de8987dDa6104EfE28B68Af9e4a79 for test testOpcode_f1 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x9AcA9Fd5476de8987dDa6104EfE28B68Af9e4a79)
NONCE=$((NONCE+1))

echo "Funding sender 0x54e9f978083394c761076Ca7E905e5FDfb0E5260 for test testOpcode_f2 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x54e9f978083394c761076Ca7E905e5FDfb0E5260)
NONCE=$((NONCE+1))

echo "Funding sender 0xa3ddA744B6bb770688bb09a5AB73a226E6796f8f for test testOpcode_f3 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xa3ddA744B6bb770688bb09a5AB73a226E6796f8f)
NONCE=$((NONCE+1))

echo "Funding sender 0xBcBc7ae32b8ED29Ff542c8b3870a9Be3EA4f4511 for test testOpcode_f4 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xBcBc7ae32b8ED29Ff542c8b3870a9Be3EA4f4511)
NONCE=$((NONCE+1))

echo "Funding sender 0x74332cb8c62DfFF5dD8DB641A0C5a2BED80678dA for test testOpcode_f5 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x74332cb8c62DfFF5dD8DB641A0C5a2BED80678dA)
NONCE=$((NONCE+1))

echo "Funding sender 0x55dED15ff3575c3DA853495130B9F7439Ae0A59F for test testOpcode_f6 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x55dED15ff3575c3DA853495130B9F7439Ae0A59F)
NONCE=$((NONCE+1))

echo "Funding sender 0xE8eB5F57905CbFD07021f6e165B1d104bCF90620 for test testOpcode_f7 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xE8eB5F57905CbFD07021f6e165B1d104bCF90620)
NONCE=$((NONCE+1))

echo "Funding sender 0xEB5fbcbfe4Fe5847Cb61554Cc9D5089c87d59993 for test testOpcode_f8 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xEB5fbcbfe4Fe5847Cb61554Cc9D5089c87d59993)
NONCE=$((NONCE+1))

echo "Funding sender 0x01E4D0b40616934eF5F1A380cA44a9be2B3BD788 for test testOpcode_f9 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x01E4D0b40616934eF5F1A380cA44a9be2B3BD788)
NONCE=$((NONCE+1))

echo "Funding sender 0x3Bc8bc272ad7584B6cbE48A30AfFF83CBaEB0f8C for test testOpcode_fa with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x3Bc8bc272ad7584B6cbE48A30AfFF83CBaEB0f8C)
NONCE=$((NONCE+1))

echo "Funding sender 0x53040d1cB6Cc61F8a74Ceb47cf8880d38466bd1F for test testOpcode_fb with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x53040d1cB6Cc61F8a74Ceb47cf8880d38466bd1F)
NONCE=$((NONCE+1))

echo "Funding sender 0xA0Ad0a00C1a58175c3c6e5d404304a5e857a202a for test testOpcode_fc with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xA0Ad0a00C1a58175c3c6e5d404304a5e857a202a)
NONCE=$((NONCE+1))

echo "Funding sender 0x4C8686561e509E2B669C8F862Ef461e984eA72b1 for test testOpcode_fd with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x4C8686561e509E2B669C8F862Ef461e984eA72b1)
NONCE=$((NONCE+1))

echo "Funding sender 0xf581b922eFf28a86B40793CcddCc261AE68F118F for test testOpcode_fe with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xf581b922eFf28a86B40793CcddCc261AE68F118F)
NONCE=$((NONCE+1))

echo "Funding sender 0xF430f1a568E702303732B6D4Cd75Be16209d824a for test testOpcode_ff with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xF430f1a568E702303732B6D4Cd75Be16209d824a)
NONCE=$((NONCE+1))

echo "Funding sender 0x9791E10609c9a816d56749b41F0cE82D3dfA5fd3 for test selfdestructBalance with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x9791E10609c9a816d56749b41F0cE82D3dfA5fd3)
NONCE=$((NONCE+1))

echo "Funding sender 0xA8329B80b8C5d7FB0690e12062f82E64D90Ad2b0 for test testOpcode_50 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xA8329B80b8C5d7FB0690e12062f82E64D90Ad2b0)
NONCE=$((NONCE+1))

echo "Funding sender 0x742c9B432f7F6C5960c51499B48e1C729f9A4179 for test testOpcode_51 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x742c9B432f7F6C5960c51499B48e1C729f9A4179)
NONCE=$((NONCE+1))

echo "Funding sender 0x7a79510d9a4E7f287a49F302747e527a83082720 for test testOpcode_52 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x7a79510d9a4E7f287a49F302747e527a83082720)
NONCE=$((NONCE+1))

echo "Funding sender 0x64B04D4Dedf84E95558acF8eBEe18C441D6f5623 for test testOpcode_53 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x64B04D4Dedf84E95558acF8eBEe18C441D6f5623)
NONCE=$((NONCE+1))

echo "Funding sender 0xD8BfAC1AB72b7379c7822151B4A94a46DdE2D38C for test testOpcode_54 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xD8BfAC1AB72b7379c7822151B4A94a46DdE2D38C)
NONCE=$((NONCE+1))

echo "Funding sender 0x546B46632aBdF34E00B8ab4140aF43f9C9e34DeA for test testOpcode_55 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x546B46632aBdF34E00B8ab4140aF43f9C9e34DeA)
NONCE=$((NONCE+1))

echo "Funding sender 0x050b9dE30b29C6dA4f0ed1320189D0CCf13a773a for test testOpcode_56 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x050b9dE30b29C6dA4f0ed1320189D0CCf13a773a)
NONCE=$((NONCE+1))

echo "Funding sender 0x907A4472BF88A050B8782F77B24266dD74AF369D for test testOpcode_57 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x907A4472BF88A050B8782F77B24266dD74AF369D)
NONCE=$((NONCE+1))

echo "Funding sender 0xf77357d6c3baDd908cBecd79E892477B9e02d53d for test testOpcode_58 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xf77357d6c3baDd908cBecd79E892477B9e02d53d)
NONCE=$((NONCE+1))

echo "Funding sender 0x39f7d6A81a85d18B024a574748E4eA3789e99431 for test testOpcode_59 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x39f7d6A81a85d18B024a574748E4eA3789e99431)
NONCE=$((NONCE+1))

echo "Funding sender 0x74ffcddf087b1D31A4488505706251FBAc2590Be for test testOpcode_5a with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x74ffcddf087b1D31A4488505706251FBAc2590Be)
NONCE=$((NONCE+1))

echo "Funding sender 0xaD6a5039B666e5bcdd18c2B4F6182753Aa35926e for test testOpcode_5b with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xaD6a5039B666e5bcdd18c2B4F6182753Aa35926e)
NONCE=$((NONCE+1))

echo "Funding sender 0x2d214f5CB56dbc94Cb2007E4464BA0D739647288 for test testOpcode_5c with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x2d214f5CB56dbc94Cb2007E4464BA0D739647288)
NONCE=$((NONCE+1))

echo "Funding sender 0x4a5F2A796Cd01772268438a34c8A1ddc6630F23b for test testOpcode_5d with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x4a5F2A796Cd01772268438a34c8A1ddc6630F23b)
NONCE=$((NONCE+1))

echo "Funding sender 0xbd549Fd5681033DB2F26188F62C2Ee77C7627286 for test testOpcode_5e with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xbd549Fd5681033DB2F26188F62C2Ee77C7627286)
NONCE=$((NONCE+1))

echo "Funding sender 0xe2FD33229F2B1F61A07C9dA4A44a1cb59f7f53dD for test testOpcode_5f with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xe2FD33229F2B1F61A07C9dA4A44a1cb59f7f53dD)
NONCE=$((NONCE+1))

echo "Funding sender 0x9DE9C1627D7D1bF56f8850F0Bd79f0aD7B4f9a00 for test random with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x9DE9C1627D7D1bF56f8850F0Bd79f0aD7B4f9a00)
NONCE=$((NONCE+1))

echo "Funding sender 0xCF4f3a89f497022548CBE121DaDa268Cd56F0841 for test testOpcode_20 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xCF4f3a89f497022548CBE121DaDa268Cd56F0841)
NONCE=$((NONCE+1))

echo "Funding sender 0x09E358bfCF9d59a0D57f18D5De5400edb6312526 for test testOpcode_21 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x09E358bfCF9d59a0D57f18D5De5400edb6312526)
NONCE=$((NONCE+1))

echo "Funding sender 0x5C9bCD77d6f95bD7Eb985CD14d3391F80E263A0E for test testOpcode_22 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x5C9bCD77d6f95bD7Eb985CD14d3391F80E263A0E)
NONCE=$((NONCE+1))

echo "Funding sender 0xE32b7be272569847c55A491499f1CA0F1638Cc88 for test testOpcode_23 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xE32b7be272569847c55A491499f1CA0F1638Cc88)
NONCE=$((NONCE+1))

echo "Funding sender 0xbd88b51FF17282593606Ec7A7f2278eA9fc999eC for test testOpcode_24 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xbd88b51FF17282593606Ec7A7f2278eA9fc999eC)
NONCE=$((NONCE+1))

echo "Funding sender 0x7D05e8174c3e9415ED2B5FcA5755a49eec7530a4 for test testOpcode_25 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x7D05e8174c3e9415ED2B5FcA5755a49eec7530a4)
NONCE=$((NONCE+1))

echo "Funding sender 0x156F124a8d4dC0AcA7282251195830A750691ca2 for test testOpcode_26 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x156F124a8d4dC0AcA7282251195830A750691ca2)
NONCE=$((NONCE+1))

echo "Funding sender 0xa084AE5A6e3fCb8BF38fb9CaDD67577b2fA79AF0 for test testOpcode_27 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xa084AE5A6e3fCb8BF38fb9CaDD67577b2fA79AF0)
NONCE=$((NONCE+1))

echo "Funding sender 0x6B26A7647AF77F9C0f8E3C202eC43016b7f5d67B for test testOpcode_28 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x6B26A7647AF77F9C0f8E3C202eC43016b7f5d67B)
NONCE=$((NONCE+1))

echo "Funding sender 0xa4A45307941028f7e464Eb3627092350e84B9eE2 for test testOpcode_29 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xa4A45307941028f7e464Eb3627092350e84B9eE2)
NONCE=$((NONCE+1))

echo "Funding sender 0x269B4093F2b067Ea77F117dF29FAf1E9C29bB24A for test testOpcode_2a with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x269B4093F2b067Ea77F117dF29FAf1E9C29bB24A)
NONCE=$((NONCE+1))

echo "Funding sender 0xBb98D3C7F494efcdefc9cDaa21be8722214C31b4 for test testOpcode_2b with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xBb98D3C7F494efcdefc9cDaa21be8722214C31b4)
NONCE=$((NONCE+1))

echo "Funding sender 0x1C1dd77d80E341Bb1995FdC98561C1b180f29307 for test testOpcode_2c with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x1C1dd77d80E341Bb1995FdC98561C1b180f29307)
NONCE=$((NONCE+1))

echo "Funding sender 0x6c68467793F2c485E96456652e5c612f45dfb93A for test testOpcode_2d with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x6c68467793F2c485E96456652e5c612f45dfb93A)
NONCE=$((NONCE+1))

echo "Funding sender 0xF3817857F737e746680fA0EB92F42b5c4DCE01aD for test testOpcode_2e with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xF3817857F737e746680fA0EB92F42b5c4DCE01aD)
NONCE=$((NONCE+1))

echo "Funding sender 0x729BE0FAFE42EA2bC7B8c00B1c07B9Ba88B152c1 for test testOpcode_2f with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x729BE0FAFE42EA2bC7B8c00B1c07B9Ba88B152c1)
NONCE=$((NONCE+1))

echo "Funding sender 0x00071d584509C22cF9BaFc5B9A08BE2e78855439 for test testOpcode_c0 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x00071d584509C22cF9BaFc5B9A08BE2e78855439)
NONCE=$((NONCE+1))

echo "Funding sender 0x85dA99CaC3a34f928943D00D8eB6a4cf2dF3ECF9 for test testOpcode_c1 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x85dA99CaC3a34f928943D00D8eB6a4cf2dF3ECF9)
NONCE=$((NONCE+1))

echo "Funding sender 0x4d46e81Ca3A467a7f6c0591Ab70571969736141C for test testOpcode_c2 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x4d46e81Ca3A467a7f6c0591Ab70571969736141C)
NONCE=$((NONCE+1))

echo "Funding sender 0x46Dd89dA8428DaB21f2Bd11448e98ba697295a17 for test testOpcode_c3 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x46Dd89dA8428DaB21f2Bd11448e98ba697295a17)
NONCE=$((NONCE+1))

echo "Funding sender 0x8Ab63E66a79D59A87F02fF8F192b65B8645eff22 for test testOpcode_c4 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x8Ab63E66a79D59A87F02fF8F192b65B8645eff22)
NONCE=$((NONCE+1))

echo "Funding sender 0x661bF7f2CAb11aF399C793a65f42E74d52AfA562 for test testOpcode_c5 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x661bF7f2CAb11aF399C793a65f42E74d52AfA562)
NONCE=$((NONCE+1))

echo "Funding sender 0x092bdeFe1b11Be702eEB52a10f8952C55b8C2832 for test testOpcode_c6 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x092bdeFe1b11Be702eEB52a10f8952C55b8C2832)
NONCE=$((NONCE+1))

echo "Funding sender 0xf78be8146D6b9B57Ef8A53dE9CC8f28530566149 for test testOpcode_c7 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xf78be8146D6b9B57Ef8A53dE9CC8f28530566149)
NONCE=$((NONCE+1))

echo "Funding sender 0x2b89113EDad42961182B09767080915e58e12D1F for test testOpcode_c8 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x2b89113EDad42961182B09767080915e58e12D1F)
NONCE=$((NONCE+1))

echo "Funding sender 0xB60375b37012649d4b9F5A16023F243d40ACfa88 for test testOpcode_c9 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xB60375b37012649d4b9F5A16023F243d40ACfa88)
NONCE=$((NONCE+1))

echo "Funding sender 0xc512793164F4243fa7a69A3236828f5ba4adD6C7 for test testOpcode_ca with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xc512793164F4243fa7a69A3236828f5ba4adD6C7)
NONCE=$((NONCE+1))

echo "Funding sender 0x73AbA5034aB7c9dCb1D6Fd4B257f7093692656a6 for test testOpcode_cb with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x73AbA5034aB7c9dCb1D6Fd4B257f7093692656a6)
NONCE=$((NONCE+1))

echo "Funding sender 0x3cF41aa8a4044440003877BCB25918Dd58061958 for test testOpcode_cc with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x3cF41aa8a4044440003877BCB25918Dd58061958)
NONCE=$((NONCE+1))

echo "Funding sender 0x2c49621ff7C6561697CCaB2484126ec430aEeade for test testOpcode_cd with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x2c49621ff7C6561697CCaB2484126ec430aEeade)
NONCE=$((NONCE+1))

echo "Funding sender 0x32Ee9FD3C5D994789A39368b11a3AAdd206b054B for test testOpcode_ce with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x32Ee9FD3C5D994789A39368b11a3AAdd206b054B)
NONCE=$((NONCE+1))

echo "Funding sender 0xe1b54B82530D76DD5B315B8fc948F30A385fC740 for test testOpcode_cf with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xe1b54B82530D76DD5B315B8fc948F30A385fC740)
NONCE=$((NONCE+1))

echo "Funding sender 0x9954436ECDAB0eDa8A691C1Af5E45ea4e29c5198 for test refundReset with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x9954436ECDAB0eDa8A691C1Af5E45ea4e29c5198)
NONCE=$((NONCE+1))

echo "Funding sender 0x92cBA3a23Ab912FA16fdAa9b80f715ff0C2e9DcA for test extcodehashEmptySuicide with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x92cBA3a23Ab912FA16fdAa9b80f715ff0C2e9DcA)
NONCE=$((NONCE+1))

echo "Funding sender 0x86Bc1369828A44c52E5D45cb3971D5c906862846 for test testOpcode_70 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x86Bc1369828A44c52E5D45cb3971D5c906862846)
NONCE=$((NONCE+1))

echo "Funding sender 0xE698Bc85f2852c27D36a90c52BC0616c6ddCB0aA for test testOpcode_71 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xE698Bc85f2852c27D36a90c52BC0616c6ddCB0aA)
NONCE=$((NONCE+1))

echo "Funding sender 0x2C2033793cbEf9e689E96ed7B1401A2B81446DB3 for test testOpcode_72 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x2C2033793cbEf9e689E96ed7B1401A2B81446DB3)
NONCE=$((NONCE+1))

echo "Funding sender 0x5aA5b20DC700F9C1B898E8C3830C47296F0c2bC9 for test testOpcode_73 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x5aA5b20DC700F9C1B898E8C3830C47296F0c2bC9)
NONCE=$((NONCE+1))

echo "Funding sender 0xA44079B5Af34548cA3bd423202Dd2c61BF58e421 for test testOpcode_74 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xA44079B5Af34548cA3bd423202Dd2c61BF58e421)
NONCE=$((NONCE+1))

echo "Funding sender 0x8F8eFB77e70aD32ddbbcEEADE33bB1B5427B9054 for test testOpcode_75 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x8F8eFB77e70aD32ddbbcEEADE33bB1B5427B9054)
NONCE=$((NONCE+1))

echo "Funding sender 0x8F1e8A97e132084785991EF84A32a4B21f1D2DD9 for test testOpcode_76 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x8F1e8A97e132084785991EF84A32a4B21f1D2DD9)
NONCE=$((NONCE+1))

echo "Funding sender 0x7e22fAd5d2B638bb9b93A3D9D1584C2758Ae1994 for test testOpcode_77 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x7e22fAd5d2B638bb9b93A3D9D1584C2758Ae1994)
NONCE=$((NONCE+1))

echo "Funding sender 0x32Ad598847Ed1da7da661e2cFB28D95AD17d97Cd for test testOpcode_78 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x32Ad598847Ed1da7da661e2cFB28D95AD17d97Cd)
NONCE=$((NONCE+1))

echo "Funding sender 0x93066be3494F78bba990403560bcB8E0a3391784 for test testOpcode_79 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x93066be3494F78bba990403560bcB8E0a3391784)
NONCE=$((NONCE+1))

echo "Funding sender 0x7a5b03594B58Adb389B0eE640E2E85721a4023Fc for test testOpcode_7a with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x7a5b03594B58Adb389B0eE640E2E85721a4023Fc)
NONCE=$((NONCE+1))

echo "Funding sender 0x5E64CB867c8Cb3Fda6e8972a5E312B68F011A442 for test testOpcode_7b with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x5E64CB867c8Cb3Fda6e8972a5E312B68F011A442)
NONCE=$((NONCE+1))

echo "Funding sender 0x7FD94D5Aea98a957e9c1c9CEfAD9bd1c1F435a21 for test testOpcode_7c with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x7FD94D5Aea98a957e9c1c9CEfAD9bd1c1F435a21)
NONCE=$((NONCE+1))

echo "Funding sender 0x1cd0513c86c44720084EbdcE30BC9C1F5CA019e8 for test testOpcode_7d with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x1cd0513c86c44720084EbdcE30BC9C1F5CA019e8)
NONCE=$((NONCE+1))

echo "Funding sender 0x2731d0849558bFc63819995a9EF8968681B317da for test testOpcode_7e with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x2731d0849558bFc63819995a9EF8968681B317da)
NONCE=$((NONCE+1))

echo "Funding sender 0x0170D5fB6dbFd42D51EC7a2345C67D368F88Ec5A for test testOpcode_7f with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x0170D5fB6dbFd42D51EC7a2345C67D368F88Ec5A)
NONCE=$((NONCE+1))

echo "Funding sender 0x0a5cC3Ea97E81c2Aa1489deBDc2309E662BC3E74 for test logRevert with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x0a5cC3Ea97E81c2Aa1489deBDc2309E662BC3E74)
NONCE=$((NONCE+1))

echo "Funding sender 0x62558ec1563117165A79C72D1C7D0F43d7271233 for test testOpcode_80 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x62558ec1563117165A79C72D1C7D0F43d7271233)
NONCE=$((NONCE+1))

echo "Funding sender 0x9dD3D3c4cc0C3d5710a98d22BbBFFEAACF1b0fdb for test testOpcode_81 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x9dD3D3c4cc0C3d5710a98d22BbBFFEAACF1b0fdb)
NONCE=$((NONCE+1))

echo "Funding sender 0x2C6752CC73Dc84cE014Dd2C1f8f310e757E5Eef3 for test testOpcode_82 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x2C6752CC73Dc84cE014Dd2C1f8f310e757E5Eef3)
NONCE=$((NONCE+1))

echo "Funding sender 0x53265ea1D3F7086FBcB508C2b7C1Ad7e426C488d for test testOpcode_83 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x53265ea1D3F7086FBcB508C2b7C1Ad7e426C488d)
NONCE=$((NONCE+1))

echo "Funding sender 0x33b05c361Bd5Cbdb589C54092c7aa241205C4770 for test testOpcode_84 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x33b05c361Bd5Cbdb589C54092c7aa241205C4770)
NONCE=$((NONCE+1))

echo "Funding sender 0x26880CEC9b4b1B421bFF520517D8414B84C6449a for test testOpcode_85 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x26880CEC9b4b1B421bFF520517D8414B84C6449a)
NONCE=$((NONCE+1))

echo "Funding sender 0xA4ed7DbbF0BF6773A863D336eE7590Aff4E73793 for test testOpcode_86 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xA4ed7DbbF0BF6773A863D336eE7590Aff4E73793)
NONCE=$((NONCE+1))

echo "Funding sender 0xBb0EF77EDA572c1c690aE78B1E8EC107244a3fdD for test testOpcode_87 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xBb0EF77EDA572c1c690aE78B1E8EC107244a3fdD)
NONCE=$((NONCE+1))

echo "Funding sender 0xC82969469621A96faFa313308A97AcFDbcADbB17 for test testOpcode_88 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xC82969469621A96faFa313308A97AcFDbcADbB17)
NONCE=$((NONCE+1))

echo "Funding sender 0x88434d07C805BD1Fd554fb9E3107bB0b003BE15d for test testOpcode_89 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x88434d07C805BD1Fd554fb9E3107bB0b003BE15d)
NONCE=$((NONCE+1))

echo "Funding sender 0x0E3b596f7E57e256581fb217BF5228eE12b1eA4B for test testOpcode_8a with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x0E3b596f7E57e256581fb217BF5228eE12b1eA4B)
NONCE=$((NONCE+1))

echo "Funding sender 0x295FA04CD4442714aDE410Ef6B7D0a0B7990A0cB for test testOpcode_8b with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x295FA04CD4442714aDE410Ef6B7D0a0B7990A0cB)
NONCE=$((NONCE+1))

echo "Funding sender 0xd9F0D33C9bF07553a718033167Af22592381fAE1 for test testOpcode_8c with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xd9F0D33C9bF07553a718033167Af22592381fAE1)
NONCE=$((NONCE+1))

echo "Funding sender 0xADe06b2359a8EbCbAed59C5b3daf6DEBd06F80c7 for test testOpcode_8d with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xADe06b2359a8EbCbAed59C5b3daf6DEBd06F80c7)
NONCE=$((NONCE+1))

echo "Funding sender 0x428fbFf5354e75E94B431487FA4eCC830001143a for test testOpcode_8e with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x428fbFf5354e75E94B431487FA4eCC830001143a)
NONCE=$((NONCE+1))

echo "Funding sender 0x67fD59ACcA051c3F8CdAA4D431114f9917a2b6df for test testOpcode_8f with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x67fD59ACcA051c3F8CdAA4D431114f9917a2b6df)
NONCE=$((NONCE+1))

echo "Funding sender 0xeec52584770a962BC1b49569b1E056353D680095 for test testOpcode_a0 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xeec52584770a962BC1b49569b1E056353D680095)
NONCE=$((NONCE+1))

echo "Funding sender 0x5c5282c1C75d80c3d71324DFD809233AA516833B for test testOpcode_a1 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x5c5282c1C75d80c3d71324DFD809233AA516833B)
NONCE=$((NONCE+1))

echo "Funding sender 0x5486c99E567fee9DF4575114222c2618e844e375 for test testOpcode_a2 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x5486c99E567fee9DF4575114222c2618e844e375)
NONCE=$((NONCE+1))

echo "Funding sender 0xFeD2c2Cd40Ec092d28B958565da9da62fc85bC01 for test testOpcode_a3 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xFeD2c2Cd40Ec092d28B958565da9da62fc85bC01)
NONCE=$((NONCE+1))

echo "Funding sender 0x27064A06ac57EcF044187B0f071e271f61C4Ad28 for test testOpcode_a4 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x27064A06ac57EcF044187B0f071e271f61C4Ad28)
NONCE=$((NONCE+1))

echo "Funding sender 0x9FD32053374e31585206432eb9b2725011c5B3D4 for test testOpcode_a5 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x9FD32053374e31585206432eb9b2725011c5B3D4)
NONCE=$((NONCE+1))

echo "Funding sender 0x5CBe63411fDd30d60B63bE0B3969A66b53e4Afe7 for test testOpcode_a6 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x5CBe63411fDd30d60B63bE0B3969A66b53e4Afe7)
NONCE=$((NONCE+1))

echo "Funding sender 0x6D5d36353e526E448B8A505269b851e1e7121877 for test testOpcode_a7 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x6D5d36353e526E448B8A505269b851e1e7121877)
NONCE=$((NONCE+1))

echo "Funding sender 0xe4588e2C10e46344770e1c8e73b71AD66f72c707 for test testOpcode_a8 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xe4588e2C10e46344770e1c8e73b71AD66f72c707)
NONCE=$((NONCE+1))

echo "Funding sender 0x4e4DcCaD92799B50e6A3eCf220b241c749a8Ff55 for test testOpcode_a9 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x4e4DcCaD92799B50e6A3eCf220b241c749a8Ff55)
NONCE=$((NONCE+1))

echo "Funding sender 0x46e27D0CDE82d2BB485839eA01540247561c1229 for test testOpcode_aa with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x46e27D0CDE82d2BB485839eA01540247561c1229)
NONCE=$((NONCE+1))

echo "Funding sender 0xb2391cafB3e108de7534749651902Fcc340Ab52A for test testOpcode_ab with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xb2391cafB3e108de7534749651902Fcc340Ab52A)
NONCE=$((NONCE+1))

echo "Funding sender 0x561174C903Ad7F8d67118Cfb926F64EEBc94b96E for test testOpcode_ac with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x561174C903Ad7F8d67118Cfb926F64EEBc94b96E)
NONCE=$((NONCE+1))

echo "Funding sender 0xe35026aeF0AC7C0cBC5Dec2Db8297f1AF0Ee51Bd for test testOpcode_ad with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xe35026aeF0AC7C0cBC5Dec2Db8297f1AF0Ee51Bd)
NONCE=$((NONCE+1))

echo "Funding sender 0x1C5eAF2A8AE3BD321f74985c5F6DA745CFA999b8 for test testOpcode_ae with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x1C5eAF2A8AE3BD321f74985c5F6DA745CFA999b8)
NONCE=$((NONCE+1))

echo "Funding sender 0x36703aF827EB9F7426dD775a7bf2636227110F52 for test testOpcode_af with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x36703aF827EB9F7426dD775a7bf2636227110F52)
NONCE=$((NONCE+1))

echo "Funding sender 0xBB6b1118783f0Fb91934C1Ba51135294491b8304 for test testOpcode_d0 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xBB6b1118783f0Fb91934C1Ba51135294491b8304)
NONCE=$((NONCE+1))

echo "Funding sender 0x48302419230644db2c6AC9e8D28343FFB2a38943 for test testOpcode_d1 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x48302419230644db2c6AC9e8D28343FFB2a38943)
NONCE=$((NONCE+1))

echo "Funding sender 0xcB30583280D8F3b87de12fc04462cD0A7301F7E4 for test testOpcode_d2 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xcB30583280D8F3b87de12fc04462cD0A7301F7E4)
NONCE=$((NONCE+1))

echo "Funding sender 0xF09F9055a6B147B895D5A403edcf5F844BF8bB1A for test testOpcode_d3 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xF09F9055a6B147B895D5A403edcf5F844BF8bB1A)
NONCE=$((NONCE+1))

echo "Funding sender 0xe6eE24cb9d05dF1945f4cfBce0c8eFE4930e36A5 for test testOpcode_d4 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xe6eE24cb9d05dF1945f4cfBce0c8eFE4930e36A5)
NONCE=$((NONCE+1))

echo "Funding sender 0xb7cc40919Bf8Ea0904eA9F7E02de9c7d0a2088D8 for test testOpcode_d5 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xb7cc40919Bf8Ea0904eA9F7E02de9c7d0a2088D8)
NONCE=$((NONCE+1))

echo "Funding sender 0xDAD372Eb58975708925dd502B1431799B405A469 for test testOpcode_d6 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xDAD372Eb58975708925dd502B1431799B405A469)
NONCE=$((NONCE+1))

echo "Funding sender 0x3194Bc14cFABb7072a1846373AaDB81dEf226ae2 for test testOpcode_d7 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x3194Bc14cFABb7072a1846373AaDB81dEf226ae2)
NONCE=$((NONCE+1))

echo "Funding sender 0x2D697AfD296ca62b174C40e56CdD89555aF96302 for test testOpcode_d8 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x2D697AfD296ca62b174C40e56CdD89555aF96302)
NONCE=$((NONCE+1))

echo "Funding sender 0xdDD58477794f2291766F4EB02d83d8ab454897A0 for test testOpcode_d9 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xdDD58477794f2291766F4EB02d83d8ab454897A0)
NONCE=$((NONCE+1))

echo "Funding sender 0xC2AdBF829892332ED121B6c84A30Dfb4C597616B for test testOpcode_da with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xC2AdBF829892332ED121B6c84A30Dfb4C597616B)
NONCE=$((NONCE+1))

echo "Funding sender 0xc7A4610eD17F29E45e614b98159e3E9c9268FbF5 for test testOpcode_db with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xc7A4610eD17F29E45e614b98159e3E9c9268FbF5)
NONCE=$((NONCE+1))

echo "Funding sender 0x7BAF646b43e857099074455f69396E841d2d6888 for test testOpcode_dc with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x7BAF646b43e857099074455f69396E841d2d6888)
NONCE=$((NONCE+1))

echo "Funding sender 0x08Fb71CCAb042331013602C27EBCA074Ee03Ae96 for test testOpcode_dd with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x08Fb71CCAb042331013602C27EBCA074Ee03Ae96)
NONCE=$((NONCE+1))

echo "Funding sender 0x04d42C760369A9c2Fe63771b8612205080BF8252 for test testOpcode_de with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x04d42C760369A9c2Fe63771b8612205080BF8252)
NONCE=$((NONCE+1))

echo "Funding sender 0x12C27D8eDa029F2835FEf6f38529B9F06D964E02 for test testOpcode_df with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x12C27D8eDa029F2835FEf6f38529B9F06D964E02)
NONCE=$((NONCE+1))

echo "Funding sender 0xA9B4A90fd905b2691aa1175F74d39A01B0189784 for test blockWithAllTransactionTypes with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xA9B4A90fd905b2691aa1175F74d39A01B0189784)
NONCE=$((NONCE+1))

echo "Funding sender 0x4295fBF2ab1B96f3e88eA1B2CcC522AD18F6C44A for test tipInsideBlock with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x4295fBF2ab1B96f3e88eA1B2CcC522AD18F6C44A)
NONCE=$((NONCE+1))

echo "Funding sender 0x803fc2a1Cb0401A6e5A92483Dc9459c8937Eb112 for test tloadDoesNotPersistCrossTxn with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x803fc2a1Cb0401A6e5A92483Dc9459c8937Eb112)
NONCE=$((NONCE+1))

echo "Funding sender 0xed0E80b60afA8966638928c780212c207266B3d6 for test tloadDoesNotPersistAcrossBlocks with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xed0E80b60afA8966638928c780212c207266B3d6)
NONCE=$((NONCE+1))

echo "Funding sender 0x84e6C2e3b2B95E5DC588b0B97503CD95d4cD5Bf2 for test transStorageBlockchain with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x84e6C2e3b2B95E5DC588b0B97503CD95d4cD5Bf2)
NONCE=$((NONCE+1))

echo "Funding sender 0xA96d29D8f6324fC140A19FC4Ef7C90b8a14dea3b for test initialVal with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xA96d29D8f6324fC140A19FC4Ef7C90b8a14dea3b)
NONCE=$((NONCE+1))

echo "Funding sender 0xC67463A0945B68a3De83cE8caC6dBB65815B80A2 for test difficultyFormula with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xC67463A0945B68a3De83cE8caC6dBB65815B80A2)
NONCE=$((NONCE+1))

echo "Allowing 5s to process txs"
sleep 5
echo "Confirming last txhash: $TXHASH..."
STATUS=$(cast receipt -j --rpc-url $RPC_URL $TXHASH | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "Running tests..."
RPC_URL=$RPC_URL $TEST_FOLDER/retest/uncleBloomNot0.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/futureUncleTimestampDifficultyDrop.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/futureUncleTimestampDifficultyDrop4.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/uncleBloomNot0_3.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/futureUncleTimestamp3.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/futureUncleTimestampDifficultyDrop3.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/futureUncleTimestampDifficultyDrop2.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/futureUncleTimestamp2.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/uncleBloomNot0_2.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/UncleFromSideChain.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/correct.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/gasLimitTooHighExactBound.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/gasLimitLTGasUsageUncle.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/incorrectUncleTimestamp.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/wrongParentHash.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/diffTooLow2.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/timestampTooLow.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/gasLimitTooLowExactBound2.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/incorrectUncleTimestamp5.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/gasLimitTooLowExactBoundLondon.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/incorrectUncleNumber500.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/wrongStateRoot.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/incorrectUncleTimestamp3.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/timestampTooHigh.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/incorrectUncleNumber1.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/gasLimitTooLowExactBound.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/diffTooLow.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/unknownUncleParentHash.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/incorrectUncleTimestamp2.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/gasLimitTooHigh.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/diffTooHigh.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/gasLimitTooLow.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/incorrectUncleTimestamp4.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/incorrectUncleNumber0.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/pastUncleTimestamp.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/result_legacyEnvConvertion.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/result_CancunEnvConvertion.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/wrongRLPGenesis_Istanbul.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/filling_unexpectedException.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/unexpectedAccount_Istanbul.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/result_MergeEnvConvertion.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/filling_wrongStorage.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/filling_wrongStorage2.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/lastblockhashException_Istanbul.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/filling_wrongAccount.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/filling_missingExpectedAccount.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/result_ShanghaiEnvConvertion.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/filling_wrongStorage_Istanbul.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/wrongAccount_Istanbul.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/result_eip1559EnvConvertion.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/ZeroValue_TransactionCALL_ToEmpty_OOGRevert_Paris.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/EmptyTransaction.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/TransactionNonceCheck.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/createRevert.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/ZeroValue_TransactionCALLwithData_ToOneStorageKey_OOGRevert_Istanbul_Paris.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/TransactionNonceCheck2.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/createNameRegistratorPerTxsNotEnoughGasBefore.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/RefundOverflow2.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/txCost-sec73.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/ZeroValue_TransactionCALL_OOGRevert.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/CreateTransactionReverted.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/createNameRegistratorPerTxsNotEnoughGasAfter.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/TransactionFromCoinbaseNotEnoughFounds.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/RefundOverflow.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/callcodeOutput2.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/createNameRegistratorPerTxsNotEnoughGasAt.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/ZeroValue_TransactionCALLwithData_ToEmpty_OOGRevert_Istanbul_Paris.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/dataTx.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/ZeroValue_TransactionCALL_ToOneStorageKey_OOGRevert_Paris.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/NotEnoughCashContractCreation.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/ZeroValue_TransactionCALL_ToNonZeroBalance_OOGRevert.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/UserTransactionGasLimitIsTooLowWhenZeroCost.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/staticcall.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/shanghaiWithoutWithdrawalsRLP.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/incorrectWithdrawalsRoot.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/accountInteractions.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/amountIs0TouchAccountAndTransaction.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/oneUncleGeneration2.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/EqualUncleInTwoDifferentBlocks2.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/uncleHeaderWithGeneration0.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/twoEqualUncle.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/uncleWithSameBlockNumber.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/oneUncleGeneration4.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/InChainUncle.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/InChainUncleGreatGrandPa.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/InChainUncleGreatGreatGreatGreatGrandPa.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/oneUncleGeneration5.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/threeUncle.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/uncleHeaderAtBlock2.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/oneUncle.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/UncleIsBrother.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/oneUncleGeneration7.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/InChainUncleGrandPa.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/oneUncleGeneration3.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/oneUncleGeneration6.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/InChainUncleFather.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/twoUncle.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/InChainUncleGreatGreatGrandPa.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/InChainUncleGreatGreatGreatGrandPa.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/wrongTransactionsTrie.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/log1_wrongBlockNumber.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/timeDiff0.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/wrongGasUsed.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/wrongDifficulty.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/wrongNumber.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/wrongUncleHash.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/log1_wrongBloom.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/wrongGasLimit.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/wrongReceiptTrie.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/DifferentExtraData1025.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/DifficultyIsZero.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/wrongParentHash2.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/ExtraData33.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/wrongCoinbase.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/GasLimitHigherThan2p63m1.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/ExtraData1024.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/GasLimitIsZero.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/wrongTimestamp.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/GasUsedHigherThanBlockGasLimitButNotWithRefundsSuicideLast.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/GasUsedHigherThanBlockGasLimitButNotWithRefundsSuicideFirst.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/besuBaseFeeBug.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/wallet2outOf3txsRevoke.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/walletReorganizeOwners.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/wallet2outOf3txsRevokeAndConfirmAgain.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/wallet2outOf3txs.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/wallet2outOf3txs2.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest235BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest423BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest182BC.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest373BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest598BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest614BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest256BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest591BC.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest314BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest21BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest392BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest551BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest319BC.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest79BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest468BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest330BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest557BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest561BC.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest568BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest317BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest570BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest431BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest277BC.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest32BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest34BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest70BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest394BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest234BC.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest631BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest374BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest590BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest50BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest403BC.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest93BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest400BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest165BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest132BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest634BC.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest453BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest522BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest113BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest427BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest258BC.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest239BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest344BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest593BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest595BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest76BC.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest331BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest240BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest486BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest515BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest213BC.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest463BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest56BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest193BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest613BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest140BC.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest255BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest540BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest573BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest203BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest289BC.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest432BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest181BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest152BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest128BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest492BC.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest127BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest91BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest390BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest434BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest65BC.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest44BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest61BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest606BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest284BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest35BC.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest141BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest272BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest68BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest538BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest224BC.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/201503110226PYTHON_DUP6BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest622BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest109BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest530BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest218BC.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest253BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest8BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest479BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest7BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest623BC.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest168BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest40BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest459BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest262BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest529BC.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest99BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest186BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest490BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest86BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest617BC.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest101BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest71BC.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/ExtraData32.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/timeDiff12.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/log1_correct.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/dataTx2.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/SimpleTx3LowS.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/timeDiff14.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/diff1024.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/gasLimitTooHigh2.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/RecallSuicidedContractInOneBlock.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/timeDiff13.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/RecallSuicidedContract.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/callRevert.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/SimpleTx.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/AmIOnEIP150.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/create2collisionwithSelfdestructSameBlock.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/suicideStorageCheckVCreate.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/suicideStorageCheck.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/SuicidesMixingCoinbase2.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/ZeroValue_TransactionCALLwithData_ToOneStorageKey_OOGRevert_Paris.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/SuicidesMixingCoinbase.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest160.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/suicideStorageCheckVCreate2.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest594.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest46.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/callcodeOutput3partial.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest170.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/OOGStateCopyContainingDeletedContract.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest441.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest94.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest123.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/blockhashTests.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest324.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/multimpleBalanceInstruction.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/simpleSuicide.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest38.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest375.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/suicideCoinbaseState.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest328.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/ZeroValue_TransactionCALLwithData_ToNonZeroBalance_OOGRevert.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest136.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest377.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/extCodeHashOfDeletedAccountDynamic.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/OverflowGasRequire.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest229.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/ZeroValue_TransactionCALLwithData_OOGRevert.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest549.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/BLOCKHASH_Bounds.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/BadStateRootTxBC.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest223.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/TransactionFromCoinbaseHittingBlockGasLimit1.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/suicideCoinbase.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest241.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/suicideThenCheckBalance.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/blockhashNonConstArg.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/extCodeHashOfDeletedAccount.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/ZeroValue_TransactionCALLwithData_ToEmpty_OOGRevert_Paris.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/randomStatetest619.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/optionsTest.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/mergeExample.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/basefeeExample.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/shanghaiExample.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/ShanghaiLove.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/DelegateCallSpam.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/StrangeContractCreation.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/SuicideIssue.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/BlockGasLimit2p63m1.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/TransactionGasHigherThanLimit2p63m1.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/TransactionGasHigherThanLimit2p63m1_2.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/SuicideTransaction.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/highGasUsage.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/DaoTransactions_UncleExtradata.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/DaoTransactions.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/DaoTransactions_EmptyTransactionAndForkBlocksAhead.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/DaoTransactions_XBlockm1.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/BerlinToLondonTransition.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/EIP150Transition.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/blockChainFrontierWithLargerTDvsHomesteadBlockchain2.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/HomesteadOverrideFrontier.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/UncleFromFrontierInHomestead.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/blockChainFrontierWithLargerTDvsHomesteadBlockchain.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/CallContractThatCreateContractBeforeAndAfterSwitchover.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/ContractCreationFailsOnHomestead.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/UnclePopulation.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/ConstantinopleFixTransition.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/powToPosTest.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/powToPosBlockRejection.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/ByzantiumTransition.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/cancunExample.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/transFail.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/badUncles.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/valCausesOOF.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/baseFee.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/intrinsicOrFail.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/checkGasLimit.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/feeCap.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/transactionFromSelfDestructedContract.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/warmup.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/timestampPerBlock.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/medDemand.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/highDemand.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/tips.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/burnVerify.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/intrinsic.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/lowDemand.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/intrinsicTip.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/transType.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/reentrencySuicide.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/emptyPostTransfer.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/eip2930.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_00.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_01.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_02.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_03.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_04.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_05.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_06.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_07.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_08.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_09.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_0a.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_0b.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_0c.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_0d.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_0e.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_0f.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_30.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_31.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_32.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_33.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_34.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_35.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_36.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_37.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_38.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_39.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_3a.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_3b.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_3c.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_3d.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_3e.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_3f.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_b0.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_b1.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_b2.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_b3.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_b4.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_b5.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_b6.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_b7.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_b8.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_b9.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_ba.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_bb.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_bc.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_bd.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_be.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_bf.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_60.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_61.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_62.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_63.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_64.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_65.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_66.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_67.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_68.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_69.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_6a.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_6b.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_6c.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_6d.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_6e.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_6f.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_90.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_91.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_92.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_93.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_94.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_95.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_96.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_97.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_98.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_99.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_9a.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_9b.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_9c.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_9d.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_9e.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_9f.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_40.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_41.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_42.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_43.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_44.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_45.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_46.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_47.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_48.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_49.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_4a.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_4b.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_4c.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_4d.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_4e.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_4f.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_10.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_11.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_12.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_13.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_14.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_15.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_16.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_17.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_18.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_19.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_1a.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_1b.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_1c.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_1d.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_1e.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_1f.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_f0.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_f1.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_f2.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_f3.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_f4.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_f5.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_f6.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_f7.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_f8.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_f9.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_fa.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_fb.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_fc.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_fd.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_fe.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_ff.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/selfdestructBalance.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_50.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_51.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_52.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_53.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_54.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_55.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_56.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_57.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_58.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_59.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_5a.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_5b.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_5c.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_5d.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_5e.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_5f.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/random.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_20.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_21.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_22.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_23.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_24.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_25.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_26.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_27.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_28.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_29.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_2a.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_2b.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_2c.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_2d.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_2e.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_2f.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_c0.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_c1.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_c2.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_c3.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_c4.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_c5.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_c6.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_c7.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_c8.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_c9.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_ca.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_cb.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_cc.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_cd.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_ce.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_cf.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/refundReset.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/extcodehashEmptySuicide.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_70.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_71.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_72.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_73.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_74.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_75.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_76.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_77.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_78.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_79.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_7a.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_7b.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_7c.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_7d.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_7e.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_7f.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/logRevert.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_80.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_81.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_82.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_83.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_84.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_85.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_86.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_87.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_88.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_89.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_8a.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_8b.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_8c.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_8d.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_8e.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_8f.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_a0.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_a1.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_a2.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_a3.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_a4.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_a5.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_a6.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_a7.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_a8.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_a9.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_aa.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_ab.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_ac.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_ad.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_ae.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_af.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_d0.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_d1.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_d2.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_d3.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_d4.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_d5.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_d6.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_d7.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_d8.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_d9.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_da.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_db.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_dc.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_dd.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_de.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/testOpcode_df.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/blockWithAllTransactionTypes.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/tipInsideBlock.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/tloadDoesNotPersistCrossTxn.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/tloadDoesNotPersistAcrossBlocks.sh &
sleep 10
RPC_URL=$RPC_URL $TEST_FOLDER/retest/transStorageBlockchain.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/initialVal.sh &
RPC_URL=$RPC_URL $TEST_FOLDER/retest/difficultyFormula.sh &
