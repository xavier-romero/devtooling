# PRV_KEY for master sender 0x1F1BA044a019052B69ec840032F652f0A633f01f
PRV_KEY=f53c121acd44b4daf304ed27832009caf3884de3f9282870f3f956d6060b55d4
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test SuicideTransaction (src/BlockchainTestsFiller/ValidBlocks/bcBlockGasLimitTest/SuicideTransactionFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+10))
echo "[SuicideTransaction] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x828A479406ca903bD0e18B7cD961D84F053A2449) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x828A479406ca903bD0e18B7cD961D84F053A2449 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[SuicideTransaction] Creating receiver 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b with code and balance 10000000000..."
ADDR_AAAF5374FCE5EDBC8E2A8697C15331677E6EBF0B=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 10000000000 --create 6300000016601260003963000000166000F373a94f5374fce5edbc8e2a8697c15331677e6ebf0bff | jq -r .contractAddress)
echo $ADDR_AAAF5374FCE5EDBC8E2A8697C15331677E6EBF0B

echo "[SuicideTransaction] Processing transaction number 805 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x828A479406ca903bD0e18B7cD961D84F053A2449) to 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key bd056b1785d28e8e8003622555d5d918195f53fbf6bf2cd1ca6744a8007b5398 --timeout 20 --value 10 $ADDR_AAAF5374FCE5EDBC8E2A8697C15331677E6EBF0B | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

