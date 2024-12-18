# PRV_KEY for master sender 0x1c052F6a2E0CCdf72cbE19ED1FE1492C915ce6E7
PRV_KEY=cae9dc923c426b89a72e7d27e863f0a2b7c3a95eae784beeccf9423af2c754db
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test multimpleBalanceInstruction (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/multimpleBalanceInstructionFiller.json)"

AMOUNT=$((2*150000*2*$GAS_PRICE+1010))
echo "[multimpleBalanceInstruction] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x92b95357e27edDb067D42B6bFB0d6821869c818F) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x92b95357e27edDb067D42B6bFB0d6821869c818F | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[multimpleBalanceInstruction] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 100000..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100000 --create 630000007e6012600039630000007e6000F373a94f5374fce5edbc8e2a8697c15331677e6ebf0b31600055738888f1f195afa192cfee860698584c030f4c9db13160015573a94f5374fce5edbc8e2a8697c15331677e6ebf0b31600255738888f1f195afa192cfee860698584c030f4c9db13160035573095e7baea6a6c7c4c2dfeb977efac326af552d873160055500 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[multimpleBalanceInstruction] Creating receiver 0x195e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 100000..."
ADDR_195E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100000 --create 6300000097601260003963000000976000F373a94f5374fce5edbc8e2a8697c15331677e6ebf0b31600055738888f1f195afa192cfee860698584c030f4c9db13160015573a94f5374fce5edbc8e2a8697c15331677e6ebf0b31600255738888f1f195afa192cfee860698584c030f4c9db13160035573095e7baea6a6c7c4c2dfeb977efac326af552d873160045573195e7baea6a6c7c4c2dfeb977efac326af552d873160055500 | jq -r .contractAddress)
echo $ADDR_195E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[multimpleBalanceInstruction] Processing transaction number 743 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x92b95357e27edDb067D42B6bFB0d6821869c818F) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 72fdd609b65b1cc5fc16ba172cf0fcd73455421102c780158801f6533f279d05 --timeout 20 --value 10 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[multimpleBalanceInstruction] Processing transaction number 744 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x92b95357e27edDb067D42B6bFB0d6821869c818F) to 0x195e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 72fdd609b65b1cc5fc16ba172cf0fcd73455421102c780158801f6533f279d05 --timeout 20 --value 1000 $ADDR_195E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

