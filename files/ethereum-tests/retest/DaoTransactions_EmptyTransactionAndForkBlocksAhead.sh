# PRV_KEY for master sender 0x05122848b3081611895B737BD5Ec27abf79598ab
PRV_KEY=0030ab64dfc97687ae679efe0aae804c310f66e4eff60d5afc93f9b3413301dd
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test DaoTransactions_EmptyTransactionAndForkBlocksAhead (src/BlockchainTestsFiller/TransitionTests/bcHomesteadToDao/DaoTransactions_EmptyTransactionAndForkBlocksAheadFiller.json)"

AMOUNT=$((2*150000*9*$GAS_PRICE+64))
echo "[DaoTransactions_EmptyTransactionAndForkBlocksAhead] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xef658A13786cE14CDBa54708Ea07880De6D6a7f0) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xef658A13786cE14CDBa54708Ea07880De6D6a7f0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions_EmptyTransactionAndForkBlocksAhead] Creating receiver 0x1000000000000000000000000000000000000007 with code and balance 0..."
ADDR_1000000000000000000000000000000000000007=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 630000001a6012600039630000001a6000F373807640a13483f8ac783c557fcdf27be11ea4ac7a3160005500 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000007

echo "[DaoTransactions_EmptyTransactionAndForkBlocksAhead] Creating receiver 0x1000000000000000000000000000000000000008 with code and balance 0..."
ADDR_1000000000000000000000000000000000000008=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 630000001a6012600039630000001a6000F373807640a13483f8ac783c557fcdf27be11ea4ac7a3160005500 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000008

echo "[DaoTransactions_EmptyTransactionAndForkBlocksAhead] Processing transaction number 855 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xef658A13786cE14CDBa54708Ea07880De6D6a7f0) to None"...
echo "[DaoTransactions_EmptyTransactionAndForkBlocksAhead] Processing transaction number 855 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xef658A13786cE14CDBa54708Ea07880De6D6a7f0) to None"...
echo "[DaoTransactions_EmptyTransactionAndForkBlocksAhead] Processing transaction number 855 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xef658A13786cE14CDBa54708Ea07880De6D6a7f0) to None"...
echo "[DaoTransactions_EmptyTransactionAndForkBlocksAhead] Processing transaction number 855 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xef658A13786cE14CDBa54708Ea07880De6D6a7f0) to 0x1000000000000000000000000000000000000007"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key b1ec230c3e5f5da142b81fb82b2c1e94f755abaabcca2cee5fff47e8cc721e7e --timeout 20 --value 10 $ADDR_1000000000000000000000000000000000000007 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions_EmptyTransactionAndForkBlocksAhead] Processing transaction number 856 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xef658A13786cE14CDBa54708Ea07880De6D6a7f0) to 0x1000000000000000000000000000000000000007"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key b1ec230c3e5f5da142b81fb82b2c1e94f755abaabcca2cee5fff47e8cc721e7e --timeout 20 --value 11 $ADDR_1000000000000000000000000000000000000007 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions_EmptyTransactionAndForkBlocksAhead] Processing transaction number 857 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xef658A13786cE14CDBa54708Ea07880De6D6a7f0) to 0x1000000000000000000000000000000000000007"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key b1ec230c3e5f5da142b81fb82b2c1e94f755abaabcca2cee5fff47e8cc721e7e --timeout 20 --value 10 $ADDR_1000000000000000000000000000000000000007 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions_EmptyTransactionAndForkBlocksAhead] Processing transaction number 858 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xef658A13786cE14CDBa54708Ea07880De6D6a7f0) to 0x1000000000000000000000000000000000000008"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key b1ec230c3e5f5da142b81fb82b2c1e94f755abaabcca2cee5fff47e8cc721e7e --timeout 20 --value 1 $ADDR_1000000000000000000000000000000000000008 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions_EmptyTransactionAndForkBlocksAhead] Processing transaction number 859 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xef658A13786cE14CDBa54708Ea07880De6D6a7f0) to None"...
echo "[DaoTransactions_EmptyTransactionAndForkBlocksAhead] Processing transaction number 859 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xef658A13786cE14CDBa54708Ea07880De6D6a7f0) to None"...
