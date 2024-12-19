# PRV_KEY for master sender 0x1F56C40fC387396509F5b27E7C515BD940fa8cf0
PRV_KEY=21d62c1bdc927245037e2511fbb80d2172ffa764f8b53dcd7ea2e507febd264b
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test filling_wrongStorage2 (src/BlockchainTestsFiller/InvalidBlocks/bcExpectSection/filling_wrongStorage2Filler.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+10))
echo "[filling_wrongStorage2] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x09787907b9A6C18234eF5687eb878524673a504d) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x09787907b9A6C18234eF5687eb878524673a504d | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[filling_wrongStorage2] Creating receiver 0xa94f5374fce5edbc8e2a8697c15331677e6ebf0b with code and balance 10000000000000..."
ADDR_A94F5374FCE5EDBC8E2A8697C15331677E6EBF0B=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 10000000000000 --create 6022600255 | jq -r .contractAddress)
echo $ADDR_A94F5374FCE5EDBC8E2A8697C15331677E6EBF0B

echo "[filling_wrongStorage2] Processing transaction number 117 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x09787907b9A6C18234eF5687eb878524673a504d) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key f249c01baa98e068ef7444753c7bf07c8961eb17899f55c9fa58bc16d1ed9acd --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

