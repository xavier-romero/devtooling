# PRV_KEY for master sender 0x55c1ECC46aa68b463098F3dcF30D6C3E28A20037
PRV_KEY=ae38b37157701758fe62d80bba82997f7d7e86f09e98deed7ee280b1ba12eec4
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test highGasUsage (src/BlockchainTestsFiller/ValidBlocks/bcGasPricerTest/highGasUsageFiller.json)"

AMOUNT=$((2*150000*11*$GAS_PRICE+110))
echo "[highGasUsage] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x99C539E456f25872ac3255d9da894FdaCe37FdD9) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x99C539E456f25872ac3255d9da894FdaCe37FdD9 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[highGasUsage] Creating receiver 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b with code and balance 10000000000..."
ADDR_AAAF5374FCE5EDBC8E2A8697C15331677E6EBF0B=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 10000000000 --create 6300000004601260003963000000046000F360003551 | jq -r .contractAddress)
echo $ADDR_AAAF5374FCE5EDBC8E2A8697C15331677E6EBF0B

echo "[highGasUsage] Processing transaction number 806 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x99C539E456f25872ac3255d9da894FdaCe37FdD9) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 251aec8514c60bdfbcb3b03b9ff874a63801aa22a009e9a9e6dda2659c19cf94 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 0xffffffffffff | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[highGasUsage] Processing transaction number 807 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x99C539E456f25872ac3255d9da894FdaCe37FdD9) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 251aec8514c60bdfbcb3b03b9ff874a63801aa22a009e9a9e6dda2659c19cf94 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 0xffffffffffff | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[highGasUsage] Processing transaction number 808 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x99C539E456f25872ac3255d9da894FdaCe37FdD9) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 251aec8514c60bdfbcb3b03b9ff874a63801aa22a009e9a9e6dda2659c19cf94 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 0xffffffffffff | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[highGasUsage] Processing transaction number 809 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x99C539E456f25872ac3255d9da894FdaCe37FdD9) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 251aec8514c60bdfbcb3b03b9ff874a63801aa22a009e9a9e6dda2659c19cf94 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 0xffffffffffff | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[highGasUsage] Processing transaction number 810 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x99C539E456f25872ac3255d9da894FdaCe37FdD9) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 251aec8514c60bdfbcb3b03b9ff874a63801aa22a009e9a9e6dda2659c19cf94 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 0xffffffffffff | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[highGasUsage] Processing transaction number 811 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x99C539E456f25872ac3255d9da894FdaCe37FdD9) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 251aec8514c60bdfbcb3b03b9ff874a63801aa22a009e9a9e6dda2659c19cf94 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 0xffffffffffff | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[highGasUsage] Processing transaction number 812 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x99C539E456f25872ac3255d9da894FdaCe37FdD9) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 251aec8514c60bdfbcb3b03b9ff874a63801aa22a009e9a9e6dda2659c19cf94 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 0xffffffffffff | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[highGasUsage] Processing transaction number 813 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x99C539E456f25872ac3255d9da894FdaCe37FdD9) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 251aec8514c60bdfbcb3b03b9ff874a63801aa22a009e9a9e6dda2659c19cf94 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 0xffffffffffff | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[highGasUsage] Processing transaction number 814 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x99C539E456f25872ac3255d9da894FdaCe37FdD9) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 251aec8514c60bdfbcb3b03b9ff874a63801aa22a009e9a9e6dda2659c19cf94 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 0xffffffffffff | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[highGasUsage] Processing transaction number 815 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x99C539E456f25872ac3255d9da894FdaCe37FdD9) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 251aec8514c60bdfbcb3b03b9ff874a63801aa22a009e9a9e6dda2659c19cf94 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 0xffffffffffff | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[highGasUsage] Processing transaction number 816 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x99C539E456f25872ac3255d9da894FdaCe37FdD9) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 251aec8514c60bdfbcb3b03b9ff874a63801aa22a009e9a9e6dda2659c19cf94 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 0xffffffffffff | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

