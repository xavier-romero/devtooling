# PRV_KEY for master sender 0x410123a5221038D9BF1c0800A26018B81279B44A
PRV_KEY=9007fd20c768c6a595aabab69e399b4e5d7b5c69fe175bae07841b741c2000da
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test filling_wrongStorage (src/BlockchainTestsFiller/InvalidBlocks/bcExpectSection/filling_wrongStorageFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+10))
echo "[filling_wrongStorage] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xa0786576274B00F7d16a3c66F4ff28b20F9b5a5F) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xa0786576274B00F7d16a3c66F4ff28b20F9b5a5F | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[filling_wrongStorage] Creating receiver 0xa94f5374fce5edbc8e2a8697c15331677e6ebf0b with code and balance 10000000000000..."
ADDR_A94F5374FCE5EDBC8E2A8697C15331677E6EBF0B=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 10000000000000 --create 6022600155 | jq -r .contractAddress)
echo $ADDR_A94F5374FCE5EDBC8E2A8697C15331677E6EBF0B

echo "[filling_wrongStorage] Processing transaction number 116 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xa0786576274B00F7d16a3c66F4ff28b20F9b5a5F) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 681d8009c409ca9d0ca0bc8249a69ee315c21ff825bc8d44753c41e2fa42fca1 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

