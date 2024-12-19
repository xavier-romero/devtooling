# PRV_KEY for master sender 0xBd6b0ded0B1dC79c9271788e755390Ac50a54B38
PRV_KEY=c897e7efc3c8aa87c052d3ed52e58e7e7b3ff4f9a29e1f1debd2e3dd615867e8
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test multimpleBalanceInstruction (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/multimpleBalanceInstructionFiller.json)"

AMOUNT=$((2*150000*2*$GAS_PRICE+1010))
echo "[multimpleBalanceInstruction] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xB70ca602e58A0210979f5adc4C43856642f4e1fE) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xB70ca602e58A0210979f5adc4C43856642f4e1fE | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[multimpleBalanceInstruction] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 100000..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100000 --create 630000007e6012600039630000007e6000F373a94f5374fce5edbc8e2a8697c15331677e6ebf0b31600055738888f1f195afa192cfee860698584c030f4c9db13160015573a94f5374fce5edbc8e2a8697c15331677e6ebf0b31600255738888f1f195afa192cfee860698584c030f4c9db13160035573095e7baea6a6c7c4c2dfeb977efac326af552d873160055500 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[multimpleBalanceInstruction] Creating receiver 0x195e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 100000..."
ADDR_195E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100000 --create 6300000097601260003963000000976000F373a94f5374fce5edbc8e2a8697c15331677e6ebf0b31600055738888f1f195afa192cfee860698584c030f4c9db13160015573a94f5374fce5edbc8e2a8697c15331677e6ebf0b31600255738888f1f195afa192cfee860698584c030f4c9db13160035573095e7baea6a6c7c4c2dfeb977efac326af552d873160045573195e7baea6a6c7c4c2dfeb977efac326af552d873160055500 | jq -r .contractAddress)
echo $ADDR_195E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[multimpleBalanceInstruction] Processing transaction number 743 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xB70ca602e58A0210979f5adc4C43856642f4e1fE) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 7b73e7f00d21909a0340283d3b2790c40b41afaac449f5717f80e1e9379834a6 --timeout 20 --value 10 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[multimpleBalanceInstruction] Processing transaction number 744 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xB70ca602e58A0210979f5adc4C43856642f4e1fE) to 0x195e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 7b73e7f00d21909a0340283d3b2790c40b41afaac449f5717f80e1e9379834a6 --timeout 20 --value 1000 $ADDR_195E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

