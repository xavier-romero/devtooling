# PRV_KEY for master sender 0x12892d7B71e4078D83BBc62ACCe4cbe2Aa7bC979
PRV_KEY=a49c8cb9226f9002b15d50230431558eb8858387505c2ae5f6db778a23f8c4ff
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test DaoTransactions_EmptyTransactionAndForkBlocksAhead (src/BlockchainTestsFiller/TransitionTests/bcHomesteadToDao/DaoTransactions_EmptyTransactionAndForkBlocksAheadFiller.json)"

AMOUNT=$((2*150000*9*$GAS_PRICE+64))
echo "[DaoTransactions_EmptyTransactionAndForkBlocksAhead] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x7d607BF7E3326a94675f8B380895f2b3aed0720F) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x7d607BF7E3326a94675f8B380895f2b3aed0720F | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions_EmptyTransactionAndForkBlocksAhead] Creating receiver 0x1000000000000000000000000000000000000007 with code and balance 0..."
ADDR_1000000000000000000000000000000000000007=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 630000001a6012600039630000001a6000F373807640a13483f8ac783c557fcdf27be11ea4ac7a3160005500 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000007

echo "[DaoTransactions_EmptyTransactionAndForkBlocksAhead] Creating receiver 0x1000000000000000000000000000000000000008 with code and balance 0..."
ADDR_1000000000000000000000000000000000000008=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 630000001a6012600039630000001a6000F373807640a13483f8ac783c557fcdf27be11ea4ac7a3160005500 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000008

echo "[DaoTransactions_EmptyTransactionAndForkBlocksAhead] Processing transaction number 855 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x7d607BF7E3326a94675f8B380895f2b3aed0720F) to None"...
echo "[DaoTransactions_EmptyTransactionAndForkBlocksAhead] Processing transaction number 855 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x7d607BF7E3326a94675f8B380895f2b3aed0720F) to None"...
echo "[DaoTransactions_EmptyTransactionAndForkBlocksAhead] Processing transaction number 855 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x7d607BF7E3326a94675f8B380895f2b3aed0720F) to None"...
echo "[DaoTransactions_EmptyTransactionAndForkBlocksAhead] Processing transaction number 855 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x7d607BF7E3326a94675f8B380895f2b3aed0720F) to 0x1000000000000000000000000000000000000007"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 454202f6a33d9f185791b555c87899f1003f0e4b6f7cbe791c83a59a2ed4d390 --timeout 20 --value 10 $ADDR_1000000000000000000000000000000000000007 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions_EmptyTransactionAndForkBlocksAhead] Processing transaction number 856 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x7d607BF7E3326a94675f8B380895f2b3aed0720F) to 0x1000000000000000000000000000000000000007"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 454202f6a33d9f185791b555c87899f1003f0e4b6f7cbe791c83a59a2ed4d390 --timeout 20 --value 11 $ADDR_1000000000000000000000000000000000000007 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions_EmptyTransactionAndForkBlocksAhead] Processing transaction number 857 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x7d607BF7E3326a94675f8B380895f2b3aed0720F) to 0x1000000000000000000000000000000000000007"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 454202f6a33d9f185791b555c87899f1003f0e4b6f7cbe791c83a59a2ed4d390 --timeout 20 --value 10 $ADDR_1000000000000000000000000000000000000007 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions_EmptyTransactionAndForkBlocksAhead] Processing transaction number 858 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x7d607BF7E3326a94675f8B380895f2b3aed0720F) to 0x1000000000000000000000000000000000000008"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 454202f6a33d9f185791b555c87899f1003f0e4b6f7cbe791c83a59a2ed4d390 --timeout 20 --value 1 $ADDR_1000000000000000000000000000000000000008 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DaoTransactions_EmptyTransactionAndForkBlocksAhead] Processing transaction number 859 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x7d607BF7E3326a94675f8B380895f2b3aed0720F) to None"...
echo "[DaoTransactions_EmptyTransactionAndForkBlocksAhead] Processing transaction number 859 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x7d607BF7E3326a94675f8B380895f2b3aed0720F) to None"...
