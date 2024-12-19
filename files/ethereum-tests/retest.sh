TEST_FOLDER=${TEST_FOLDER:-.}
RPC_URL=${L2_RPC_URL:-http://localhost:8545}
# PRV_KEY for master sender with addr: 0x3f17f1962B36e491b30A40b2405849e597Ba5FB5
PRV_KEY=${L2_PRV_KEY:-0x0000000000000000000000000000000000000000000000000000000000000000}
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

MASTER_ADDR=$(cast wallet address $PRV_KEY)
NONCE=$(cast nonce --rpc-url $RPC_URL $MASTER_ADDR)
NONCE=$((NONCE))
echo "MASTER_ADDR: $MASTER_ADDR, NONCE: $NONCE, PRV_KEY: $PRV_KEY, gas price: $GAS_PRICE, test folder: $TEST_FOLDER"


TEST_MASTER_SENDER_AMOUNT=5ether

echo "Funding sender 0xe801Ad3BFbE062C505EAAE4A9d660BF596fFAAaD for test uncleBloomNot0 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xe801Ad3BFbE062C505EAAE4A9d660BF596fFAAaD)
NONCE=$((NONCE+1))

echo "Funding sender 0xB2764fBE3766D5E456a15a4AdA64866d1013858C for test futureUncleTimestampDifficultyDrop with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xB2764fBE3766D5E456a15a4AdA64866d1013858C)
NONCE=$((NONCE+1))

echo "Funding sender 0xC8808dC2EA35AC1586DE84740186Ca8261A797A3 for test futureUncleTimestampDifficultyDrop4 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xC8808dC2EA35AC1586DE84740186Ca8261A797A3)
NONCE=$((NONCE+1))

echo "Funding sender 0xEBdDE68866A066b63F7DBF24Fb2Fc7d5A8eE38c9 for test uncleBloomNot0_3 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xEBdDE68866A066b63F7DBF24Fb2Fc7d5A8eE38c9)
NONCE=$((NONCE+1))

echo "Funding sender 0xef439A0be716093cc40873bF2b4340EF11bcE41D for test futureUncleTimestamp3 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xef439A0be716093cc40873bF2b4340EF11bcE41D)
NONCE=$((NONCE+1))

echo "Funding sender 0x1Eb21FFAE5974ced2Ff3b0AB60032F06c81b8941 for test futureUncleTimestampDifficultyDrop3 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x1Eb21FFAE5974ced2Ff3b0AB60032F06c81b8941)
NONCE=$((NONCE+1))

echo "Funding sender 0x62bd88c18bC43Bb0833288220920f18903A940AF for test futureUncleTimestampDifficultyDrop2 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x62bd88c18bC43Bb0833288220920f18903A940AF)
NONCE=$((NONCE+1))

echo "Funding sender 0x05CE82CDfCebBc81FC91B97E06747F0792eB84bc for test futureUncleTimestamp2 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x05CE82CDfCebBc81FC91B97E06747F0792eB84bc)
NONCE=$((NONCE+1))

echo "Funding sender 0x479d74b56920C2D4358e59466aEB05D09E825d21 for test uncleBloomNot0_2 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x479d74b56920C2D4358e59466aEB05D09E825d21)
NONCE=$((NONCE+1))

echo "Funding sender 0x9BEf9D01528EBdF4Da104fB79D89be6eE9d4bAed for test UncleFromSideChain with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x9BEf9D01528EBdF4Da104fB79D89be6eE9d4bAed)
NONCE=$((NONCE+1))

echo "Funding sender 0xAD77637A5816A73c72804dfc29d01A459e8bf203 for test correct with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xAD77637A5816A73c72804dfc29d01A459e8bf203)
NONCE=$((NONCE+1))

echo "Funding sender 0x8966af23feBBf08808F423399ced443cf9C4d722 for test gasLimitTooHighExactBound with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x8966af23feBBf08808F423399ced443cf9C4d722)
NONCE=$((NONCE+1))

echo "Funding sender 0x93B0435Dd75fc307551a7AE857f5BF8f82A2A4A9 for test gasLimitLTGasUsageUncle with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x93B0435Dd75fc307551a7AE857f5BF8f82A2A4A9)
NONCE=$((NONCE+1))

echo "Funding sender 0xB341154cc6cF07F757a213EF869E393d14d39178 for test incorrectUncleTimestamp with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xB341154cc6cF07F757a213EF869E393d14d39178)
NONCE=$((NONCE+1))

echo "Funding sender 0x7b865F0Ceb6De91dA489943fb8a257f795fcE3E5 for test wrongParentHash with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x7b865F0Ceb6De91dA489943fb8a257f795fcE3E5)
NONCE=$((NONCE+1))

echo "Funding sender 0xCc96438F51D07b69e516c1f34611e8a97e11724d for test diffTooLow2 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xCc96438F51D07b69e516c1f34611e8a97e11724d)
NONCE=$((NONCE+1))

echo "Funding sender 0x374587420d64B7899DA7d167eEf6A90C3d690300 for test timestampTooLow with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x374587420d64B7899DA7d167eEf6A90C3d690300)
NONCE=$((NONCE+1))

echo "Funding sender 0xeEFF0F903FA70CC85Bc07E8D915b2D83cE6EbBe5 for test gasLimitTooLowExactBound2 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xeEFF0F903FA70CC85Bc07E8D915b2D83cE6EbBe5)
NONCE=$((NONCE+1))

echo "Funding sender 0xc1c9A9a7134cb1e4c250435531C92ba1C86F3E47 for test incorrectUncleTimestamp5 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xc1c9A9a7134cb1e4c250435531C92ba1C86F3E47)
NONCE=$((NONCE+1))

echo "Funding sender 0x0da033E5C5d1ca6228c84172Dfbf52Da2E5F6A8b for test gasLimitTooLowExactBoundLondon with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x0da033E5C5d1ca6228c84172Dfbf52Da2E5F6A8b)
NONCE=$((NONCE+1))

echo "Funding sender 0x17046290A40D9F4563067D559fEED8Ad5F4744d7 for test incorrectUncleNumber500 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x17046290A40D9F4563067D559fEED8Ad5F4744d7)
NONCE=$((NONCE+1))

echo "Funding sender 0x52cfEd20E5b7FF3ca0f9EFd6779048b28F1473C4 for test wrongStateRoot with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x52cfEd20E5b7FF3ca0f9EFd6779048b28F1473C4)
NONCE=$((NONCE+1))

echo "Funding sender 0xF7b30CFC4cb090153Bb52737570BBBe38B564Bf3 for test incorrectUncleTimestamp3 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xF7b30CFC4cb090153Bb52737570BBBe38B564Bf3)
NONCE=$((NONCE+1))

echo "Funding sender 0x2f8c2722baA0B0Fea0BcFA924485DF9dc960883a for test timestampTooHigh with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x2f8c2722baA0B0Fea0BcFA924485DF9dc960883a)
NONCE=$((NONCE+1))

echo "Funding sender 0x56C92B8522564DBA89a2477d9c334615b69C74Ea for test incorrectUncleNumber1 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x56C92B8522564DBA89a2477d9c334615b69C74Ea)
NONCE=$((NONCE+1))

echo "Funding sender 0x000C8509aa13463c96049d359ea8e2BA53B8F868 for test gasLimitTooLowExactBound with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x000C8509aa13463c96049d359ea8e2BA53B8F868)
NONCE=$((NONCE+1))

echo "Funding sender 0x492B5D8f719c287eE2572F3ced6811BA83A5bC3f for test diffTooLow with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x492B5D8f719c287eE2572F3ced6811BA83A5bC3f)
NONCE=$((NONCE+1))

echo "Funding sender 0x3D576067eFc413246242db23F597C4303544b6AD for test unknownUncleParentHash with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x3D576067eFc413246242db23F597C4303544b6AD)
NONCE=$((NONCE+1))

echo "Funding sender 0xdB14f38B9b39bF9f68b6238B0D682a02A3a1FF05 for test incorrectUncleTimestamp2 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xdB14f38B9b39bF9f68b6238B0D682a02A3a1FF05)
NONCE=$((NONCE+1))

echo "Funding sender 0xCdF9dC0e5E4a300a35183C52f9decE87046B33E4 for test gasLimitTooHigh with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xCdF9dC0e5E4a300a35183C52f9decE87046B33E4)
NONCE=$((NONCE+1))

echo "Funding sender 0x2f648085FDd7f4ab612C95487f6Cb6031C582214 for test diffTooHigh with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x2f648085FDd7f4ab612C95487f6Cb6031C582214)
NONCE=$((NONCE+1))

echo "Funding sender 0x40A4B3F811fd573813Ed7Ccff9CdEDF76B89F3BB for test gasLimitTooLow with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x40A4B3F811fd573813Ed7Ccff9CdEDF76B89F3BB)
NONCE=$((NONCE+1))

echo "Funding sender 0x25797059dfd0c6627E0150CF65a19360481A42ab for test incorrectUncleTimestamp4 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x25797059dfd0c6627E0150CF65a19360481A42ab)
NONCE=$((NONCE+1))

echo "Funding sender 0xa35cBcB72b28959BBaa4DE058a77b56c0B43beb4 for test incorrectUncleNumber0 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xa35cBcB72b28959BBaa4DE058a77b56c0B43beb4)
NONCE=$((NONCE+1))

echo "Funding sender 0xd68871720c7355475cD784D51Da4BCaE7A70102F for test pastUncleTimestamp with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xd68871720c7355475cD784D51Da4BCaE7A70102F)
NONCE=$((NONCE+1))

echo "Funding sender 0x706fC35b3437564dA8920070C99b4849E1D8062A for test result_legacyEnvConvertion with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x706fC35b3437564dA8920070C99b4849E1D8062A)
NONCE=$((NONCE+1))

echo "Funding sender 0x2CCBAB41C3cb8F04AE0c58F3d5B62b57a1e857e3 for test result_CancunEnvConvertion with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x2CCBAB41C3cb8F04AE0c58F3d5B62b57a1e857e3)
NONCE=$((NONCE+1))

echo "Funding sender 0xe8DB5D7BB5876d8488C46EcD8Ddd3Fbce42302b5 for test wrongRLPGenesis_Istanbul with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xe8DB5D7BB5876d8488C46EcD8Ddd3Fbce42302b5)
NONCE=$((NONCE+1))

echo "Funding sender 0x9e979D43AFa31727EdF57092eE1ee0C8ee572B34 for test filling_unexpectedException with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x9e979D43AFa31727EdF57092eE1ee0C8ee572B34)
NONCE=$((NONCE+1))

echo "Funding sender 0xe4e232B213B30476E011aBe461A2AB6c27a74B05 for test unexpectedAccount_Istanbul with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xe4e232B213B30476E011aBe461A2AB6c27a74B05)
NONCE=$((NONCE+1))

echo "Funding sender 0x2C844bE8c7C03Ae1C8CB07b3434a580D866EAC23 for test result_MergeEnvConvertion with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x2C844bE8c7C03Ae1C8CB07b3434a580D866EAC23)
NONCE=$((NONCE+1))

echo "Funding sender 0x410123a5221038D9BF1c0800A26018B81279B44A for test filling_wrongStorage with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x410123a5221038D9BF1c0800A26018B81279B44A)
NONCE=$((NONCE+1))

echo "Funding sender 0x1F56C40fC387396509F5b27E7C515BD940fa8cf0 for test filling_wrongStorage2 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x1F56C40fC387396509F5b27E7C515BD940fa8cf0)
NONCE=$((NONCE+1))

echo "Funding sender 0x0e85bb4964b55ac9E3D02D77DCcD54fB835C127a for test lastblockhashException_Istanbul with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x0e85bb4964b55ac9E3D02D77DCcD54fB835C127a)
NONCE=$((NONCE+1))

echo "Funding sender 0x76f5f55C1eb8B4063E124Bd0A84eCb95464DD2db for test filling_wrongAccount with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x76f5f55C1eb8B4063E124Bd0A84eCb95464DD2db)
NONCE=$((NONCE+1))

echo "Funding sender 0xD98E343ecf37Af11376424b01D7385Be08fB9C56 for test filling_missingExpectedAccount with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xD98E343ecf37Af11376424b01D7385Be08fB9C56)
NONCE=$((NONCE+1))

echo "Funding sender 0x1A05f63eF96Ce99Aa39D17cF65e02bb8Be4947d8 for test result_ShanghaiEnvConvertion with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x1A05f63eF96Ce99Aa39D17cF65e02bb8Be4947d8)
NONCE=$((NONCE+1))

echo "Funding sender 0x708C35fa5595776Af67beB4C8B47C270dE5fACA4 for test filling_wrongStorage_Istanbul with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x708C35fa5595776Af67beB4C8B47C270dE5fACA4)
NONCE=$((NONCE+1))

echo "Funding sender 0x496c936DBe1c263FaD8Ae1F3DD4680AAE57B4BB1 for test wrongAccount_Istanbul with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x496c936DBe1c263FaD8Ae1F3DD4680AAE57B4BB1)
NONCE=$((NONCE+1))

echo "Funding sender 0xc5c9C4D1cA383d030e96691481b686e86422e31a for test result_eip1559EnvConvertion with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xc5c9C4D1cA383d030e96691481b686e86422e31a)
NONCE=$((NONCE+1))

echo "Funding sender 0x95AF9a669f542ab6dFD000d5AC62c90555F0CD0b for test ZeroValue_TransactionCALL_ToEmpty_OOGRevert_Paris with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x95AF9a669f542ab6dFD000d5AC62c90555F0CD0b)
NONCE=$((NONCE+1))

echo "Funding sender 0xB101B56586987C7A8CAB9882eCA66a89afEDE407 for test EmptyTransaction with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xB101B56586987C7A8CAB9882eCA66a89afEDE407)
NONCE=$((NONCE+1))

echo "Funding sender 0x45f871C259d7A56a4b212F026A8c992D2f553aB4 for test TransactionNonceCheck with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x45f871C259d7A56a4b212F026A8c992D2f553aB4)
NONCE=$((NONCE+1))

echo "Funding sender 0x897E11e9d9AfCa5360446E4ea06bC7DCD1E8D7d1 for test createRevert with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x897E11e9d9AfCa5360446E4ea06bC7DCD1E8D7d1)
NONCE=$((NONCE+1))

echo "Funding sender 0xA7D8B632ff32Dfa97339BBaB0A816B9D8876ae09 for test ZeroValue_TransactionCALLwithData_ToOneStorageKey_OOGRevert_Istanbul_Paris with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xA7D8B632ff32Dfa97339BBaB0A816B9D8876ae09)
NONCE=$((NONCE+1))

echo "Funding sender 0xFA6B194F30836D378dA046b04BDFd726f87b0e87 for test TransactionNonceCheck2 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xFA6B194F30836D378dA046b04BDFd726f87b0e87)
NONCE=$((NONCE+1))

echo "Funding sender 0xFa54e6ffde4c3101844960E1733C53B35C5b846F for test createNameRegistratorPerTxsNotEnoughGasBefore with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xFa54e6ffde4c3101844960E1733C53B35C5b846F)
NONCE=$((NONCE+1))

echo "Funding sender 0xee7b8BEE7E1347f03F2Ff1C4D2D479FCA292A615 for test RefundOverflow2 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xee7b8BEE7E1347f03F2Ff1C4D2D479FCA292A615)
NONCE=$((NONCE+1))

echo "Funding sender 0x6E997Bde1c5137aDDfF1C7313F0ED37EaD2a7d9e for test txCost-sec73 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x6E997Bde1c5137aDDfF1C7313F0ED37EaD2a7d9e)
NONCE=$((NONCE+1))

echo "Funding sender 0x1B293617E835A58ce415f0AaDC5E7f0856Fb82F7 for test ZeroValue_TransactionCALL_OOGRevert with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x1B293617E835A58ce415f0AaDC5E7f0856Fb82F7)
NONCE=$((NONCE+1))

echo "Funding sender 0xB724Bb8CBF7AA575Dd7D02a804Ac46dE3FcF1D76 for test CreateTransactionReverted with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xB724Bb8CBF7AA575Dd7D02a804Ac46dE3FcF1D76)
NONCE=$((NONCE+1))

echo "Funding sender 0x4e6fA6b6D1a1e008332A4fdDe62563B75C24A814 for test createNameRegistratorPerTxsNotEnoughGasAfter with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x4e6fA6b6D1a1e008332A4fdDe62563B75C24A814)
NONCE=$((NONCE+1))

echo "Funding sender 0xda65474c55E70ae7D989dA457488E8c6aeb49acF for test TransactionFromCoinbaseNotEnoughFounds with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xda65474c55E70ae7D989dA457488E8c6aeb49acF)
NONCE=$((NONCE+1))

echo "Funding sender 0x2fe743431B8B916C9ee983e414331d37655AC1e3 for test RefundOverflow with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x2fe743431B8B916C9ee983e414331d37655AC1e3)
NONCE=$((NONCE+1))

echo "Funding sender 0x245711A82665267C2a1848b3D4d278231492A339 for test callcodeOutput2 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x245711A82665267C2a1848b3D4d278231492A339)
NONCE=$((NONCE+1))

echo "Funding sender 0x5E0CD51557e74344D2b9aD61EEadE3b6DeFF623B for test createNameRegistratorPerTxsNotEnoughGasAt with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x5E0CD51557e74344D2b9aD61EEadE3b6DeFF623B)
NONCE=$((NONCE+1))

echo "Funding sender 0x62427D78d4488310C865d77500F0A9bDb66D87E9 for test ZeroValue_TransactionCALLwithData_ToEmpty_OOGRevert_Istanbul_Paris with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x62427D78d4488310C865d77500F0A9bDb66D87E9)
NONCE=$((NONCE+1))

echo "Funding sender 0x35c4D5898bB19edE9F6dD4d6Feda6E7BbaA21899 for test dataTx with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x35c4D5898bB19edE9F6dD4d6Feda6E7BbaA21899)
NONCE=$((NONCE+1))

echo "Funding sender 0x32531288378021c11131BE266A434ACCa3fd383C for test ZeroValue_TransactionCALL_ToOneStorageKey_OOGRevert_Paris with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x32531288378021c11131BE266A434ACCa3fd383C)
NONCE=$((NONCE+1))

echo "Funding sender 0x4a9dDbbA44dfa4D4e168cAc21e01305Fe920C5Ff for test NotEnoughCashContractCreation with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x4a9dDbbA44dfa4D4e168cAc21e01305Fe920C5Ff)
NONCE=$((NONCE+1))

echo "Funding sender 0x57DaBdeD5fc9b154306F051027132FeAEd053D26 for test ZeroValue_TransactionCALL_ToNonZeroBalance_OOGRevert with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x57DaBdeD5fc9b154306F051027132FeAEd053D26)
NONCE=$((NONCE+1))

echo "Funding sender 0x72Fd069625fd166c98654D82B0848d692c709265 for test UserTransactionGasLimitIsTooLowWhenZeroCost with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x72Fd069625fd166c98654D82B0848d692c709265)
NONCE=$((NONCE+1))

echo "Funding sender 0x2919b9648163F70c26553d307Aa05a2Bc5d965A0 for test staticcall with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x2919b9648163F70c26553d307Aa05a2Bc5d965A0)
NONCE=$((NONCE+1))

echo "Funding sender 0x1994B1e68b9B221fe33360cF457256056bCFbd4F for test shanghaiWithoutWithdrawalsRLP with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x1994B1e68b9B221fe33360cF457256056bCFbd4F)
NONCE=$((NONCE+1))

echo "Funding sender 0xf6113F838FcB7D6488987fCe3F3888E2c7125031 for test incorrectWithdrawalsRoot with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xf6113F838FcB7D6488987fCe3F3888E2c7125031)
NONCE=$((NONCE+1))

echo "Funding sender 0x52D917e6d0e18eAdCA3f859529E08F35Aca034aa for test accountInteractions with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x52D917e6d0e18eAdCA3f859529E08F35Aca034aa)
NONCE=$((NONCE+1))

echo "Funding sender 0xD105e0b606c01F81610a56C2Fc1b2a0A15699350 for test amountIs0TouchAccountAndTransaction with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xD105e0b606c01F81610a56C2Fc1b2a0A15699350)
NONCE=$((NONCE+1))

echo "Funding sender 0x8795E68E46791DC49b756134419985e5d115aE85 for test oneUncleGeneration2 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x8795E68E46791DC49b756134419985e5d115aE85)
NONCE=$((NONCE+1))

echo "Funding sender 0xF9D372d29F9520d1c2C7Ee7e7844a68567651e84 for test EqualUncleInTwoDifferentBlocks2 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xF9D372d29F9520d1c2C7Ee7e7844a68567651e84)
NONCE=$((NONCE+1))

echo "Funding sender 0x1D608433592b71C28452AA42e9687c90F0bca5EC for test uncleHeaderWithGeneration0 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x1D608433592b71C28452AA42e9687c90F0bca5EC)
NONCE=$((NONCE+1))

echo "Funding sender 0x7953eD2a124576f366924fe672FDdF949fd0eb40 for test twoEqualUncle with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x7953eD2a124576f366924fe672FDdF949fd0eb40)
NONCE=$((NONCE+1))

echo "Funding sender 0x00679BBBCCfaFaE5e7339a4F78061fB98a756686 for test uncleWithSameBlockNumber with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x00679BBBCCfaFaE5e7339a4F78061fB98a756686)
NONCE=$((NONCE+1))

echo "Funding sender 0x7f86B4e3006DEeFE23F718bd34d7f82678920621 for test oneUncleGeneration4 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x7f86B4e3006DEeFE23F718bd34d7f82678920621)
NONCE=$((NONCE+1))

echo "Funding sender 0xB4E1e1E6258176453A5fFd72252bC06b18879F2B for test InChainUncle with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xB4E1e1E6258176453A5fFd72252bC06b18879F2B)
NONCE=$((NONCE+1))

echo "Funding sender 0x9688aCD25Ff6E62743Bd22c76e9AC7F87E4Aeb8B for test InChainUncleGreatGrandPa with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x9688aCD25Ff6E62743Bd22c76e9AC7F87E4Aeb8B)
NONCE=$((NONCE+1))

echo "Funding sender 0xeb023Ab847f00Ca7046Be013c640dde3B5058591 for test InChainUncleGreatGreatGreatGreatGrandPa with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xeb023Ab847f00Ca7046Be013c640dde3B5058591)
NONCE=$((NONCE+1))

echo "Funding sender 0xaDd0548202c414a5bABE29aD70Aec62B4Ee8eE3c for test oneUncleGeneration5 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xaDd0548202c414a5bABE29aD70Aec62B4Ee8eE3c)
NONCE=$((NONCE+1))

echo "Funding sender 0xb47E71Bc5BF9a7F305c0E5f78993A0bc8Cf1FEb5 for test threeUncle with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xb47E71Bc5BF9a7F305c0E5f78993A0bc8Cf1FEb5)
NONCE=$((NONCE+1))

echo "Funding sender 0x5BA50A42878925a46A8DE3907fdB3F53319D4b20 for test uncleHeaderAtBlock2 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x5BA50A42878925a46A8DE3907fdB3F53319D4b20)
NONCE=$((NONCE+1))

echo "Funding sender 0x0a5BA855cfd786b81BC6fb33c0E24e18D7B7c1dc for test oneUncle with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x0a5BA855cfd786b81BC6fb33c0E24e18D7B7c1dc)
NONCE=$((NONCE+1))

echo "Funding sender 0x1d64C6CcDe776aA4f02344D4472C7eef94f8a217 for test UncleIsBrother with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x1d64C6CcDe776aA4f02344D4472C7eef94f8a217)
NONCE=$((NONCE+1))

echo "Funding sender 0x95809B2E23a9b2DA9938E2330189d04494874E19 for test oneUncleGeneration7 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x95809B2E23a9b2DA9938E2330189d04494874E19)
NONCE=$((NONCE+1))

echo "Funding sender 0x73e999b55e6100aa37E4D998D24Ef4752C32F307 for test InChainUncleGrandPa with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x73e999b55e6100aa37E4D998D24Ef4752C32F307)
NONCE=$((NONCE+1))

echo "Funding sender 0xb43d5Bfb0a3a7d1b63B7e84c133a8c374fcb90a4 for test oneUncleGeneration3 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xb43d5Bfb0a3a7d1b63B7e84c133a8c374fcb90a4)
NONCE=$((NONCE+1))

echo "Funding sender 0x67789906E305Fa8b8f5a8Feb8Bf1A43F23604961 for test oneUncleGeneration6 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x67789906E305Fa8b8f5a8Feb8Bf1A43F23604961)
NONCE=$((NONCE+1))

echo "Funding sender 0x40dEa2B0be752bf05CDF19aB8374964208813f8d for test InChainUncleFather with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x40dEa2B0be752bf05CDF19aB8374964208813f8d)
NONCE=$((NONCE+1))

echo "Funding sender 0xd7B89E2C6CD6BBf5F9eecca56f771c6844bF070A for test twoUncle with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xd7B89E2C6CD6BBf5F9eecca56f771c6844bF070A)
NONCE=$((NONCE+1))

echo "Funding sender 0x1155c3eD1777A9e81c164df0d0aec9b4f99423f1 for test InChainUncleGreatGreatGrandPa with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x1155c3eD1777A9e81c164df0d0aec9b4f99423f1)
NONCE=$((NONCE+1))

echo "Funding sender 0x0DB911b39dC23FC0951009Ec9694bE8c5280c977 for test InChainUncleGreatGreatGreatGrandPa with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x0DB911b39dC23FC0951009Ec9694bE8c5280c977)
NONCE=$((NONCE+1))

echo "Funding sender 0x693c5c2C8CC0B57792581bbD256F70648FBA4f92 for test wrongTransactionsTrie with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x693c5c2C8CC0B57792581bbD256F70648FBA4f92)
NONCE=$((NONCE+1))

echo "Funding sender 0x5d622184e4B83660019cDCbDD1C81D9B1975497D for test log1_wrongBlockNumber with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x5d622184e4B83660019cDCbDD1C81D9B1975497D)
NONCE=$((NONCE+1))

echo "Funding sender 0x40b45541B43f9b560E74db06FECa092a1fa18479 for test timeDiff0 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x40b45541B43f9b560E74db06FECa092a1fa18479)
NONCE=$((NONCE+1))

echo "Funding sender 0x5c21675895073b67604f4E044A647DE3f208e59B for test wrongGasUsed with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x5c21675895073b67604f4E044A647DE3f208e59B)
NONCE=$((NONCE+1))

echo "Funding sender 0xFb7028a49d2Fa2EE1f644Db4578d2fe162741025 for test wrongDifficulty with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xFb7028a49d2Fa2EE1f644Db4578d2fe162741025)
NONCE=$((NONCE+1))

echo "Funding sender 0xab72583c91d1dF54B54802E1B4b406f15830ec6b for test wrongNumber with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xab72583c91d1dF54B54802E1B4b406f15830ec6b)
NONCE=$((NONCE+1))

echo "Funding sender 0xC1f91252D2554aD82C96E7c28921820D62f1c336 for test wrongUncleHash with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xC1f91252D2554aD82C96E7c28921820D62f1c336)
NONCE=$((NONCE+1))

echo "Funding sender 0x7ea6F7678e7266380F87180431248077E4858032 for test log1_wrongBloom with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x7ea6F7678e7266380F87180431248077E4858032)
NONCE=$((NONCE+1))

echo "Funding sender 0x96f01f607ecC83ACB5Fce787d18f5b79Ea63D401 for test wrongGasLimit with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x96f01f607ecC83ACB5Fce787d18f5b79Ea63D401)
NONCE=$((NONCE+1))

echo "Funding sender 0x4caCE6ba213B6f5cca09f51e29AF00a2702Caa1e for test wrongReceiptTrie with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x4caCE6ba213B6f5cca09f51e29AF00a2702Caa1e)
NONCE=$((NONCE+1))

echo "Funding sender 0x1E767213dDC46a70FceF3884901ff3B20D49f045 for test DifferentExtraData1025 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x1E767213dDC46a70FceF3884901ff3B20D49f045)
NONCE=$((NONCE+1))

echo "Funding sender 0xf4E4b489eD4c09338A37237a9f3896e5f7011F0f for test DifficultyIsZero with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xf4E4b489eD4c09338A37237a9f3896e5f7011F0f)
NONCE=$((NONCE+1))

echo "Funding sender 0x6CfeCE466ff54955FDFD792Fe722F6CC9e6D0358 for test wrongParentHash2 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x6CfeCE466ff54955FDFD792Fe722F6CC9e6D0358)
NONCE=$((NONCE+1))

echo "Funding sender 0x2729954572493152247814A7981279d900f50Cb8 for test ExtraData33 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x2729954572493152247814A7981279d900f50Cb8)
NONCE=$((NONCE+1))

echo "Funding sender 0x202A260cf39145EbcB4624828847A2faEcDF6798 for test wrongCoinbase with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x202A260cf39145EbcB4624828847A2faEcDF6798)
NONCE=$((NONCE+1))

echo "Funding sender 0xbcec6A5C9207300b57377E5197C40ed09427F6A4 for test GasLimitHigherThan2p63m1 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xbcec6A5C9207300b57377E5197C40ed09427F6A4)
NONCE=$((NONCE+1))

echo "Funding sender 0x7088958485C68659F20353Fd29a40F7A704C8cDe for test ExtraData1024 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x7088958485C68659F20353Fd29a40F7A704C8cDe)
NONCE=$((NONCE+1))

echo "Funding sender 0x944f767408099a62fadc2283D196dE431E8Ed651 for test GasLimitIsZero with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x944f767408099a62fadc2283D196dE431E8Ed651)
NONCE=$((NONCE+1))

echo "Funding sender 0xB57Ab8bB77e505cB82f090602Df6F9fca8ad059A for test wrongTimestamp with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xB57Ab8bB77e505cB82f090602Df6F9fca8ad059A)
NONCE=$((NONCE+1))

echo "Funding sender 0xB8755108030Ce23f7aC133681c01D7B20163f0CB for test GasUsedHigherThanBlockGasLimitButNotWithRefundsSuicideLast with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xB8755108030Ce23f7aC133681c01D7B20163f0CB)
NONCE=$((NONCE+1))

echo "Funding sender 0x921F012045552f3398Bd7B09d67775559BF7b017 for test GasUsedHigherThanBlockGasLimitButNotWithRefundsSuicideFirst with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x921F012045552f3398Bd7B09d67775559BF7b017)
NONCE=$((NONCE+1))

echo "Funding sender 0x709bb3D90e1660e5f29d44bf8c90bdc66d584f27 for test besuBaseFeeBug with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x709bb3D90e1660e5f29d44bf8c90bdc66d584f27)
NONCE=$((NONCE+1))

echo "Funding sender 0xBb907Db449357130A993636740DD9E52261022e5 for test wallet2outOf3txsRevoke with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xBb907Db449357130A993636740DD9E52261022e5)
NONCE=$((NONCE+1))

echo "Funding sender 0x77c7C9d6efE2C4f7E0c137cc0144A3Df54EE3158 for test walletReorganizeOwners with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x77c7C9d6efE2C4f7E0c137cc0144A3Df54EE3158)
NONCE=$((NONCE+1))

echo "Funding sender 0xFED09f550b989bf96Add51cb787783648434df52 for test wallet2outOf3txsRevokeAndConfirmAgain with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xFED09f550b989bf96Add51cb787783648434df52)
NONCE=$((NONCE+1))

echo "Funding sender 0xF3EA516e26F90A9F8F33a7C7144C6b9671B36f71 for test wallet2outOf3txs with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xF3EA516e26F90A9F8F33a7C7144C6b9671B36f71)
NONCE=$((NONCE+1))

echo "Funding sender 0x3727ED856367B605202833c06CB01b6b2F449F5F for test wallet2outOf3txs2 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x3727ED856367B605202833c06CB01b6b2F449F5F)
NONCE=$((NONCE+1))

echo "Funding sender 0xde4FC544b5d8ED9eB6B7C19F464727df87906b4A for test randomStatetest235BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xde4FC544b5d8ED9eB6B7C19F464727df87906b4A)
NONCE=$((NONCE+1))

echo "Funding sender 0x5BDeDFB283da7668980B72a1f3B82faF6eeA5f65 for test randomStatetest423BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x5BDeDFB283da7668980B72a1f3B82faF6eeA5f65)
NONCE=$((NONCE+1))

echo "Funding sender 0xba7EE4Fb4208ff9113620C2463A600093AEa1c2f for test randomStatetest182BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xba7EE4Fb4208ff9113620C2463A600093AEa1c2f)
NONCE=$((NONCE+1))

echo "Funding sender 0xc9f0C3f4A5768DaA0D216437B623F8Ca6905f023 for test randomStatetest373BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xc9f0C3f4A5768DaA0D216437B623F8Ca6905f023)
NONCE=$((NONCE+1))

echo "Funding sender 0xf5cBC1cC78b1eBFfa850C332BFF70ff63F1aFC93 for test randomStatetest598BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xf5cBC1cC78b1eBFfa850C332BFF70ff63F1aFC93)
NONCE=$((NONCE+1))

echo "Funding sender 0x19d386F17C38ff8c54C49446E46bDA67d961de18 for test randomStatetest614BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x19d386F17C38ff8c54C49446E46bDA67d961de18)
NONCE=$((NONCE+1))

echo "Funding sender 0x24C7583DcEBeeD0d1Ec34877a980f6f851D4E821 for test randomStatetest256BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x24C7583DcEBeeD0d1Ec34877a980f6f851D4E821)
NONCE=$((NONCE+1))

echo "Funding sender 0x4108E025b7800A80B64aaaf9465119FEa8D60D77 for test randomStatetest591BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x4108E025b7800A80B64aaaf9465119FEa8D60D77)
NONCE=$((NONCE+1))

echo "Funding sender 0x35Bb96ac4B4Df54828145D6419e3f5D34dD8227C for test randomStatetest314BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x35Bb96ac4B4Df54828145D6419e3f5D34dD8227C)
NONCE=$((NONCE+1))

echo "Funding sender 0x931b74ebc1C2EbE31000E5fDa3c1cb4a9412059d for test randomStatetest21BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x931b74ebc1C2EbE31000E5fDa3c1cb4a9412059d)
NONCE=$((NONCE+1))

echo "Funding sender 0x5A4131705E71DBAcc308f12CaE82a0E650fE2906 for test randomStatetest392BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x5A4131705E71DBAcc308f12CaE82a0E650fE2906)
NONCE=$((NONCE+1))

echo "Funding sender 0xDcbA3F2a8237EE51873ed061E3925c4Ec9cb15aE for test randomStatetest551BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xDcbA3F2a8237EE51873ed061E3925c4Ec9cb15aE)
NONCE=$((NONCE+1))

echo "Funding sender 0xf93025De24825f8c74f1a5E4054DaD2F68eacD78 for test randomStatetest319BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xf93025De24825f8c74f1a5E4054DaD2F68eacD78)
NONCE=$((NONCE+1))

echo "Funding sender 0xa18c4734032C79bB316b3286dFD281e88BCbcf8f for test randomStatetest79BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xa18c4734032C79bB316b3286dFD281e88BCbcf8f)
NONCE=$((NONCE+1))

echo "Funding sender 0x7d0014E67f7A2c0A2cA79E29e8fc58D740730549 for test randomStatetest468BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x7d0014E67f7A2c0A2cA79E29e8fc58D740730549)
NONCE=$((NONCE+1))

echo "Funding sender 0xf3267219e94e3A0f3c06293Bcc1638138654B59a for test randomStatetest330BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xf3267219e94e3A0f3c06293Bcc1638138654B59a)
NONCE=$((NONCE+1))

echo "Funding sender 0x0b51be8079610e392B4CF0EFE4c5426bE06238cE for test randomStatetest557BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x0b51be8079610e392B4CF0EFE4c5426bE06238cE)
NONCE=$((NONCE+1))

echo "Funding sender 0xcCDCc1dc8D52E3642E0fc4BB2710f1F2cB1C0b82 for test randomStatetest561BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xcCDCc1dc8D52E3642E0fc4BB2710f1F2cB1C0b82)
NONCE=$((NONCE+1))

echo "Funding sender 0x39BF69A0B92C60BEF5d04d2B64F992ccD7Ed4165 for test randomStatetest568BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x39BF69A0B92C60BEF5d04d2B64F992ccD7Ed4165)
NONCE=$((NONCE+1))

echo "Funding sender 0xc0D069901B6F3948dCefDdb4ef337678FccE45A6 for test randomStatetest317BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xc0D069901B6F3948dCefDdb4ef337678FccE45A6)
NONCE=$((NONCE+1))

echo "Funding sender 0x81594f3f6710835ff26fDF102701c786ce1D61d0 for test randomStatetest570BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x81594f3f6710835ff26fDF102701c786ce1D61d0)
NONCE=$((NONCE+1))

echo "Funding sender 0x3D31D0D89104AF6B101a5C3b99891C6fc85ee2dc for test randomStatetest431BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x3D31D0D89104AF6B101a5C3b99891C6fc85ee2dc)
NONCE=$((NONCE+1))

echo "Funding sender 0xC5Cd1dfD0F4d1c2945A34017bcF6e32dF04cf1b1 for test randomStatetest277BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xC5Cd1dfD0F4d1c2945A34017bcF6e32dF04cf1b1)
NONCE=$((NONCE+1))

echo "Funding sender 0xB323F8BCB790d0E1cE909CD432262A722FfdABFc for test randomStatetest32BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xB323F8BCB790d0E1cE909CD432262A722FfdABFc)
NONCE=$((NONCE+1))

echo "Funding sender 0x3F105823915C0706D082fA572B7d4799C8a2F1f0 for test randomStatetest34BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x3F105823915C0706D082fA572B7d4799C8a2F1f0)
NONCE=$((NONCE+1))

echo "Funding sender 0xc49954Da616902A1fc70789d3Bf6CdB82296FCC6 for test randomStatetest70BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xc49954Da616902A1fc70789d3Bf6CdB82296FCC6)
NONCE=$((NONCE+1))

echo "Funding sender 0xc02F8909dAb096CCe77630b05dA51223466B6089 for test randomStatetest394BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xc02F8909dAb096CCe77630b05dA51223466B6089)
NONCE=$((NONCE+1))

echo "Funding sender 0x80CC45FBECE3dC6BD4e2a804d239841AEC278F67 for test randomStatetest234BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x80CC45FBECE3dC6BD4e2a804d239841AEC278F67)
NONCE=$((NONCE+1))

echo "Funding sender 0x493dCb86439F3890150b83A883211C0d62Ce53eB for test randomStatetest631BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x493dCb86439F3890150b83A883211C0d62Ce53eB)
NONCE=$((NONCE+1))

echo "Funding sender 0x1a9FCAAC8A86BCA4912b8d8156e3f800a344F800 for test randomStatetest374BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x1a9FCAAC8A86BCA4912b8d8156e3f800a344F800)
NONCE=$((NONCE+1))

echo "Funding sender 0xF040215c8EC03F212eAD2a551ABE354A17C37181 for test randomStatetest590BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xF040215c8EC03F212eAD2a551ABE354A17C37181)
NONCE=$((NONCE+1))

echo "Funding sender 0x5dC2aC096789a3742a7c36b6BACFAe6790030ED0 for test randomStatetest50BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x5dC2aC096789a3742a7c36b6BACFAe6790030ED0)
NONCE=$((NONCE+1))

echo "Funding sender 0x2d96e109C26633b81BFE37eAB5fC3c79baf7E60a for test randomStatetest403BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x2d96e109C26633b81BFE37eAB5fC3c79baf7E60a)
NONCE=$((NONCE+1))

echo "Funding sender 0x75d0b7a3d5Ed6EDCb764B053767E908A322B3D7a for test randomStatetest93BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x75d0b7a3d5Ed6EDCb764B053767E908A322B3D7a)
NONCE=$((NONCE+1))

echo "Funding sender 0xd36022cd7df2b3b34B65670F570Fe39b72D39F97 for test randomStatetest400BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xd36022cd7df2b3b34B65670F570Fe39b72D39F97)
NONCE=$((NONCE+1))

echo "Funding sender 0x3FA987785235A35D9719c0392F7883EDfA8EdAe6 for test randomStatetest165BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x3FA987785235A35D9719c0392F7883EDfA8EdAe6)
NONCE=$((NONCE+1))

echo "Funding sender 0x5e11afa896bC4B5B273Beb990d6059aAc5cFbB06 for test randomStatetest132BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x5e11afa896bC4B5B273Beb990d6059aAc5cFbB06)
NONCE=$((NONCE+1))

echo "Funding sender 0xdd266db734Dbed0E2D18424b281C07Ed79889684 for test randomStatetest634BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xdd266db734Dbed0E2D18424b281C07Ed79889684)
NONCE=$((NONCE+1))

echo "Funding sender 0x27a64F1a99dc5D612e7Fb5ddE81991d10176095e for test randomStatetest453BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x27a64F1a99dc5D612e7Fb5ddE81991d10176095e)
NONCE=$((NONCE+1))

echo "Funding sender 0x6cd3E87E12e4D448dE8eF5CDD0f10aA4c6F12a75 for test randomStatetest522BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x6cd3E87E12e4D448dE8eF5CDD0f10aA4c6F12a75)
NONCE=$((NONCE+1))

echo "Funding sender 0xE2B0383C823E816C4c20722226CDb08C69f03916 for test randomStatetest113BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xE2B0383C823E816C4c20722226CDb08C69f03916)
NONCE=$((NONCE+1))

echo "Funding sender 0xB418b89f370bFe3a3FAe3dc4e89D38aBBe1F5404 for test randomStatetest427BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xB418b89f370bFe3a3FAe3dc4e89D38aBBe1F5404)
NONCE=$((NONCE+1))

echo "Funding sender 0x25b32D0F9ac892BbfC68Eb94e20aA2D13c5659e4 for test randomStatetest258BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x25b32D0F9ac892BbfC68Eb94e20aA2D13c5659e4)
NONCE=$((NONCE+1))

echo "Funding sender 0x1280f284D7db3A70EaB98723cF8bFcc41e5c1E9B for test randomStatetest239BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x1280f284D7db3A70EaB98723cF8bFcc41e5c1E9B)
NONCE=$((NONCE+1))

echo "Funding sender 0x9b0d46bc2B2dEcC050b677c8ef853070E4a7b271 for test randomStatetest344BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x9b0d46bc2B2dEcC050b677c8ef853070E4a7b271)
NONCE=$((NONCE+1))

echo "Funding sender 0x4a71f762E619CB6F02bb54da0A01C4Df73920375 for test randomStatetest593BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x4a71f762E619CB6F02bb54da0A01C4Df73920375)
NONCE=$((NONCE+1))

echo "Funding sender 0x5b6Ea182a675bDe5896C03580fF03D88A1be91d0 for test randomStatetest595BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x5b6Ea182a675bDe5896C03580fF03D88A1be91d0)
NONCE=$((NONCE+1))

echo "Funding sender 0xD9ed3172c1D0E0Ec2c7F6269806eB6c09467Abc6 for test randomStatetest76BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xD9ed3172c1D0E0Ec2c7F6269806eB6c09467Abc6)
NONCE=$((NONCE+1))

echo "Funding sender 0xB150558c06638886B3001f34941247012af37394 for test randomStatetest331BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xB150558c06638886B3001f34941247012af37394)
NONCE=$((NONCE+1))

echo "Funding sender 0xa8eE4b6b6773C4d4acD31ab101f16530886cC241 for test randomStatetest240BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xa8eE4b6b6773C4d4acD31ab101f16530886cC241)
NONCE=$((NONCE+1))

echo "Funding sender 0xF53C0b598291748106D82922a48Ecf06C3d8B3cE for test randomStatetest486BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xF53C0b598291748106D82922a48Ecf06C3d8B3cE)
NONCE=$((NONCE+1))

echo "Funding sender 0x91e7c0ab0503DD09260261e1619eB00DA5563E38 for test randomStatetest515BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x91e7c0ab0503DD09260261e1619eB00DA5563E38)
NONCE=$((NONCE+1))

echo "Funding sender 0x005bF3B5fFefa8090E1cB00a9c7E9BD5C403c3c9 for test randomStatetest213BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x005bF3B5fFefa8090E1cB00a9c7E9BD5C403c3c9)
NONCE=$((NONCE+1))

echo "Funding sender 0x547b0e0Bcf835FeC8c3f09CEe8CEc057Bdb62647 for test randomStatetest463BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x547b0e0Bcf835FeC8c3f09CEe8CEc057Bdb62647)
NONCE=$((NONCE+1))

echo "Funding sender 0x9CdA62A61cF7d6089Ca51DD862D4569bCcCa06De for test randomStatetest56BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x9CdA62A61cF7d6089Ca51DD862D4569bCcCa06De)
NONCE=$((NONCE+1))

echo "Funding sender 0x03dfcA5c1DEAF5f18A8A7f8C697F580BfCE4227c for test randomStatetest193BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x03dfcA5c1DEAF5f18A8A7f8C697F580BfCE4227c)
NONCE=$((NONCE+1))

echo "Funding sender 0x52fBe950C796886de68C702F59bf3b894fD983Bc for test randomStatetest613BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x52fBe950C796886de68C702F59bf3b894fD983Bc)
NONCE=$((NONCE+1))

echo "Funding sender 0x32f05937c10527Fb00F6971C1c8dF53886B2552B for test randomStatetest140BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x32f05937c10527Fb00F6971C1c8dF53886B2552B)
NONCE=$((NONCE+1))

echo "Funding sender 0x3e8CaB9462c357D01b305C22537FDC2E183937c7 for test randomStatetest255BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x3e8CaB9462c357D01b305C22537FDC2E183937c7)
NONCE=$((NONCE+1))

echo "Funding sender 0xA46Cc4929eE07fD48F45d65D40E414d18D0d3776 for test randomStatetest540BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xA46Cc4929eE07fD48F45d65D40E414d18D0d3776)
NONCE=$((NONCE+1))

echo "Funding sender 0xBb7CBb978347866d2bdDBde5894334fD214Ef483 for test randomStatetest573BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xBb7CBb978347866d2bdDBde5894334fD214Ef483)
NONCE=$((NONCE+1))

echo "Funding sender 0x0B3069271D6d3e60f328BDc8d5A8f4D4a4A8B4B1 for test randomStatetest203BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x0B3069271D6d3e60f328BDc8d5A8f4D4a4A8B4B1)
NONCE=$((NONCE+1))

echo "Funding sender 0x973621806f173C439e21d27e77bdaa03B469bcc1 for test randomStatetest289BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x973621806f173C439e21d27e77bdaa03B469bcc1)
NONCE=$((NONCE+1))

echo "Funding sender 0xd81b792a4bbE73daB1545eCf1B3CC035F79C6655 for test randomStatetest432BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xd81b792a4bbE73daB1545eCf1B3CC035F79C6655)
NONCE=$((NONCE+1))

echo "Funding sender 0x4475181D5e196180a175A80F625187A3a415b016 for test randomStatetest181BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x4475181D5e196180a175A80F625187A3a415b016)
NONCE=$((NONCE+1))

echo "Funding sender 0x435c2a8B7C7A8FeD5249dBB0C7820Df586eBf2B3 for test randomStatetest152BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x435c2a8B7C7A8FeD5249dBB0C7820Df586eBf2B3)
NONCE=$((NONCE+1))

echo "Funding sender 0x6FDBc9ad8974C7A3899Bc10Edf0a418Fda9ecCE8 for test randomStatetest128BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x6FDBc9ad8974C7A3899Bc10Edf0a418Fda9ecCE8)
NONCE=$((NONCE+1))

echo "Funding sender 0xF26537401B648088C09F50B10b27A69c211fF491 for test randomStatetest492BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xF26537401B648088C09F50B10b27A69c211fF491)
NONCE=$((NONCE+1))

echo "Funding sender 0xF69C1bB17C4A1c80236f725e3Fd508cEBaf93D06 for test randomStatetest127BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xF69C1bB17C4A1c80236f725e3Fd508cEBaf93D06)
NONCE=$((NONCE+1))

echo "Funding sender 0xC4f8bC6042b61710431Bb53daF7Fc83F079c11Fc for test randomStatetest91BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xC4f8bC6042b61710431Bb53daF7Fc83F079c11Fc)
NONCE=$((NONCE+1))

echo "Funding sender 0x732Ddde72b275BB99e8cAEDabD54CD4DAa955945 for test randomStatetest390BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x732Ddde72b275BB99e8cAEDabD54CD4DAa955945)
NONCE=$((NONCE+1))

echo "Funding sender 0xa6f9e518Eb61cb81aa485AA89d92E7BFEb9a5Dff for test randomStatetest434BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xa6f9e518Eb61cb81aa485AA89d92E7BFEb9a5Dff)
NONCE=$((NONCE+1))

echo "Funding sender 0x6Fe718Fe4dFE42FE3117AAfeC32915fC54BFa239 for test randomStatetest65BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x6Fe718Fe4dFE42FE3117AAfeC32915fC54BFa239)
NONCE=$((NONCE+1))

echo "Funding sender 0xEFAb6B8228fBB076F71662bF6E6c8Ba7B5bBa3eB for test randomStatetest44BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xEFAb6B8228fBB076F71662bF6E6c8Ba7B5bBa3eB)
NONCE=$((NONCE+1))

echo "Funding sender 0x248907a83F1E3fdB43FddB83A9B0cf5D95c19c5a for test randomStatetest61BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x248907a83F1E3fdB43FddB83A9B0cf5D95c19c5a)
NONCE=$((NONCE+1))

echo "Funding sender 0xF80E4A2e644a948c70Db285C2263a85AAC904d7a for test randomStatetest606BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xF80E4A2e644a948c70Db285C2263a85AAC904d7a)
NONCE=$((NONCE+1))

echo "Funding sender 0xB2e4b754ce11CB2380B6F6259BAFD02bFf3Dc5d1 for test randomStatetest284BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xB2e4b754ce11CB2380B6F6259BAFD02bFf3Dc5d1)
NONCE=$((NONCE+1))

echo "Funding sender 0x1b9c39F5C9a18EF9566b3b10db8a86E34f3FA7D6 for test randomStatetest35BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x1b9c39F5C9a18EF9566b3b10db8a86E34f3FA7D6)
NONCE=$((NONCE+1))

echo "Funding sender 0x8ea90e1E7C05232669dd81E0dD45df5A5159FE3b for test randomStatetest141BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x8ea90e1E7C05232669dd81E0dD45df5A5159FE3b)
NONCE=$((NONCE+1))

echo "Funding sender 0x66a702219B3Ab4e37d67Ff5815bF537dA99C7847 for test randomStatetest272BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x66a702219B3Ab4e37d67Ff5815bF537dA99C7847)
NONCE=$((NONCE+1))

echo "Funding sender 0xd8f65959B0636eC74B30caab014d5f439C585440 for test randomStatetest68BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xd8f65959B0636eC74B30caab014d5f439C585440)
NONCE=$((NONCE+1))

echo "Funding sender 0x79170180B684E2C832E76aA42Ee6E5fd5590b389 for test randomStatetest538BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x79170180B684E2C832E76aA42Ee6E5fd5590b389)
NONCE=$((NONCE+1))

echo "Funding sender 0x4dc5aB8548629dd65DAb9EA667e446f5332E9A29 for test randomStatetest224BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x4dc5aB8548629dd65DAb9EA667e446f5332E9A29)
NONCE=$((NONCE+1))

echo "Funding sender 0x36d7d9614E5272191E12c3EFFB03F8a25e680347 for test 201503110226PYTHON_DUP6BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x36d7d9614E5272191E12c3EFFB03F8a25e680347)
NONCE=$((NONCE+1))

echo "Funding sender 0x6A7C1f82c60c1a9b6d5AD2565EF20bc04bA04380 for test randomStatetest622BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x6A7C1f82c60c1a9b6d5AD2565EF20bc04bA04380)
NONCE=$((NONCE+1))

echo "Funding sender 0x7A017653E593c2476291Ec461383f2B4Cb082F51 for test randomStatetest109BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x7A017653E593c2476291Ec461383f2B4Cb082F51)
NONCE=$((NONCE+1))

echo "Funding sender 0x9FDB47829E7A43A1bf9E79cddAa1ee890242D4B0 for test randomStatetest530BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x9FDB47829E7A43A1bf9E79cddAa1ee890242D4B0)
NONCE=$((NONCE+1))

echo "Funding sender 0xd78530EE4563748Ae5BA998F9454eF2974416a52 for test randomStatetest218BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xd78530EE4563748Ae5BA998F9454eF2974416a52)
NONCE=$((NONCE+1))

echo "Funding sender 0xC96A1F576C5b2623b6D4b7Be4bB66c61f1B70e09 for test randomStatetest253BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xC96A1F576C5b2623b6D4b7Be4bB66c61f1B70e09)
NONCE=$((NONCE+1))

echo "Funding sender 0xfD9Cfd3a78d681c2A2608Ffd81252764Fa5EcA81 for test randomStatetest8BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xfD9Cfd3a78d681c2A2608Ffd81252764Fa5EcA81)
NONCE=$((NONCE+1))

echo "Funding sender 0xcA6557Be785a622Fa13B2fE2924499Bec377cc4e for test randomStatetest479BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xcA6557Be785a622Fa13B2fE2924499Bec377cc4e)
NONCE=$((NONCE+1))

echo "Funding sender 0x8bb7fAF1Fc2B3B2320e515672F035741867FDEbb for test randomStatetest7BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x8bb7fAF1Fc2B3B2320e515672F035741867FDEbb)
NONCE=$((NONCE+1))

echo "Funding sender 0x159485Bb5752778ea59590C682f425C2aD88Fec1 for test randomStatetest623BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x159485Bb5752778ea59590C682f425C2aD88Fec1)
NONCE=$((NONCE+1))

echo "Funding sender 0xDF3414d34cb6b02E4F1C15f56f88aF1CCD63ceB4 for test randomStatetest168BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xDF3414d34cb6b02E4F1C15f56f88aF1CCD63ceB4)
NONCE=$((NONCE+1))

echo "Funding sender 0x21dbaF9D4ce5AB2969f989e215d54B081ed30749 for test randomStatetest40BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x21dbaF9D4ce5AB2969f989e215d54B081ed30749)
NONCE=$((NONCE+1))

echo "Funding sender 0xc98Ea0847D63F71C4105270B3728b9c1c2B2EbD8 for test randomStatetest459BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xc98Ea0847D63F71C4105270B3728b9c1c2B2EbD8)
NONCE=$((NONCE+1))

echo "Funding sender 0xdb0c81fbBf2FB9c4B0CF8f3C2A1aDcd9f97F6954 for test randomStatetest262BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xdb0c81fbBf2FB9c4B0CF8f3C2A1aDcd9f97F6954)
NONCE=$((NONCE+1))

echo "Funding sender 0x7b4B5f4Bf55DD5Ff908457503cC3D54aa94336a4 for test randomStatetest529BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x7b4B5f4Bf55DD5Ff908457503cC3D54aa94336a4)
NONCE=$((NONCE+1))

echo "Funding sender 0x73d96fd048a2A17aa663Dc214A00816e138b6245 for test randomStatetest99BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x73d96fd048a2A17aa663Dc214A00816e138b6245)
NONCE=$((NONCE+1))

echo "Funding sender 0x431cB5C5236C80fc803e206C1301b356c781a366 for test randomStatetest186BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x431cB5C5236C80fc803e206C1301b356c781a366)
NONCE=$((NONCE+1))

echo "Funding sender 0x387F42e26E3553eC116E8E6546238E703Ef83832 for test randomStatetest490BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x387F42e26E3553eC116E8E6546238E703Ef83832)
NONCE=$((NONCE+1))

echo "Funding sender 0xA02ff5b1a1E07088718433765bA15e608d83De84 for test randomStatetest86BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xA02ff5b1a1E07088718433765bA15e608d83De84)
NONCE=$((NONCE+1))

echo "Funding sender 0x898306f666d9895A2C9752C67d5388f9FB8AAc69 for test randomStatetest617BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x898306f666d9895A2C9752C67d5388f9FB8AAc69)
NONCE=$((NONCE+1))

echo "Funding sender 0x35064C6d7633D6bD0A3Ea50dDfb5855FF1819596 for test randomStatetest101BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x35064C6d7633D6bD0A3Ea50dDfb5855FF1819596)
NONCE=$((NONCE+1))

echo "Funding sender 0x4D586d40003521B0eEEf19F37736Ed60ad175b4a for test randomStatetest71BC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x4D586d40003521B0eEEf19F37736Ed60ad175b4a)
NONCE=$((NONCE+1))

echo "Funding sender 0xc2476EDb5AC7f25F22129DBB6ccdbE8a5C4714e1 for test ExtraData32 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xc2476EDb5AC7f25F22129DBB6ccdbE8a5C4714e1)
NONCE=$((NONCE+1))

echo "Funding sender 0xcfEF24aFA863E9485242623A2e8dFb2Ed8f76054 for test timeDiff12 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xcfEF24aFA863E9485242623A2e8dFb2Ed8f76054)
NONCE=$((NONCE+1))

echo "Funding sender 0x9CFB7270859716d895A108EDE8859AFd2644ce23 for test log1_correct with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x9CFB7270859716d895A108EDE8859AFd2644ce23)
NONCE=$((NONCE+1))

echo "Funding sender 0x3D994263295617700bE78D05884a841e3251A4b1 for test dataTx2 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x3D994263295617700bE78D05884a841e3251A4b1)
NONCE=$((NONCE+1))

echo "Funding sender 0xB4fE81a2903A1d4FB584fae2d84B0979A2688203 for test SimpleTx3LowS with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xB4fE81a2903A1d4FB584fae2d84B0979A2688203)
NONCE=$((NONCE+1))

echo "Funding sender 0x20ba6273306C6b9D8293158Eab15313B47EC12fA for test timeDiff14 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x20ba6273306C6b9D8293158Eab15313B47EC12fA)
NONCE=$((NONCE+1))

echo "Funding sender 0xE4a1b2878D530C3B5450B91bB28DE79C7A0712fB for test diff1024 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xE4a1b2878D530C3B5450B91bB28DE79C7A0712fB)
NONCE=$((NONCE+1))

echo "Funding sender 0xcf6609f83d0110BF1d0274ba5e9b877Ca91FcbE6 for test gasLimitTooHigh2 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xcf6609f83d0110BF1d0274ba5e9b877Ca91FcbE6)
NONCE=$((NONCE+1))

echo "Funding sender 0xF980Dca1bCd874e113CF6bA9B18C7A5E0Dc65204 for test RecallSuicidedContractInOneBlock with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xF980Dca1bCd874e113CF6bA9B18C7A5E0Dc65204)
NONCE=$((NONCE+1))

echo "Funding sender 0xdD3EdE6006819350E5E1DFaf9c5fBabF1275a9E0 for test timeDiff13 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xdD3EdE6006819350E5E1DFaf9c5fBabF1275a9E0)
NONCE=$((NONCE+1))

echo "Funding sender 0x79B45df9a7D3550F3e066480Fa5DDEdF7de67ce1 for test RecallSuicidedContract with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x79B45df9a7D3550F3e066480Fa5DDEdF7de67ce1)
NONCE=$((NONCE+1))

echo "Funding sender 0x8E1c04eb9428BD29003526B4BB3481d040501072 for test callRevert with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x8E1c04eb9428BD29003526B4BB3481d040501072)
NONCE=$((NONCE+1))

echo "Funding sender 0xE3314d5F4396113953Fc22E4F86B285CED6157D3 for test SimpleTx with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xE3314d5F4396113953Fc22E4F86B285CED6157D3)
NONCE=$((NONCE+1))

echo "Funding sender 0xf837F029465726537d1C5442d07780719ce0578E for test AmIOnEIP150 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xf837F029465726537d1C5442d07780719ce0578E)
NONCE=$((NONCE+1))

echo "Funding sender 0x6071693D6C0c7DFFae92eC1559854bdFC82FD5D6 for test create2collisionwithSelfdestructSameBlock with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x6071693D6C0c7DFFae92eC1559854bdFC82FD5D6)
NONCE=$((NONCE+1))

echo "Funding sender 0x946EBC41376a5E2f8C6C2F9e0818eE19d742a016 for test suicideStorageCheckVCreate with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x946EBC41376a5E2f8C6C2F9e0818eE19d742a016)
NONCE=$((NONCE+1))

echo "Funding sender 0xfdadB776Ab5C02286453ebA6c4272c3B628dD691 for test suicideStorageCheck with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xfdadB776Ab5C02286453ebA6c4272c3B628dD691)
NONCE=$((NONCE+1))

echo "Funding sender 0x4C0d26fe0f889b980fF6111cC0aB930F4918b058 for test SuicidesMixingCoinbase2 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x4C0d26fe0f889b980fF6111cC0aB930F4918b058)
NONCE=$((NONCE+1))

echo "Funding sender 0x9cB1244f23E7BF8d85D9e26C16dA53565d401c00 for test ZeroValue_TransactionCALLwithData_ToOneStorageKey_OOGRevert_Paris with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x9cB1244f23E7BF8d85D9e26C16dA53565d401c00)
NONCE=$((NONCE+1))

echo "Funding sender 0xABEfc3F8c78B29f37E6A9BBC126cb477edAE2eDd for test SuicidesMixingCoinbase with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xABEfc3F8c78B29f37E6A9BBC126cb477edAE2eDd)
NONCE=$((NONCE+1))

echo "Funding sender 0xF7C438Ca8952435cE27faCBC2db2b410D27C78B3 for test randomStatetest160 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xF7C438Ca8952435cE27faCBC2db2b410D27C78B3)
NONCE=$((NONCE+1))

echo "Funding sender 0x335313d86bcc92Fb1592b107aaB72D11269a7929 for test suicideStorageCheckVCreate2 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x335313d86bcc92Fb1592b107aaB72D11269a7929)
NONCE=$((NONCE+1))

echo "Funding sender 0x263B868D182b3C82DB5a922bB2F783d5c1FD1D30 for test randomStatetest594 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x263B868D182b3C82DB5a922bB2F783d5c1FD1D30)
NONCE=$((NONCE+1))

echo "Funding sender 0x46e8F07fFBccc3892d0Dcb739e8c328CA3A437Cb for test randomStatetest46 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x46e8F07fFBccc3892d0Dcb739e8c328CA3A437Cb)
NONCE=$((NONCE+1))

echo "Funding sender 0xA4c091f46d2dd04679bc94c1e89b3D44CcD93915 for test callcodeOutput3partial with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xA4c091f46d2dd04679bc94c1e89b3D44CcD93915)
NONCE=$((NONCE+1))

echo "Funding sender 0x47776b7cA4fAdEcc7Cbc92C97501E6CcDB48B870 for test randomStatetest170 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x47776b7cA4fAdEcc7Cbc92C97501E6CcDB48B870)
NONCE=$((NONCE+1))

echo "Funding sender 0x1AAeb605b308160CCcF97B895b490c7B22444876 for test OOGStateCopyContainingDeletedContract with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x1AAeb605b308160CCcF97B895b490c7B22444876)
NONCE=$((NONCE+1))

echo "Funding sender 0x59DBd5E03A64F2A41b9B4df4081167742d86fd9f for test randomStatetest441 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x59DBd5E03A64F2A41b9B4df4081167742d86fd9f)
NONCE=$((NONCE+1))

echo "Funding sender 0x0BF7D8F14F8eCc560903c18998Bf73b7A1B00269 for test randomStatetest94 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x0BF7D8F14F8eCc560903c18998Bf73b7A1B00269)
NONCE=$((NONCE+1))

echo "Funding sender 0x55b6403af6B9CEb91c537180C6c42a6f2af38d77 for test randomStatetest123 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x55b6403af6B9CEb91c537180C6c42a6f2af38d77)
NONCE=$((NONCE+1))

echo "Funding sender 0x8Fa4A125158eB89465963bB5A8EC8b30406C6CaA for test blockhashTests with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x8Fa4A125158eB89465963bB5A8EC8b30406C6CaA)
NONCE=$((NONCE+1))

echo "Funding sender 0x6e5ABc90873B518a333E34bdCd947eeCBDe58017 for test randomStatetest324 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x6e5ABc90873B518a333E34bdCd947eeCBDe58017)
NONCE=$((NONCE+1))

echo "Funding sender 0xBd6b0ded0B1dC79c9271788e755390Ac50a54B38 for test multimpleBalanceInstruction with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xBd6b0ded0B1dC79c9271788e755390Ac50a54B38)
NONCE=$((NONCE+1))

echo "Funding sender 0x693299A96Cc8Ca5f4358a24226db8717fFD122a8 for test simpleSuicide with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x693299A96Cc8Ca5f4358a24226db8717fFD122a8)
NONCE=$((NONCE+1))

echo "Funding sender 0x1f278b22Dd5bdFB8578264F10e96521C9eCbBeEb for test randomStatetest38 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x1f278b22Dd5bdFB8578264F10e96521C9eCbBeEb)
NONCE=$((NONCE+1))

echo "Funding sender 0xdE123e0578553D9b2D705b748c9BF48Dc8Df1ccD for test randomStatetest375 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xdE123e0578553D9b2D705b748c9BF48Dc8Df1ccD)
NONCE=$((NONCE+1))

echo "Funding sender 0xc50f9e1a4aafdFf0EBa58976BA8905D026c44FE2 for test suicideCoinbaseState with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xc50f9e1a4aafdFf0EBa58976BA8905D026c44FE2)
NONCE=$((NONCE+1))

echo "Funding sender 0xaA1364Dea552379eEA1bA6387c8EF88C3a6BB83d for test randomStatetest328 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xaA1364Dea552379eEA1bA6387c8EF88C3a6BB83d)
NONCE=$((NONCE+1))

echo "Funding sender 0x04E9F3787a6d02DF47A95eE106b87321f250025A for test ZeroValue_TransactionCALLwithData_ToNonZeroBalance_OOGRevert with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x04E9F3787a6d02DF47A95eE106b87321f250025A)
NONCE=$((NONCE+1))

echo "Funding sender 0x586fA5D9BEedfe161A88e6b0a4D6673a313f04D9 for test randomStatetest136 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x586fA5D9BEedfe161A88e6b0a4D6673a313f04D9)
NONCE=$((NONCE+1))

echo "Funding sender 0xE1ce52737A4E4Ee220e4a2DB80587cBC40653e1d for test randomStatetest377 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xE1ce52737A4E4Ee220e4a2DB80587cBC40653e1d)
NONCE=$((NONCE+1))

echo "Funding sender 0x56268A3604c056DEF1B6F6D5B18F885C6ac01504 for test extCodeHashOfDeletedAccountDynamic with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x56268A3604c056DEF1B6F6D5B18F885C6ac01504)
NONCE=$((NONCE+1))

echo "Funding sender 0x5a4Af5408C67fBd61A3d7826b070f3a2Fa8208d6 for test OverflowGasRequire with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x5a4Af5408C67fBd61A3d7826b070f3a2Fa8208d6)
NONCE=$((NONCE+1))

echo "Funding sender 0x10E7F0a6770134199e28cAD318753DfbB42f12e7 for test randomStatetest229 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x10E7F0a6770134199e28cAD318753DfbB42f12e7)
NONCE=$((NONCE+1))

echo "Funding sender 0x727BD4D9ce17A3b60F6DC38791B39EEFC5FCCa3a for test ZeroValue_TransactionCALLwithData_OOGRevert with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x727BD4D9ce17A3b60F6DC38791B39EEFC5FCCa3a)
NONCE=$((NONCE+1))

echo "Funding sender 0xCe8Dd2538833Ed894C348b3578D2ddb7306Fd28f for test randomStatetest549 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xCe8Dd2538833Ed894C348b3578D2ddb7306Fd28f)
NONCE=$((NONCE+1))

echo "Funding sender 0x58aa8b41ab068Cab4f6C8F94759319fB947f3869 for test BLOCKHASH_Bounds with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x58aa8b41ab068Cab4f6C8F94759319fB947f3869)
NONCE=$((NONCE+1))

echo "Funding sender 0xC201168FF16c730A10e0567aD72bC7F755607fc2 for test BadStateRootTxBC with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xC201168FF16c730A10e0567aD72bC7F755607fc2)
NONCE=$((NONCE+1))

echo "Funding sender 0x4f2d2A1F65ae6306b375015e6D2B7A528eD9D5d1 for test randomStatetest223 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x4f2d2A1F65ae6306b375015e6D2B7A528eD9D5d1)
NONCE=$((NONCE+1))

echo "Funding sender 0x331fC5f2424AF2b33A1F3e8c5187AE1776875F98 for test TransactionFromCoinbaseHittingBlockGasLimit1 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x331fC5f2424AF2b33A1F3e8c5187AE1776875F98)
NONCE=$((NONCE+1))

echo "Funding sender 0x4d3595E41756DeDE07C1ED8F8fD5983b4b5E4b5f for test suicideCoinbase with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x4d3595E41756DeDE07C1ED8F8fD5983b4b5E4b5f)
NONCE=$((NONCE+1))

echo "Funding sender 0x72C9Eb26473253961Fb34b0d137739F7044F4ff8 for test randomStatetest241 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x72C9Eb26473253961Fb34b0d137739F7044F4ff8)
NONCE=$((NONCE+1))

echo "Funding sender 0xA6bF7cDf0489Cd06C35689FFE90197F79E144Aa3 for test suicideThenCheckBalance with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xA6bF7cDf0489Cd06C35689FFE90197F79E144Aa3)
NONCE=$((NONCE+1))

echo "Funding sender 0xB2Baf63fa701208169205eF5CB92B669e775a6Cf for test blockhashNonConstArg with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xB2Baf63fa701208169205eF5CB92B669e775a6Cf)
NONCE=$((NONCE+1))

echo "Funding sender 0x01501aD68D809ED61D514A4080630Ba51e5B493C for test extCodeHashOfDeletedAccount with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x01501aD68D809ED61D514A4080630Ba51e5B493C)
NONCE=$((NONCE+1))

echo "Funding sender 0x3cF33bc63e7C3f8ABcc16c31657367E4E3296c28 for test ZeroValue_TransactionCALLwithData_ToEmpty_OOGRevert_Paris with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x3cF33bc63e7C3f8ABcc16c31657367E4E3296c28)
NONCE=$((NONCE+1))

echo "Funding sender 0x9fCd92E05f97F4dE108F6c8F9D3caB64215b1dee for test randomStatetest619 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x9fCd92E05f97F4dE108F6c8F9D3caB64215b1dee)
NONCE=$((NONCE+1))

echo "Funding sender 0x3F5dF0521c824037aafa1680a69BD3050dA93305 for test optionsTest with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x3F5dF0521c824037aafa1680a69BD3050dA93305)
NONCE=$((NONCE+1))

echo "Funding sender 0xC3a8afddA23469e18bCc305cf599920D726C82a5 for test mergeExample with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xC3a8afddA23469e18bCc305cf599920D726C82a5)
NONCE=$((NONCE+1))

echo "Funding sender 0xd44fD5583E864DFc92cC8b8316270edc23288d69 for test basefeeExample with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xd44fD5583E864DFc92cC8b8316270edc23288d69)
NONCE=$((NONCE+1))

echo "Funding sender 0xDb527cc618a8e06350a1B818d3cce1e24c699B0f for test shanghaiExample with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xDb527cc618a8e06350a1B818d3cce1e24c699B0f)
NONCE=$((NONCE+1))

echo "Funding sender 0x7eDcBacfAa8e929C4a7ff3da3d00B3cBe3d14B0E for test ShanghaiLove with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x7eDcBacfAa8e929C4a7ff3da3d00B3cBe3d14B0E)
NONCE=$((NONCE+1))

echo "Funding sender 0xcB0289eC0B29B50dD22A1FE3d131f5c0410d2931 for test DelegateCallSpam with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xcB0289eC0B29B50dD22A1FE3d131f5c0410d2931)
NONCE=$((NONCE+1))

echo "Funding sender 0xB1Fde081056E464B4fc3E0aC10d974beB9824c3b for test StrangeContractCreation with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xB1Fde081056E464B4fc3E0aC10d974beB9824c3b)
NONCE=$((NONCE+1))

echo "Funding sender 0x7C76e742bdd975de814A38A0EC784398E319c610 for test SuicideIssue with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x7C76e742bdd975de814A38A0EC784398E319c610)
NONCE=$((NONCE+1))

echo "Funding sender 0x6243A20A636aAd1A6f842F778796927F2c582F85 for test BlockGasLimit2p63m1 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x6243A20A636aAd1A6f842F778796927F2c582F85)
NONCE=$((NONCE+1))

echo "Funding sender 0xe467D362AC048A361ACb6df62a56adE58b14e093 for test TransactionGasHigherThanLimit2p63m1 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xe467D362AC048A361ACb6df62a56adE58b14e093)
NONCE=$((NONCE+1))

echo "Funding sender 0x6fffb51d9F7D685ecBB2a5B9cD0F9D6e53Ba9196 for test TransactionGasHigherThanLimit2p63m1_2 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x6fffb51d9F7D685ecBB2a5B9cD0F9D6e53Ba9196)
NONCE=$((NONCE+1))

echo "Funding sender 0x1F1BA044a019052B69ec840032F652f0A633f01f for test SuicideTransaction with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x1F1BA044a019052B69ec840032F652f0A633f01f)
NONCE=$((NONCE+1))

echo "Funding sender 0xB193F2C6767B6fdE4D1A0EF4D8c465Eb818C432f for test highGasUsage with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xB193F2C6767B6fdE4D1A0EF4D8c465Eb818C432f)
NONCE=$((NONCE+1))

echo "Funding sender 0x22DAa90655e7745E7176eA416D6120a23EC6378f for test DaoTransactions_UncleExtradata with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x22DAa90655e7745E7176eA416D6120a23EC6378f)
NONCE=$((NONCE+1))

echo "Funding sender 0x3e4AEcF13F89776099E576d62401Cf719ba759A3 for test DaoTransactions with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x3e4AEcF13F89776099E576d62401Cf719ba759A3)
NONCE=$((NONCE+1))

echo "Funding sender 0x05122848b3081611895B737BD5Ec27abf79598ab for test DaoTransactions_EmptyTransactionAndForkBlocksAhead with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x05122848b3081611895B737BD5Ec27abf79598ab)
NONCE=$((NONCE+1))

echo "Funding sender 0xD54d081714bD35639C36f9423A476577a12476Dc for test DaoTransactions_XBlockm1 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xD54d081714bD35639C36f9423A476577a12476Dc)
NONCE=$((NONCE+1))

echo "Funding sender 0xD3379319f7a195926Dd4672d0E2a71495C7E32ce for test BerlinToLondonTransition with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xD3379319f7a195926Dd4672d0E2a71495C7E32ce)
NONCE=$((NONCE+1))

echo "Funding sender 0x849d37c0b4E7E7c1B98bF95e0Cc23925Cda39dEF for test EIP150Transition with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x849d37c0b4E7E7c1B98bF95e0Cc23925Cda39dEF)
NONCE=$((NONCE+1))

echo "Funding sender 0x14774ADccED361e80e94886790DBF11F3d22A616 for test blockChainFrontierWithLargerTDvsHomesteadBlockchain2 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x14774ADccED361e80e94886790DBF11F3d22A616)
NONCE=$((NONCE+1))

echo "Funding sender 0x1ACBDd7acd32E849e160f8745A6FAE3D0419c749 for test HomesteadOverrideFrontier with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x1ACBDd7acd32E849e160f8745A6FAE3D0419c749)
NONCE=$((NONCE+1))

echo "Funding sender 0xFF108305a170EC50a65cB72efDC8D3Ebc1e5c71E for test UncleFromFrontierInHomestead with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xFF108305a170EC50a65cB72efDC8D3Ebc1e5c71E)
NONCE=$((NONCE+1))

echo "Funding sender 0x75E5e32c7f35B433c3C95f33f239508b9abB4A32 for test blockChainFrontierWithLargerTDvsHomesteadBlockchain with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x75E5e32c7f35B433c3C95f33f239508b9abB4A32)
NONCE=$((NONCE+1))

echo "Funding sender 0xD2dA717603c1939FC605143790028BB8fc0C8054 for test CallContractThatCreateContractBeforeAndAfterSwitchover with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xD2dA717603c1939FC605143790028BB8fc0C8054)
NONCE=$((NONCE+1))

echo "Funding sender 0x64eB43D640Bd9D89624e8DD9e92e9Ad197494157 for test ContractCreationFailsOnHomestead with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x64eB43D640Bd9D89624e8DD9e92e9Ad197494157)
NONCE=$((NONCE+1))

echo "Funding sender 0xD7f7ca9c2c7b6A92fD97CA11f0A7b70718af0Ec3 for test UnclePopulation with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xD7f7ca9c2c7b6A92fD97CA11f0A7b70718af0Ec3)
NONCE=$((NONCE+1))

echo "Funding sender 0xBdBe7e44327BF345883A95c988F9735483f90110 for test ConstantinopleFixTransition with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xBdBe7e44327BF345883A95c988F9735483f90110)
NONCE=$((NONCE+1))

echo "Funding sender 0xBa513a156F9014db761983BFCd06DBF1CBecF866 for test powToPosTest with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xBa513a156F9014db761983BFCd06DBF1CBecF866)
NONCE=$((NONCE+1))

echo "Funding sender 0xc72919C6c18a0Cc260Ded5ca045aD0AA4E8A6e05 for test powToPosBlockRejection with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xc72919C6c18a0Cc260Ded5ca045aD0AA4E8A6e05)
NONCE=$((NONCE+1))

echo "Funding sender 0xE0808b4ec06027C80D062c4517eBD2ef6b7F67D7 for test ByzantiumTransition with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xE0808b4ec06027C80D062c4517eBD2ef6b7F67D7)
NONCE=$((NONCE+1))

echo "Funding sender 0x505bA8ea88A5bF58CCd3564d59a42440795976fC for test cancunExample with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x505bA8ea88A5bF58CCd3564d59a42440795976fC)
NONCE=$((NONCE+1))

echo "Funding sender 0xF629c85EB65943F9004C80D10E11A7DF6B405104 for test transFail with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xF629c85EB65943F9004C80D10E11A7DF6B405104)
NONCE=$((NONCE+1))

echo "Funding sender 0x45CD7AE159eF180E8956C2086Da3a883848A713d for test badUncles with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x45CD7AE159eF180E8956C2086Da3a883848A713d)
NONCE=$((NONCE+1))

echo "Funding sender 0xEbBc40a29799a362B2938e368A1BddAC55f32471 for test valCausesOOF with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xEbBc40a29799a362B2938e368A1BddAC55f32471)
NONCE=$((NONCE+1))

echo "Funding sender 0xE2107854989d32A6e6dD5bf81D92Cc44eF027D5d for test baseFee with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xE2107854989d32A6e6dD5bf81D92Cc44eF027D5d)
NONCE=$((NONCE+1))

echo "Funding sender 0xF32e0d5bD2a6FFaDB7a24aD7f739a82009942bD1 for test intrinsicOrFail with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xF32e0d5bD2a6FFaDB7a24aD7f739a82009942bD1)
NONCE=$((NONCE+1))

echo "Funding sender 0x387b9e1cb5fE167ef39Ec3A4f82f2ac61b98a008 for test checkGasLimit with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x387b9e1cb5fE167ef39Ec3A4f82f2ac61b98a008)
NONCE=$((NONCE+1))

echo "Funding sender 0x1D18623d059E9939533f675AB440E7AC7011378f for test feeCap with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x1D18623d059E9939533f675AB440E7AC7011378f)
NONCE=$((NONCE+1))

echo "Funding sender 0xaC0E99610842347F229d7D8b3fc75cd46e4a0E75 for test transactionFromSelfDestructedContract with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xaC0E99610842347F229d7D8b3fc75cd46e4a0E75)
NONCE=$((NONCE+1))

echo "Funding sender 0xe280e303Bdc95Cd32436f5066B8299371C93FD55 for test warmup with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xe280e303Bdc95Cd32436f5066B8299371C93FD55)
NONCE=$((NONCE+1))

echo "Funding sender 0x83e8a24beBF9C536311E825bB76B0380C375Bb67 for test timestampPerBlock with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x83e8a24beBF9C536311E825bB76B0380C375Bb67)
NONCE=$((NONCE+1))

echo "Funding sender 0x7Fb15842d6b378b4b5F70383E22969696704Ba31 for test medDemand with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x7Fb15842d6b378b4b5F70383E22969696704Ba31)
NONCE=$((NONCE+1))

echo "Funding sender 0x691aD5d0dFA7f0A128be28384F33ba086E74eF77 for test highDemand with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x691aD5d0dFA7f0A128be28384F33ba086E74eF77)
NONCE=$((NONCE+1))

echo "Funding sender 0xEC0E53741A80fcde833D59fbEBC9d3bA22718637 for test tips with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xEC0E53741A80fcde833D59fbEBC9d3bA22718637)
NONCE=$((NONCE+1))

echo "Funding sender 0x5569c36E876B8dC1eE7B5E70a5aB1df70328DCCa for test burnVerify with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x5569c36E876B8dC1eE7B5E70a5aB1df70328DCCa)
NONCE=$((NONCE+1))

echo "Funding sender 0x48Be207588FF1604fd08cC27b3853409426b70e0 for test intrinsic with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x48Be207588FF1604fd08cC27b3853409426b70e0)
NONCE=$((NONCE+1))

echo "Funding sender 0x3Ba1eaaE52AF83e2478aaD5472aF100eD5899948 for test lowDemand with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x3Ba1eaaE52AF83e2478aaD5472aF100eD5899948)
NONCE=$((NONCE+1))

echo "Funding sender 0x5D64DD82d21af319b1CcAEC5eBA3A0762bCB3D72 for test intrinsicTip with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x5D64DD82d21af319b1CcAEC5eBA3A0762bCB3D72)
NONCE=$((NONCE+1))

echo "Funding sender 0x87dEcBbd49Ac068cFd95aa150fA76ff215ceC1BB for test transType with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x87dEcBbd49Ac068cFd95aa150fA76ff215ceC1BB)
NONCE=$((NONCE+1))

echo "Funding sender 0xc67f23971556a2D66b1e7d66C168B556b66791D6 for test reentrencySuicide with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xc67f23971556a2D66b1e7d66C168B556b66791D6)
NONCE=$((NONCE+1))

echo "Funding sender 0x710530C91CEA0133ceFE2917117810e85C1C2Ce6 for test emptyPostTransfer with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x710530C91CEA0133ceFE2917117810e85C1C2Ce6)
NONCE=$((NONCE+1))

echo "Funding sender 0x62EDa390e2C27626E7C4cfd6f1CbC27371e912e8 for test eip2930 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x62EDa390e2C27626E7C4cfd6f1CbC27371e912e8)
NONCE=$((NONCE+1))

echo "Funding sender 0x55af44815790005322a98596FD4f312A51b301e6 for test testOpcode_00 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x55af44815790005322a98596FD4f312A51b301e6)
NONCE=$((NONCE+1))

echo "Funding sender 0xe35977E5175b5a3D61E6dcDDa7da5B28B1Fa4C6B for test testOpcode_01 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xe35977E5175b5a3D61E6dcDDa7da5B28B1Fa4C6B)
NONCE=$((NONCE+1))

echo "Funding sender 0xB3a9E6c0F2Fa194Bf0350Df000356EC4365De0cC for test testOpcode_02 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xB3a9E6c0F2Fa194Bf0350Df000356EC4365De0cC)
NONCE=$((NONCE+1))

echo "Funding sender 0x5BC7D2066d8E832D3814c79D0be12B0De28D6d4B for test testOpcode_03 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x5BC7D2066d8E832D3814c79D0be12B0De28D6d4B)
NONCE=$((NONCE+1))

echo "Funding sender 0xb1fb2327321cDF801e444f8d208d46Db0912BBaf for test testOpcode_04 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xb1fb2327321cDF801e444f8d208d46Db0912BBaf)
NONCE=$((NONCE+1))

echo "Funding sender 0x3C921e1F93d8c7fD5B3CA9cbb0c1e2b7ce341bad for test testOpcode_05 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x3C921e1F93d8c7fD5B3CA9cbb0c1e2b7ce341bad)
NONCE=$((NONCE+1))

echo "Funding sender 0xf7cf9430DE706E35Eb31832891763a2a5f6de0b8 for test testOpcode_06 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xf7cf9430DE706E35Eb31832891763a2a5f6de0b8)
NONCE=$((NONCE+1))

echo "Funding sender 0x25EbAcf247DA9068E87F0a6c9C99956B52F65d3D for test testOpcode_07 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x25EbAcf247DA9068E87F0a6c9C99956B52F65d3D)
NONCE=$((NONCE+1))

echo "Funding sender 0x3384D39bb82b1D8101001B08e6ec3A706E835449 for test testOpcode_08 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x3384D39bb82b1D8101001B08e6ec3A706E835449)
NONCE=$((NONCE+1))

echo "Funding sender 0x8Ee4e445c1FF75CA82A2F0Ab32F926a316F524A7 for test testOpcode_09 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x8Ee4e445c1FF75CA82A2F0Ab32F926a316F524A7)
NONCE=$((NONCE+1))

echo "Funding sender 0x4bA023A7a3A15FFf6B120EecAE980a5e4fA1ecA2 for test testOpcode_0a with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x4bA023A7a3A15FFf6B120EecAE980a5e4fA1ecA2)
NONCE=$((NONCE+1))

echo "Funding sender 0x6497fD67859BA9f5cBf2Bdf1F304bBd5A73C5a5C for test testOpcode_0b with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x6497fD67859BA9f5cBf2Bdf1F304bBd5A73C5a5C)
NONCE=$((NONCE+1))

echo "Funding sender 0x2df883eb99121D9ac02D8A3D480B349315B3a589 for test testOpcode_0c with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x2df883eb99121D9ac02D8A3D480B349315B3a589)
NONCE=$((NONCE+1))

echo "Funding sender 0x7453Ce2fC4441b270DAb62945Ef1ff4E97B3c7bd for test testOpcode_0d with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x7453Ce2fC4441b270DAb62945Ef1ff4E97B3c7bd)
NONCE=$((NONCE+1))

echo "Funding sender 0x956b34A10bE685CDE306AFE1A6f3BfA0dcEf61A0 for test testOpcode_0e with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x956b34A10bE685CDE306AFE1A6f3BfA0dcEf61A0)
NONCE=$((NONCE+1))

echo "Funding sender 0x970FabADedC3DBeB97907f3B8B73E94f5041A037 for test testOpcode_0f with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x970FabADedC3DBeB97907f3B8B73E94f5041A037)
NONCE=$((NONCE+1))

echo "Funding sender 0x7Df1f3b6fe2d776F7d7A9DF50edb0422958EB71e for test testOpcode_30 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x7Df1f3b6fe2d776F7d7A9DF50edb0422958EB71e)
NONCE=$((NONCE+1))

echo "Funding sender 0x2556765A15A529c11908FBE3dD87f3c6616366BA for test testOpcode_31 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x2556765A15A529c11908FBE3dD87f3c6616366BA)
NONCE=$((NONCE+1))

echo "Funding sender 0x73E1AbF7e829B9583352C87737501cb4064Afc60 for test testOpcode_32 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x73E1AbF7e829B9583352C87737501cb4064Afc60)
NONCE=$((NONCE+1))

echo "Funding sender 0x464e19a94E5347e58a0D0c6300D64E322313f4f2 for test testOpcode_33 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x464e19a94E5347e58a0D0c6300D64E322313f4f2)
NONCE=$((NONCE+1))

echo "Funding sender 0x994fDD9F619b2530783Fcf4e649a3f6f8Def5296 for test testOpcode_34 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x994fDD9F619b2530783Fcf4e649a3f6f8Def5296)
NONCE=$((NONCE+1))

echo "Funding sender 0x0BB2247311182fC8d2Ea9f883729a1930C6a4CeE for test testOpcode_35 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x0BB2247311182fC8d2Ea9f883729a1930C6a4CeE)
NONCE=$((NONCE+1))

echo "Funding sender 0x456B5A7903a26ba629768CC8ADf413c2196dDD73 for test testOpcode_36 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x456B5A7903a26ba629768CC8ADf413c2196dDD73)
NONCE=$((NONCE+1))

echo "Funding sender 0x5b79A86D8c77901A3a131D20247eEB63faA15B22 for test testOpcode_37 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x5b79A86D8c77901A3a131D20247eEB63faA15B22)
NONCE=$((NONCE+1))

echo "Funding sender 0x840f19526cAe85F84162d348Ac456ba7BD89f180 for test testOpcode_38 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x840f19526cAe85F84162d348Ac456ba7BD89f180)
NONCE=$((NONCE+1))

echo "Funding sender 0xaa99D5Ec66C065Bc125913b50B0813d440F58657 for test testOpcode_39 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xaa99D5Ec66C065Bc125913b50B0813d440F58657)
NONCE=$((NONCE+1))

echo "Funding sender 0x4eEC6D203eBe4D9421762f3fC48b611283B38449 for test testOpcode_3a with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x4eEC6D203eBe4D9421762f3fC48b611283B38449)
NONCE=$((NONCE+1))

echo "Funding sender 0x8277D6162EFbe1cF72FE66F281a68969611C64e0 for test testOpcode_3b with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x8277D6162EFbe1cF72FE66F281a68969611C64e0)
NONCE=$((NONCE+1))

echo "Funding sender 0x5B1Ab6c4BC6BDeAFc68bC55C161522D27A6212A9 for test testOpcode_3c with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x5B1Ab6c4BC6BDeAFc68bC55C161522D27A6212A9)
NONCE=$((NONCE+1))

echo "Funding sender 0x86dd1F9d56DE2b1e6D2A10f09945480A757fA894 for test testOpcode_3d with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x86dd1F9d56DE2b1e6D2A10f09945480A757fA894)
NONCE=$((NONCE+1))

echo "Funding sender 0x02BCA2ea7F54990C43636A41df7bC3439494a636 for test testOpcode_3e with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x02BCA2ea7F54990C43636A41df7bC3439494a636)
NONCE=$((NONCE+1))

echo "Funding sender 0x665dA751370149764BcF1Da22288f306036A768a for test testOpcode_3f with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x665dA751370149764BcF1Da22288f306036A768a)
NONCE=$((NONCE+1))

echo "Funding sender 0x951dffc4662587763f09E97C32F6Be1c35FB50B6 for test testOpcode_b0 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x951dffc4662587763f09E97C32F6Be1c35FB50B6)
NONCE=$((NONCE+1))

echo "Funding sender 0xC0bB0d81631e3BE03f3F2Dc7c5C940f808D434a2 for test testOpcode_b1 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xC0bB0d81631e3BE03f3F2Dc7c5C940f808D434a2)
NONCE=$((NONCE+1))

echo "Funding sender 0xD0CF9b339af6397C0e78b5BD61c54EFf88442230 for test testOpcode_b2 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xD0CF9b339af6397C0e78b5BD61c54EFf88442230)
NONCE=$((NONCE+1))

echo "Funding sender 0xA5b1dcd058a27bC2cb64E4801579A05d4c305C3E for test testOpcode_b3 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xA5b1dcd058a27bC2cb64E4801579A05d4c305C3E)
NONCE=$((NONCE+1))

echo "Funding sender 0xDAd6308535F803c2fdcBcaC9D0bAe71D95e29E71 for test testOpcode_b4 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xDAd6308535F803c2fdcBcaC9D0bAe71D95e29E71)
NONCE=$((NONCE+1))

echo "Funding sender 0x5497D64FE8A1f1E56A900d48aa4DaD4BF40cDE78 for test testOpcode_b5 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x5497D64FE8A1f1E56A900d48aa4DaD4BF40cDE78)
NONCE=$((NONCE+1))

echo "Funding sender 0xf04Fbd0E65711A1f1F00D1822d189c36b066DCa9 for test testOpcode_b6 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xf04Fbd0E65711A1f1F00D1822d189c36b066DCa9)
NONCE=$((NONCE+1))

echo "Funding sender 0x4A4E7371987a54140Bc670e76085c096d4ab3fC9 for test testOpcode_b7 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x4A4E7371987a54140Bc670e76085c096d4ab3fC9)
NONCE=$((NONCE+1))

echo "Funding sender 0xAC0eE7A9A93e9c03f515aF0C100Df835E15BBC36 for test testOpcode_b8 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xAC0eE7A9A93e9c03f515aF0C100Df835E15BBC36)
NONCE=$((NONCE+1))

echo "Funding sender 0x70AE6074482E789b8cE8196c37546a684d8935Ea for test testOpcode_b9 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x70AE6074482E789b8cE8196c37546a684d8935Ea)
NONCE=$((NONCE+1))

echo "Funding sender 0x8860A6961e7f4Dbcf7fbe0d46D949C0A428f496F for test testOpcode_ba with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x8860A6961e7f4Dbcf7fbe0d46D949C0A428f496F)
NONCE=$((NONCE+1))

echo "Funding sender 0xd9F54f8421fD89c1Cd3dE80Cca73BA85C23cDfC2 for test testOpcode_bb with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xd9F54f8421fD89c1Cd3dE80Cca73BA85C23cDfC2)
NONCE=$((NONCE+1))

echo "Funding sender 0x5e5075311F4e5d28A6a8a217a72CA7518043F1b5 for test testOpcode_bc with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x5e5075311F4e5d28A6a8a217a72CA7518043F1b5)
NONCE=$((NONCE+1))

echo "Funding sender 0x74504461E6FdB0d6c33e480Af48faA5dF6C522DA for test testOpcode_bd with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x74504461E6FdB0d6c33e480Af48faA5dF6C522DA)
NONCE=$((NONCE+1))

echo "Funding sender 0x93cD5B43e36900c688e33A5C185ca931Fc4594bD for test testOpcode_be with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x93cD5B43e36900c688e33A5C185ca931Fc4594bD)
NONCE=$((NONCE+1))

echo "Funding sender 0xc964D29c76246e11b9199384dE2C6FB1c42452F3 for test testOpcode_bf with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xc964D29c76246e11b9199384dE2C6FB1c42452F3)
NONCE=$((NONCE+1))

echo "Funding sender 0xBBA43C66D8A0e7E44b4B5096f562eD889e9012a0 for test testOpcode_60 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xBBA43C66D8A0e7E44b4B5096f562eD889e9012a0)
NONCE=$((NONCE+1))

echo "Funding sender 0x608F3B445927Fae54b3D647a44dFb375771e56dA for test testOpcode_61 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x608F3B445927Fae54b3D647a44dFb375771e56dA)
NONCE=$((NONCE+1))

echo "Funding sender 0xFeE0C66424B68b209De16bCD5d1655f9c51eC744 for test testOpcode_62 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xFeE0C66424B68b209De16bCD5d1655f9c51eC744)
NONCE=$((NONCE+1))

echo "Funding sender 0x158edf2cEb0C893E2dfE769eA24a5552Ce7173Db for test testOpcode_63 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x158edf2cEb0C893E2dfE769eA24a5552Ce7173Db)
NONCE=$((NONCE+1))

echo "Funding sender 0xcDf112e4f3e614Bba961B68B8b3EC31114189DdD for test testOpcode_64 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xcDf112e4f3e614Bba961B68B8b3EC31114189DdD)
NONCE=$((NONCE+1))

echo "Funding sender 0x6f994F18E2f8Cb162728AE954F90A27Afda6996F for test testOpcode_65 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x6f994F18E2f8Cb162728AE954F90A27Afda6996F)
NONCE=$((NONCE+1))

echo "Funding sender 0x96D804fEfb545A88409706039c67129A8533404E for test testOpcode_66 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x96D804fEfb545A88409706039c67129A8533404E)
NONCE=$((NONCE+1))

echo "Funding sender 0x9611679b95A697d9B37edd79F5Ae2a21CCAFb1A5 for test testOpcode_67 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x9611679b95A697d9B37edd79F5Ae2a21CCAFb1A5)
NONCE=$((NONCE+1))

echo "Funding sender 0x3f5c1693BcA7C8515060c36CE9828849a0954413 for test testOpcode_68 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x3f5c1693BcA7C8515060c36CE9828849a0954413)
NONCE=$((NONCE+1))

echo "Funding sender 0xb98a13E34b62E38Bfd92d73FD6D04Cf4F49b022B for test testOpcode_69 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xb98a13E34b62E38Bfd92d73FD6D04Cf4F49b022B)
NONCE=$((NONCE+1))

echo "Funding sender 0x34Ea7BDe7a18D940A9e70eb58176e5C487A1ED7a for test testOpcode_6a with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x34Ea7BDe7a18D940A9e70eb58176e5C487A1ED7a)
NONCE=$((NONCE+1))

echo "Funding sender 0x5571F068DDC955776D69F1FE397ed01DF5523345 for test testOpcode_6b with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x5571F068DDC955776D69F1FE397ed01DF5523345)
NONCE=$((NONCE+1))

echo "Funding sender 0xe3758f17cf7b573d54c0214F93015C164e79e6c8 for test testOpcode_6c with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xe3758f17cf7b573d54c0214F93015C164e79e6c8)
NONCE=$((NONCE+1))

echo "Funding sender 0xD497aeF18914A7d299dF696006Af44CE7BB9FE20 for test testOpcode_6d with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xD497aeF18914A7d299dF696006Af44CE7BB9FE20)
NONCE=$((NONCE+1))

echo "Funding sender 0x9621Ce3a68Bf5033f248d90Eb1E084f41e8D3e15 for test testOpcode_6e with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x9621Ce3a68Bf5033f248d90Eb1E084f41e8D3e15)
NONCE=$((NONCE+1))

echo "Funding sender 0x8Fc2EeEAeE6d31A0Eb88d92d65ff5C0d34d09918 for test testOpcode_6f with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x8Fc2EeEAeE6d31A0Eb88d92d65ff5C0d34d09918)
NONCE=$((NONCE+1))

echo "Funding sender 0x58eC4243bBEF346ab616a861Cf5A433Dbc6B72F4 for test testOpcode_90 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x58eC4243bBEF346ab616a861Cf5A433Dbc6B72F4)
NONCE=$((NONCE+1))

echo "Funding sender 0x3547606d53cc26bd0D6c57e4d6C4472Eb61f0ab2 for test testOpcode_91 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x3547606d53cc26bd0D6c57e4d6C4472Eb61f0ab2)
NONCE=$((NONCE+1))

echo "Funding sender 0xb5558947E5e2DBC1194C58a98B64f9004C18Cdbf for test testOpcode_92 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xb5558947E5e2DBC1194C58a98B64f9004C18Cdbf)
NONCE=$((NONCE+1))

echo "Funding sender 0x575f700a85D73886D10CDF164b2985423cbede85 for test testOpcode_93 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x575f700a85D73886D10CDF164b2985423cbede85)
NONCE=$((NONCE+1))

echo "Funding sender 0xa87dE8361A9529EEBb9002E741181De7FC646EBB for test testOpcode_94 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xa87dE8361A9529EEBb9002E741181De7FC646EBB)
NONCE=$((NONCE+1))

echo "Funding sender 0x27e7116C4d47b6980391CF69339B1f0f1238CAAF for test testOpcode_95 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x27e7116C4d47b6980391CF69339B1f0f1238CAAF)
NONCE=$((NONCE+1))

echo "Funding sender 0x62C5C9feB6B4182dD11e046fB64092Ee4d135741 for test testOpcode_96 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x62C5C9feB6B4182dD11e046fB64092Ee4d135741)
NONCE=$((NONCE+1))

echo "Funding sender 0x7FdB0cB10F5d43BD8436933c1f0B71E43720D53E for test testOpcode_97 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x7FdB0cB10F5d43BD8436933c1f0B71E43720D53E)
NONCE=$((NONCE+1))

echo "Funding sender 0x82674170dD8592fE2e6Cfad48241904c8518aFF5 for test testOpcode_98 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x82674170dD8592fE2e6Cfad48241904c8518aFF5)
NONCE=$((NONCE+1))

echo "Funding sender 0x0ADf6bF8fC43F4225583C16B6c15BB5796569674 for test testOpcode_99 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x0ADf6bF8fC43F4225583C16B6c15BB5796569674)
NONCE=$((NONCE+1))

echo "Funding sender 0xb7Ae8f209b20E13Ce4b39868c8CA668661c44df0 for test testOpcode_9a with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xb7Ae8f209b20E13Ce4b39868c8CA668661c44df0)
NONCE=$((NONCE+1))

echo "Funding sender 0x65889Cd9F8C401F5b210fd19A43c39Cf7b5B51C6 for test testOpcode_9b with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x65889Cd9F8C401F5b210fd19A43c39Cf7b5B51C6)
NONCE=$((NONCE+1))

echo "Funding sender 0x9349eFD01D1Cf64911fd4a129dB2da66dA975C0A for test testOpcode_9c with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x9349eFD01D1Cf64911fd4a129dB2da66dA975C0A)
NONCE=$((NONCE+1))

echo "Funding sender 0x7E89b7e09723e8DEDE214042c893608bFfa0093B for test testOpcode_9d with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x7E89b7e09723e8DEDE214042c893608bFfa0093B)
NONCE=$((NONCE+1))

echo "Funding sender 0x9c99163e7933a0bfa2c4e27b2efd1a5431c231DE for test testOpcode_9e with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x9c99163e7933a0bfa2c4e27b2efd1a5431c231DE)
NONCE=$((NONCE+1))

echo "Funding sender 0x1B56A19D1Ae416439412CC0359Fd7e0A5beb2668 for test testOpcode_9f with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x1B56A19D1Ae416439412CC0359Fd7e0A5beb2668)
NONCE=$((NONCE+1))

echo "Funding sender 0x65370254D21128FC3bC2BA834d2ab13545744db0 for test testOpcode_40 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x65370254D21128FC3bC2BA834d2ab13545744db0)
NONCE=$((NONCE+1))

echo "Funding sender 0x2e5bA5AaA36F691fAC6977f343A64c0661E9bF7c for test testOpcode_41 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x2e5bA5AaA36F691fAC6977f343A64c0661E9bF7c)
NONCE=$((NONCE+1))

echo "Funding sender 0x462264daE59B98b8d860d04929b6675e6DA114e9 for test testOpcode_42 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x462264daE59B98b8d860d04929b6675e6DA114e9)
NONCE=$((NONCE+1))

echo "Funding sender 0x7210338Fefc381BC49b0324d4c929b480F9492ED for test testOpcode_43 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x7210338Fefc381BC49b0324d4c929b480F9492ED)
NONCE=$((NONCE+1))

echo "Funding sender 0x54a67D3269AAE1fC61B266a71F5F963E637b3D5B for test testOpcode_44 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x54a67D3269AAE1fC61B266a71F5F963E637b3D5B)
NONCE=$((NONCE+1))

echo "Funding sender 0x848bf19ABEb5ebaC22EAf0F7022c67d6e8e6e023 for test testOpcode_45 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x848bf19ABEb5ebaC22EAf0F7022c67d6e8e6e023)
NONCE=$((NONCE+1))

echo "Funding sender 0x33270d0F0A9F7428b969F66E77F9633992E9a0B3 for test testOpcode_46 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x33270d0F0A9F7428b969F66E77F9633992E9a0B3)
NONCE=$((NONCE+1))

echo "Funding sender 0xc740314097c7EA98F416d837F318Adbd7EC1ce3b for test testOpcode_47 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xc740314097c7EA98F416d837F318Adbd7EC1ce3b)
NONCE=$((NONCE+1))

echo "Funding sender 0xFd292962dad5C2d0f9c3FdE643BfBab9b7b7e359 for test testOpcode_48 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xFd292962dad5C2d0f9c3FdE643BfBab9b7b7e359)
NONCE=$((NONCE+1))

echo "Funding sender 0x7Ee57565B59eBA48eCA756b6EE66B45Df975D30b for test testOpcode_49 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x7Ee57565B59eBA48eCA756b6EE66B45Df975D30b)
NONCE=$((NONCE+1))

echo "Funding sender 0x064627481f9f3F81Efe644637D7747676d6f311F for test testOpcode_4a with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x064627481f9f3F81Efe644637D7747676d6f311F)
NONCE=$((NONCE+1))

echo "Funding sender 0x1503F120287889C82b14e41cCe70F644Bc9a979b for test testOpcode_4b with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x1503F120287889C82b14e41cCe70F644Bc9a979b)
NONCE=$((NONCE+1))

echo "Funding sender 0x620d16324a162A4fdBD77d7767bd9aCf8B2E78E0 for test testOpcode_4c with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x620d16324a162A4fdBD77d7767bd9aCf8B2E78E0)
NONCE=$((NONCE+1))

echo "Funding sender 0x5b1992d012c23f50DDdcf6Bddd96F15A31a17fBb for test testOpcode_4d with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x5b1992d012c23f50DDdcf6Bddd96F15A31a17fBb)
NONCE=$((NONCE+1))

echo "Funding sender 0x1f777fd038F5c50149B038c7801ea179b867E7e8 for test testOpcode_4e with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x1f777fd038F5c50149B038c7801ea179b867E7e8)
NONCE=$((NONCE+1))

echo "Funding sender 0xE2c00aD59Bb2Ab1E078A8Ce82a614a9F2DB28625 for test testOpcode_4f with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xE2c00aD59Bb2Ab1E078A8Ce82a614a9F2DB28625)
NONCE=$((NONCE+1))

echo "Funding sender 0xe532C7f1A5Cd17Ada859be90cd7F84D5cd8ac58C for test testOpcode_10 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xe532C7f1A5Cd17Ada859be90cd7F84D5cd8ac58C)
NONCE=$((NONCE+1))

echo "Funding sender 0x20EA871c5a7930882A2113372e9727c54359d723 for test testOpcode_11 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x20EA871c5a7930882A2113372e9727c54359d723)
NONCE=$((NONCE+1))

echo "Funding sender 0x2085746143a438a4979eB100494CE3d630f0C827 for test testOpcode_12 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x2085746143a438a4979eB100494CE3d630f0C827)
NONCE=$((NONCE+1))

echo "Funding sender 0x990ba376b7F88aF2D6d9fEBC3C34A11f1F376F4A for test testOpcode_13 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x990ba376b7F88aF2D6d9fEBC3C34A11f1F376F4A)
NONCE=$((NONCE+1))

echo "Funding sender 0xC81f7689cCBF503aA336A6D8EfBbB32fff774f7b for test testOpcode_14 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xC81f7689cCBF503aA336A6D8EfBbB32fff774f7b)
NONCE=$((NONCE+1))

echo "Funding sender 0xF95073506802BcaE795933DFC4BbDf0dfdF44eCf for test testOpcode_15 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xF95073506802BcaE795933DFC4BbDf0dfdF44eCf)
NONCE=$((NONCE+1))

echo "Funding sender 0x47c4ae224a04b223a916cA2d2bb9c07e96DCE180 for test testOpcode_16 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x47c4ae224a04b223a916cA2d2bb9c07e96DCE180)
NONCE=$((NONCE+1))

echo "Funding sender 0x5B35e495312D632c0BE13ce367F610a95f23D41d for test testOpcode_17 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x5B35e495312D632c0BE13ce367F610a95f23D41d)
NONCE=$((NONCE+1))

echo "Funding sender 0xD91857fdc6f02f389133f128A41491318a954154 for test testOpcode_18 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xD91857fdc6f02f389133f128A41491318a954154)
NONCE=$((NONCE+1))

echo "Funding sender 0xd0138C0A8b6681015eFDefb2c5Bea50F2fD778d9 for test testOpcode_19 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xd0138C0A8b6681015eFDefb2c5Bea50F2fD778d9)
NONCE=$((NONCE+1))

echo "Funding sender 0xe9BC8d5529cE4B415bFb45102830dc37aF17e656 for test testOpcode_1a with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xe9BC8d5529cE4B415bFb45102830dc37aF17e656)
NONCE=$((NONCE+1))

echo "Funding sender 0xD3414837ac4179212e11FfFD35D4C8D9c47cC0A8 for test testOpcode_1b with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xD3414837ac4179212e11FfFD35D4C8D9c47cC0A8)
NONCE=$((NONCE+1))

echo "Funding sender 0x6C2cc1b90AB22E4de1C0604b1c14db555112dB61 for test testOpcode_1c with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x6C2cc1b90AB22E4de1C0604b1c14db555112dB61)
NONCE=$((NONCE+1))

echo "Funding sender 0x53aD7FF929bD7aBfFDd5b215A3D65D11566d0127 for test testOpcode_1d with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x53aD7FF929bD7aBfFDd5b215A3D65D11566d0127)
NONCE=$((NONCE+1))

echo "Funding sender 0xc031476809D785308Db6Ec09ed4422e6B9bE3915 for test testOpcode_1e with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xc031476809D785308Db6Ec09ed4422e6B9bE3915)
NONCE=$((NONCE+1))

echo "Funding sender 0x48F0D0080c0df6E88C67715B5Dd3A55EE08455D8 for test testOpcode_1f with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x48F0D0080c0df6E88C67715B5Dd3A55EE08455D8)
NONCE=$((NONCE+1))

echo "Funding sender 0x64008F02a8CE137B6c4DcB0F8Fe9C78B1a569Efe for test testOpcode_f0 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x64008F02a8CE137B6c4DcB0F8Fe9C78B1a569Efe)
NONCE=$((NONCE+1))

echo "Funding sender 0x3180765779F425da43B51c52a341e773c5e95643 for test testOpcode_f1 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x3180765779F425da43B51c52a341e773c5e95643)
NONCE=$((NONCE+1))

echo "Funding sender 0x1D1485145D79F249c4634358638691311fB6d14E for test testOpcode_f2 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x1D1485145D79F249c4634358638691311fB6d14E)
NONCE=$((NONCE+1))

echo "Funding sender 0x922Be25fD3666832B1C1FeEC5e60231061E011F8 for test testOpcode_f3 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x922Be25fD3666832B1C1FeEC5e60231061E011F8)
NONCE=$((NONCE+1))

echo "Funding sender 0x92451B630EC9BFbf6381E14B270041945BB6c906 for test testOpcode_f4 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x92451B630EC9BFbf6381E14B270041945BB6c906)
NONCE=$((NONCE+1))

echo "Funding sender 0x0Fc6A05FCf6e4f9dF7e4F78087A998356b947B6F for test testOpcode_f5 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x0Fc6A05FCf6e4f9dF7e4F78087A998356b947B6F)
NONCE=$((NONCE+1))

echo "Funding sender 0x1Bcb91f3ca76acA9cb09632640380B2b64Ad72A6 for test testOpcode_f6 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x1Bcb91f3ca76acA9cb09632640380B2b64Ad72A6)
NONCE=$((NONCE+1))

echo "Funding sender 0x801C6529b7b90081c79B9F85f2000F80491Ce257 for test testOpcode_f7 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x801C6529b7b90081c79B9F85f2000F80491Ce257)
NONCE=$((NONCE+1))

echo "Funding sender 0x58c02C38Dc75a9ea6B0e03AE0aEADa8F79543E6f for test testOpcode_f8 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x58c02C38Dc75a9ea6B0e03AE0aEADa8F79543E6f)
NONCE=$((NONCE+1))

echo "Funding sender 0x21DBEa9B1046823D02EBc9636385964C40665282 for test testOpcode_f9 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x21DBEa9B1046823D02EBc9636385964C40665282)
NONCE=$((NONCE+1))

echo "Funding sender 0xA25B99285B2b07aBAd443538Cb99c096476648a0 for test testOpcode_fa with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xA25B99285B2b07aBAd443538Cb99c096476648a0)
NONCE=$((NONCE+1))

echo "Funding sender 0x757E5A87a6D9EED393eC800080922379A65F1994 for test testOpcode_fb with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x757E5A87a6D9EED393eC800080922379A65F1994)
NONCE=$((NONCE+1))

echo "Funding sender 0x325db4e67f9eEEe90078E04531b3BA84722c2373 for test testOpcode_fc with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x325db4e67f9eEEe90078E04531b3BA84722c2373)
NONCE=$((NONCE+1))

echo "Funding sender 0xcA992c2f52Cb025DDC229e4CC4e0Ab83Ee84Faf3 for test testOpcode_fd with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xcA992c2f52Cb025DDC229e4CC4e0Ab83Ee84Faf3)
NONCE=$((NONCE+1))

echo "Funding sender 0x95AC1bcF19cb27b8fF2f7217663058912B7d69C7 for test testOpcode_fe with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x95AC1bcF19cb27b8fF2f7217663058912B7d69C7)
NONCE=$((NONCE+1))

echo "Funding sender 0xEc509E6D7BfE8bDf48366d3124C2F20D4C6811fE for test testOpcode_ff with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xEc509E6D7BfE8bDf48366d3124C2F20D4C6811fE)
NONCE=$((NONCE+1))

echo "Funding sender 0xf11F84336b2B73CDD4BDB4545907533D12768766 for test selfdestructBalance with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xf11F84336b2B73CDD4BDB4545907533D12768766)
NONCE=$((NONCE+1))

echo "Funding sender 0x324Ff04C4DC0391a13ad546FDCb34d2C5EE2B3Fa for test testOpcode_50 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x324Ff04C4DC0391a13ad546FDCb34d2C5EE2B3Fa)
NONCE=$((NONCE+1))

echo "Funding sender 0xB2C5bEaCE857c21cB4eEAee67eB725d7B9463EC1 for test testOpcode_51 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xB2C5bEaCE857c21cB4eEAee67eB725d7B9463EC1)
NONCE=$((NONCE+1))

echo "Funding sender 0x41a61d409234db2D97e4486439423dF742Dfca68 for test testOpcode_52 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x41a61d409234db2D97e4486439423dF742Dfca68)
NONCE=$((NONCE+1))

echo "Funding sender 0xcE54dD4F06B52775206a28afbAD003dC8b52e7dD for test testOpcode_53 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xcE54dD4F06B52775206a28afbAD003dC8b52e7dD)
NONCE=$((NONCE+1))

echo "Funding sender 0x111EEfA720414C5529ddc12314997fbdaBbdc28B for test testOpcode_54 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x111EEfA720414C5529ddc12314997fbdaBbdc28B)
NONCE=$((NONCE+1))

echo "Funding sender 0xeA9d4f4ed4e8921c4Ad9BD5474062b4a340bC414 for test testOpcode_55 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xeA9d4f4ed4e8921c4Ad9BD5474062b4a340bC414)
NONCE=$((NONCE+1))

echo "Funding sender 0xc70f40eb633668DC0d4E460118e0F09F2EeF395C for test testOpcode_56 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xc70f40eb633668DC0d4E460118e0F09F2EeF395C)
NONCE=$((NONCE+1))

echo "Funding sender 0x13B45D46EbBa30DD384f26892c6C49129F4e4fC1 for test testOpcode_57 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x13B45D46EbBa30DD384f26892c6C49129F4e4fC1)
NONCE=$((NONCE+1))

echo "Funding sender 0x69d4b0Fe76eF6B542e54AdA95E1A3e25e876d6E1 for test testOpcode_58 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x69d4b0Fe76eF6B542e54AdA95E1A3e25e876d6E1)
NONCE=$((NONCE+1))

echo "Funding sender 0xcF50cBC768Ea14281954Ef689fa8aA73d04E0f3f for test testOpcode_59 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xcF50cBC768Ea14281954Ef689fa8aA73d04E0f3f)
NONCE=$((NONCE+1))

echo "Funding sender 0xE6741376bCD77F01e3Fee740Ad8e714D643c279d for test testOpcode_5a with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xE6741376bCD77F01e3Fee740Ad8e714D643c279d)
NONCE=$((NONCE+1))

echo "Funding sender 0x2c332aCA95b29cAb52EBcC575DDdF4180d08EE3c for test testOpcode_5b with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x2c332aCA95b29cAb52EBcC575DDdF4180d08EE3c)
NONCE=$((NONCE+1))

echo "Funding sender 0x932A8E1708693434F1f4d7a9D4BB440013e951A2 for test testOpcode_5c with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x932A8E1708693434F1f4d7a9D4BB440013e951A2)
NONCE=$((NONCE+1))

echo "Funding sender 0xbE034fdf28046A474A20e668Fe38f2a759eE317F for test testOpcode_5d with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xbE034fdf28046A474A20e668Fe38f2a759eE317F)
NONCE=$((NONCE+1))

echo "Funding sender 0x6FC4cC9BD4dD891b16dC71e1A9DEb94fDe193c01 for test testOpcode_5e with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x6FC4cC9BD4dD891b16dC71e1A9DEb94fDe193c01)
NONCE=$((NONCE+1))

echo "Funding sender 0x05964b5a0D4A71e162615E4f390f57922581F3dA for test testOpcode_5f with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x05964b5a0D4A71e162615E4f390f57922581F3dA)
NONCE=$((NONCE+1))

echo "Funding sender 0x4e7C6e45Ceb10fEace139DDFF9370a9d8AF254B6 for test random with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x4e7C6e45Ceb10fEace139DDFF9370a9d8AF254B6)
NONCE=$((NONCE+1))

echo "Funding sender 0x2c48d75dA3C9fb9DDF854e12c8907d0C2FB371b3 for test testOpcode_20 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x2c48d75dA3C9fb9DDF854e12c8907d0C2FB371b3)
NONCE=$((NONCE+1))

echo "Funding sender 0x5E72834e0Dd9d197B3Fe13548BD741910D54fcC1 for test testOpcode_21 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x5E72834e0Dd9d197B3Fe13548BD741910D54fcC1)
NONCE=$((NONCE+1))

echo "Funding sender 0x97FEDF9f3AD7934C74D4DcDc66979993B24Ab553 for test testOpcode_22 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x97FEDF9f3AD7934C74D4DcDc66979993B24Ab553)
NONCE=$((NONCE+1))

echo "Funding sender 0xaB68b97c1fCc6A57b7F79203EE2bFDe30EE22Fae for test testOpcode_23 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xaB68b97c1fCc6A57b7F79203EE2bFDe30EE22Fae)
NONCE=$((NONCE+1))

echo "Funding sender 0xb9cfcc4a20aC8Ce554EA86858b99B41E15393723 for test testOpcode_24 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xb9cfcc4a20aC8Ce554EA86858b99B41E15393723)
NONCE=$((NONCE+1))

echo "Funding sender 0xa782De2613B6014f11a1d432D4540050f868D52D for test testOpcode_25 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xa782De2613B6014f11a1d432D4540050f868D52D)
NONCE=$((NONCE+1))

echo "Funding sender 0x854D8ACeD0DD6eDA7C2B14b0bB539a51DFecf51b for test testOpcode_26 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x854D8ACeD0DD6eDA7C2B14b0bB539a51DFecf51b)
NONCE=$((NONCE+1))

echo "Funding sender 0x3D2B9890870Ba7d9EE24Da429C17d0E0AF48C757 for test testOpcode_27 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x3D2B9890870Ba7d9EE24Da429C17d0E0AF48C757)
NONCE=$((NONCE+1))

echo "Funding sender 0x49C09163C2AaE05C063160A5Df58b9947eCC5FE0 for test testOpcode_28 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x49C09163C2AaE05C063160A5Df58b9947eCC5FE0)
NONCE=$((NONCE+1))

echo "Funding sender 0x547b544bF7A516fA6F2835e35Dbe252947FbC657 for test testOpcode_29 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x547b544bF7A516fA6F2835e35Dbe252947FbC657)
NONCE=$((NONCE+1))

echo "Funding sender 0x1F0433a813342995a9E3A9FcD869D32b9826E699 for test testOpcode_2a with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x1F0433a813342995a9E3A9FcD869D32b9826E699)
NONCE=$((NONCE+1))

echo "Funding sender 0x1A1bde4C30F2159BF2C5B925f21DEfA25cEC03B8 for test testOpcode_2b with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x1A1bde4C30F2159BF2C5B925f21DEfA25cEC03B8)
NONCE=$((NONCE+1))

echo "Funding sender 0x59ffc55E1DBAdf94172e26429694B60dE99c0E4E for test testOpcode_2c with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x59ffc55E1DBAdf94172e26429694B60dE99c0E4E)
NONCE=$((NONCE+1))

echo "Funding sender 0x83f327037512eCBbbe8E8e75C144c806d550588f for test testOpcode_2d with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x83f327037512eCBbbe8E8e75C144c806d550588f)
NONCE=$((NONCE+1))

echo "Funding sender 0x2721c1C82c09CCF0d70b709191B65cF6C6930335 for test testOpcode_2e with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x2721c1C82c09CCF0d70b709191B65cF6C6930335)
NONCE=$((NONCE+1))

echo "Funding sender 0xb300aed6E7990Fc6EaF06a4A1c3b7e1A5a2531F5 for test testOpcode_2f with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xb300aed6E7990Fc6EaF06a4A1c3b7e1A5a2531F5)
NONCE=$((NONCE+1))

echo "Funding sender 0x579992599C39C0C7bBC074C2dc600ED16e943B80 for test testOpcode_c0 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x579992599C39C0C7bBC074C2dc600ED16e943B80)
NONCE=$((NONCE+1))

echo "Funding sender 0x19d6a83605F078EC73572E83F95115dA2c425bF1 for test testOpcode_c1 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x19d6a83605F078EC73572E83F95115dA2c425bF1)
NONCE=$((NONCE+1))

echo "Funding sender 0x5E82ce32849D3D80a39b606F08020435EDF436f5 for test testOpcode_c2 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x5E82ce32849D3D80a39b606F08020435EDF436f5)
NONCE=$((NONCE+1))

echo "Funding sender 0xd24B0F9E86F2025186Ebc3c23F29803Cd6217F08 for test testOpcode_c3 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xd24B0F9E86F2025186Ebc3c23F29803Cd6217F08)
NONCE=$((NONCE+1))

echo "Funding sender 0xE40Ff4226B2DCeF83511d982DF8567f6422fa785 for test testOpcode_c4 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xE40Ff4226B2DCeF83511d982DF8567f6422fa785)
NONCE=$((NONCE+1))

echo "Funding sender 0xFDBDa48e8d2505086D1A44d807C8d9bf346C56F5 for test testOpcode_c5 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xFDBDa48e8d2505086D1A44d807C8d9bf346C56F5)
NONCE=$((NONCE+1))

echo "Funding sender 0x81E2C0E091E06c060B812397eBBDb334495C985B for test testOpcode_c6 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x81E2C0E091E06c060B812397eBBDb334495C985B)
NONCE=$((NONCE+1))

echo "Funding sender 0x3D268262b2a5F56012B21da1464F9D8019fABF80 for test testOpcode_c7 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x3D268262b2a5F56012B21da1464F9D8019fABF80)
NONCE=$((NONCE+1))

echo "Funding sender 0x62c61895AC7204cC220255D9722bE408fDB9e486 for test testOpcode_c8 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x62c61895AC7204cC220255D9722bE408fDB9e486)
NONCE=$((NONCE+1))

echo "Funding sender 0xA669ea91e6C208bBdc5c53aB9b3d0D12D922d55f for test testOpcode_c9 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xA669ea91e6C208bBdc5c53aB9b3d0D12D922d55f)
NONCE=$((NONCE+1))

echo "Funding sender 0xC31B56528b6B602bd1D13Ca1b33f1Ad6584027e2 for test testOpcode_ca with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xC31B56528b6B602bd1D13Ca1b33f1Ad6584027e2)
NONCE=$((NONCE+1))

echo "Funding sender 0x5e693A71887a3dF729268aD854C486db2b0E3250 for test testOpcode_cb with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x5e693A71887a3dF729268aD854C486db2b0E3250)
NONCE=$((NONCE+1))

echo "Funding sender 0x34F58D1D5868b2e57D5c55cc5e1C52C3459C7eB9 for test testOpcode_cc with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x34F58D1D5868b2e57D5c55cc5e1C52C3459C7eB9)
NONCE=$((NONCE+1))

echo "Funding sender 0x9E77A32685dAcb2b5B07411955799571eA7C5747 for test testOpcode_cd with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x9E77A32685dAcb2b5B07411955799571eA7C5747)
NONCE=$((NONCE+1))

echo "Funding sender 0x7ff7a0cd9F2787D2b21D9f3F92FC2321a93f366C for test testOpcode_ce with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x7ff7a0cd9F2787D2b21D9f3F92FC2321a93f366C)
NONCE=$((NONCE+1))

echo "Funding sender 0x6701FC8261EdBb778907d4459675B0Fa7346F903 for test testOpcode_cf with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x6701FC8261EdBb778907d4459675B0Fa7346F903)
NONCE=$((NONCE+1))

echo "Funding sender 0xB49f59C24Cbc07F3B954cd436bD215f2229eed84 for test refundReset with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xB49f59C24Cbc07F3B954cd436bD215f2229eed84)
NONCE=$((NONCE+1))

echo "Funding sender 0x15bcBF3ac095Cd3c46Cf915B120cCE3bcab44629 for test extcodehashEmptySuicide with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x15bcBF3ac095Cd3c46Cf915B120cCE3bcab44629)
NONCE=$((NONCE+1))

echo "Funding sender 0x700A72861b75462A48D521C7A2392457BeEA9215 for test testOpcode_70 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x700A72861b75462A48D521C7A2392457BeEA9215)
NONCE=$((NONCE+1))

echo "Funding sender 0xD191D3c4b5cA712AAa1D102d1e161cb00CbFC40d for test testOpcode_71 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xD191D3c4b5cA712AAa1D102d1e161cb00CbFC40d)
NONCE=$((NONCE+1))

echo "Funding sender 0xdFC240BD98462B91A58C93A5C1744664b0685959 for test testOpcode_72 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xdFC240BD98462B91A58C93A5C1744664b0685959)
NONCE=$((NONCE+1))

echo "Funding sender 0x248b67B6A25FADce485a1a7393199ac2e0Cf59C0 for test testOpcode_73 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x248b67B6A25FADce485a1a7393199ac2e0Cf59C0)
NONCE=$((NONCE+1))

echo "Funding sender 0x788E736Ee7056420788e4e6CFcfE1a8da9912f07 for test testOpcode_74 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x788E736Ee7056420788e4e6CFcfE1a8da9912f07)
NONCE=$((NONCE+1))

echo "Funding sender 0xC99FB6b98825CaF11f8Ec2e0865D3993ceE193A4 for test testOpcode_75 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xC99FB6b98825CaF11f8Ec2e0865D3993ceE193A4)
NONCE=$((NONCE+1))

echo "Funding sender 0xaBfe2CA4e858F56b73D48a661606E45a85F8E51e for test testOpcode_76 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xaBfe2CA4e858F56b73D48a661606E45a85F8E51e)
NONCE=$((NONCE+1))

echo "Funding sender 0xd50075059bD06C64c0Ad61f723D5962ACCcae617 for test testOpcode_77 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xd50075059bD06C64c0Ad61f723D5962ACCcae617)
NONCE=$((NONCE+1))

echo "Funding sender 0xA773Fc7707aA22aaa8957c53328c894a629F47cd for test testOpcode_78 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xA773Fc7707aA22aaa8957c53328c894a629F47cd)
NONCE=$((NONCE+1))

echo "Funding sender 0xcd902220F8A6D5826a32C2D6b916522263a34CFC for test testOpcode_79 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xcd902220F8A6D5826a32C2D6b916522263a34CFC)
NONCE=$((NONCE+1))

echo "Funding sender 0x448Cd70bD59C9fd5c3d202B0d1e7C5b50a66A8bb for test testOpcode_7a with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x448Cd70bD59C9fd5c3d202B0d1e7C5b50a66A8bb)
NONCE=$((NONCE+1))

echo "Funding sender 0x929f3B51f7d30661f8BC7b206bf789E3515c3Ff2 for test testOpcode_7b with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x929f3B51f7d30661f8BC7b206bf789E3515c3Ff2)
NONCE=$((NONCE+1))

echo "Funding sender 0x25855495597567EafD94151Bfa3E055d20A3216e for test testOpcode_7c with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x25855495597567EafD94151Bfa3E055d20A3216e)
NONCE=$((NONCE+1))

echo "Funding sender 0xCbD090C292AA437bB607b1Bc67A37f4A97CF0DEd for test testOpcode_7d with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xCbD090C292AA437bB607b1Bc67A37f4A97CF0DEd)
NONCE=$((NONCE+1))

echo "Funding sender 0x4C5D6B1A90ad8086464BFBABa381b95e81e5293d for test testOpcode_7e with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x4C5D6B1A90ad8086464BFBABa381b95e81e5293d)
NONCE=$((NONCE+1))

echo "Funding sender 0x31230F6684aF373332a082047d0028Ce180Cc643 for test testOpcode_7f with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x31230F6684aF373332a082047d0028Ce180Cc643)
NONCE=$((NONCE+1))

echo "Funding sender 0x58b92009A06DBfDF287D3000962d1283c6953b5D for test logRevert with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x58b92009A06DBfDF287D3000962d1283c6953b5D)
NONCE=$((NONCE+1))

echo "Funding sender 0xa13d8971915F9B68B827c8B5009113077873F8C7 for test testOpcode_80 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xa13d8971915F9B68B827c8B5009113077873F8C7)
NONCE=$((NONCE+1))

echo "Funding sender 0x07F67ef56204055c716fD8ba3fBb1baE5045a803 for test testOpcode_81 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x07F67ef56204055c716fD8ba3fBb1baE5045a803)
NONCE=$((NONCE+1))

echo "Funding sender 0x3ad3a2B5964Ed003fD9D4b531E0863D515F07014 for test testOpcode_82 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x3ad3a2B5964Ed003fD9D4b531E0863D515F07014)
NONCE=$((NONCE+1))

echo "Funding sender 0x132A30d1D182d06Ad899E9DC272a6888C169b2a5 for test testOpcode_83 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x132A30d1D182d06Ad899E9DC272a6888C169b2a5)
NONCE=$((NONCE+1))

echo "Funding sender 0x288908a4878f31EbB68C0522BE20A0CD22661ee5 for test testOpcode_84 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x288908a4878f31EbB68C0522BE20A0CD22661ee5)
NONCE=$((NONCE+1))

echo "Funding sender 0x4137174214912e519f9850e8c9fB823244ae8E97 for test testOpcode_85 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x4137174214912e519f9850e8c9fB823244ae8E97)
NONCE=$((NONCE+1))

echo "Funding sender 0x91422CFfA63338eD6394FB99235678471962C595 for test testOpcode_86 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x91422CFfA63338eD6394FB99235678471962C595)
NONCE=$((NONCE+1))

echo "Funding sender 0xAeBc3C4f15Ec3657eAB98F7749d9C1f8B48f9D5E for test testOpcode_87 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xAeBc3C4f15Ec3657eAB98F7749d9C1f8B48f9D5E)
NONCE=$((NONCE+1))

echo "Funding sender 0xF93861125Af162754C37Ca8A804392DD1c30739D for test testOpcode_88 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xF93861125Af162754C37Ca8A804392DD1c30739D)
NONCE=$((NONCE+1))

echo "Funding sender 0x16a9D8b9a849d74f408b986Bc1220eDC7F6675bf for test testOpcode_89 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x16a9D8b9a849d74f408b986Bc1220eDC7F6675bf)
NONCE=$((NONCE+1))

echo "Funding sender 0xB1fD0B111c9d1929D93D0cfB2D8961189ceA4ca6 for test testOpcode_8a with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xB1fD0B111c9d1929D93D0cfB2D8961189ceA4ca6)
NONCE=$((NONCE+1))

echo "Funding sender 0x90401D3C7488e3F38C86e9A4615Aa73846d34976 for test testOpcode_8b with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x90401D3C7488e3F38C86e9A4615Aa73846d34976)
NONCE=$((NONCE+1))

echo "Funding sender 0x63CD602833520318AD98c9A72b0F2FcdE362aCf3 for test testOpcode_8c with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x63CD602833520318AD98c9A72b0F2FcdE362aCf3)
NONCE=$((NONCE+1))

echo "Funding sender 0xf866F00a01411213284bb81F1D7e4cdaa2Ba3c07 for test testOpcode_8d with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xf866F00a01411213284bb81F1D7e4cdaa2Ba3c07)
NONCE=$((NONCE+1))

echo "Funding sender 0x3cc7D6708D6Ff84DB0d184544CE763258e4A4324 for test testOpcode_8e with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x3cc7D6708D6Ff84DB0d184544CE763258e4A4324)
NONCE=$((NONCE+1))

echo "Funding sender 0x2A66A3f74efB2AB3C6a0c54f93c9026Fe7779838 for test testOpcode_8f with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x2A66A3f74efB2AB3C6a0c54f93c9026Fe7779838)
NONCE=$((NONCE+1))

echo "Funding sender 0xaC675ab20211C204cd2c96088d959Ab0a54A3269 for test testOpcode_a0 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xaC675ab20211C204cd2c96088d959Ab0a54A3269)
NONCE=$((NONCE+1))

echo "Funding sender 0xA0D5aed1B9787867469B3ee997A7eD5B3e961D0a for test testOpcode_a1 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xA0D5aed1B9787867469B3ee997A7eD5B3e961D0a)
NONCE=$((NONCE+1))

echo "Funding sender 0x95B7B5b4b5ADadB9E15F579AAD6D0003bF7FA9f4 for test testOpcode_a2 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x95B7B5b4b5ADadB9E15F579AAD6D0003bF7FA9f4)
NONCE=$((NONCE+1))

echo "Funding sender 0xF154a011D4ac2186f6b12DeD92c3Cc06De326dE4 for test testOpcode_a3 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xF154a011D4ac2186f6b12DeD92c3Cc06De326dE4)
NONCE=$((NONCE+1))

echo "Funding sender 0x6Fa86Aef79577D10F2eEa65373d1398580d63ce6 for test testOpcode_a4 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x6Fa86Aef79577D10F2eEa65373d1398580d63ce6)
NONCE=$((NONCE+1))

echo "Funding sender 0xCf2a0f26e3E04AF18606F32b1C9142a6a3ac1977 for test testOpcode_a5 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xCf2a0f26e3E04AF18606F32b1C9142a6a3ac1977)
NONCE=$((NONCE+1))

echo "Funding sender 0xB8390889063f7F2cdbd10eB5e67ccaDb3462ea88 for test testOpcode_a6 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xB8390889063f7F2cdbd10eB5e67ccaDb3462ea88)
NONCE=$((NONCE+1))

echo "Funding sender 0xE9CC2B2f2921Ec813D60D30311Aa66E38Eea36Cd for test testOpcode_a7 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xE9CC2B2f2921Ec813D60D30311Aa66E38Eea36Cd)
NONCE=$((NONCE+1))

echo "Funding sender 0xB577250712F96437b55E53983d4b0119C30C7cFe for test testOpcode_a8 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xB577250712F96437b55E53983d4b0119C30C7cFe)
NONCE=$((NONCE+1))

echo "Funding sender 0x3796014A2Cfa4ed540374c07D78F3228F685973B for test testOpcode_a9 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x3796014A2Cfa4ed540374c07D78F3228F685973B)
NONCE=$((NONCE+1))

echo "Funding sender 0x47D9c0ee5BD390D3aa488aDfdc95D2dA89731754 for test testOpcode_aa with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x47D9c0ee5BD390D3aa488aDfdc95D2dA89731754)
NONCE=$((NONCE+1))

echo "Funding sender 0xECBa4Ef3E176f4c1a2BDe7b4c0Ca48f5786d708c for test testOpcode_ab with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xECBa4Ef3E176f4c1a2BDe7b4c0Ca48f5786d708c)
NONCE=$((NONCE+1))

echo "Funding sender 0x529c0fC8e11eA3FA78d1a56D98b47aC48fC3c2ef for test testOpcode_ac with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x529c0fC8e11eA3FA78d1a56D98b47aC48fC3c2ef)
NONCE=$((NONCE+1))

echo "Funding sender 0xc1a88Bd5c18f2330b5aD732eBa4c87f41c173bF7 for test testOpcode_ad with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xc1a88Bd5c18f2330b5aD732eBa4c87f41c173bF7)
NONCE=$((NONCE+1))

echo "Funding sender 0xD2D92B76C442e15413AE3174B7469d122E881d9C for test testOpcode_ae with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xD2D92B76C442e15413AE3174B7469d122E881d9C)
NONCE=$((NONCE+1))

echo "Funding sender 0x63aDB891F1292CB4C730DD913888786c0dd11966 for test testOpcode_af with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x63aDB891F1292CB4C730DD913888786c0dd11966)
NONCE=$((NONCE+1))

echo "Funding sender 0xD474DcE8ccB3fC2Ab59A1aAE4798C8e322352E8e for test testOpcode_d0 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xD474DcE8ccB3fC2Ab59A1aAE4798C8e322352E8e)
NONCE=$((NONCE+1))

echo "Funding sender 0x2CD65471925FC18fef4346D4eB09A5D0f2DB2aF1 for test testOpcode_d1 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x2CD65471925FC18fef4346D4eB09A5D0f2DB2aF1)
NONCE=$((NONCE+1))

echo "Funding sender 0xf103f49807E0fb0f07F42A7B6450C3f03a44C234 for test testOpcode_d2 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xf103f49807E0fb0f07F42A7B6450C3f03a44C234)
NONCE=$((NONCE+1))

echo "Funding sender 0xB6f6A758dd201Fefd52B1b556545Ed5C8DBCcf62 for test testOpcode_d3 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xB6f6A758dd201Fefd52B1b556545Ed5C8DBCcf62)
NONCE=$((NONCE+1))

echo "Funding sender 0x496b8A0E103459E3679191D20d5DDD9f4057cADb for test testOpcode_d4 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x496b8A0E103459E3679191D20d5DDD9f4057cADb)
NONCE=$((NONCE+1))

echo "Funding sender 0x0f242015d090fA31BD47AAd4dF1F57Bd9d704852 for test testOpcode_d5 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x0f242015d090fA31BD47AAd4dF1F57Bd9d704852)
NONCE=$((NONCE+1))

echo "Funding sender 0x925F7a11ec7b73e4C287201CCb633bb93c8e3233 for test testOpcode_d6 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x925F7a11ec7b73e4C287201CCb633bb93c8e3233)
NONCE=$((NONCE+1))

echo "Funding sender 0x301F8Ca266D0E71bBA89edF6B0b58CA9906D46Ef for test testOpcode_d7 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x301F8Ca266D0E71bBA89edF6B0b58CA9906D46Ef)
NONCE=$((NONCE+1))

echo "Funding sender 0x02040677895BE7f8B4333D87c568dBfF646e688A for test testOpcode_d8 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x02040677895BE7f8B4333D87c568dBfF646e688A)
NONCE=$((NONCE+1))

echo "Funding sender 0x27e39376d0eCc5200457d3386d3AB9158a5f4c2b for test testOpcode_d9 with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x27e39376d0eCc5200457d3386d3AB9158a5f4c2b)
NONCE=$((NONCE+1))

echo "Funding sender 0x2d9a354a5926DFD500fc02356F1eC83C61A3c2bd for test testOpcode_da with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x2d9a354a5926DFD500fc02356F1eC83C61A3c2bd)
NONCE=$((NONCE+1))

echo "Funding sender 0x795F4259D79726c8c5dCF3b5e9B73147F700cF60 for test testOpcode_db with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x795F4259D79726c8c5dCF3b5e9B73147F700cF60)
NONCE=$((NONCE+1))

echo "Funding sender 0x9e2dB00672b9F1c21CB2dD0D705203D5E2969F00 for test testOpcode_dc with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x9e2dB00672b9F1c21CB2dD0D705203D5E2969F00)
NONCE=$((NONCE+1))

echo "Funding sender 0xdB8936F7E94B34B6a15E3B916dB7635b1dAAc423 for test testOpcode_dd with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xdB8936F7E94B34B6a15E3B916dB7635b1dAAc423)
NONCE=$((NONCE+1))

echo "Funding sender 0x5C1084EBc03ED83c3b15cA38FdE020ac183f8FD5 for test testOpcode_de with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x5C1084EBc03ED83c3b15cA38FdE020ac183f8FD5)
NONCE=$((NONCE+1))

echo "Funding sender 0xE0B31B2B360E94d17Fbc97b914C6fbc67F70B28a for test testOpcode_df with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xE0B31B2B360E94d17Fbc97b914C6fbc67F70B28a)
NONCE=$((NONCE+1))

echo "Funding sender 0x0951e624f8bFA9a61c4a6A77baECF69c85611603 for test blockWithAllTransactionTypes with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x0951e624f8bFA9a61c4a6A77baECF69c85611603)
NONCE=$((NONCE+1))

echo "Funding sender 0xDB242A0dB1C08deF17290C1C0358B844074Cf577 for test tipInsideBlock with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xDB242A0dB1C08deF17290C1C0358B844074Cf577)
NONCE=$((NONCE+1))

echo "Funding sender 0x48eA96129Abfc804293dE6Ab2d112a5A9e7377E9 for test tloadDoesNotPersistCrossTxn with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x48eA96129Abfc804293dE6Ab2d112a5A9e7377E9)
NONCE=$((NONCE+1))

echo "Funding sender 0xB685Dbe78A30844FA82Bf4D17f6318D5277ae25f for test tloadDoesNotPersistAcrossBlocks with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xB685Dbe78A30844FA82Bf4D17f6318D5277ae25f)
NONCE=$((NONCE+1))

echo "Funding sender 0x22F0EC000A1C36Fa4c4e14E7AC18fb1209B1EAfe for test transStorageBlockchain with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0x22F0EC000A1C36Fa4c4e14E7AC18fb1209B1EAfe)
NONCE=$((NONCE+1))

echo "Funding sender 0xca4ce3442B0cE5359b4b7e901C896f055c9cC43A for test initialVal with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xca4ce3442B0cE5359b4b7e901C896f055c9cC43A)
NONCE=$((NONCE+1))

echo "Funding sender 0xFAb5572979a3CE4c338c3f9409eF0036Bd165364 for test difficultyFormula with $TEST_MASTER_SENDER_AMOUNT"...
TXHASH=$(cast send --async --nonce $NONCE --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $TEST_MASTER_SENDER_AMOUNT 0xFAb5572979a3CE4c338c3f9409eF0036Bd165364)
NONCE=$((NONCE+1))

echo "Allowing 5s to process txs"
sleep 5
echo "Confirming last txhash: $TXHASH..."
STATUS=$(cast receipt --json --rpc-url $RPC_URL $TXHASH | jq -r .status)
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
