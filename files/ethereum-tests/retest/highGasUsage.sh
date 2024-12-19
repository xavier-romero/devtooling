# PRV_KEY for master sender 0xB193F2C6767B6fdE4D1A0EF4D8c465Eb818C432f
PRV_KEY=ad24381f1976827fbe2895cc9bbde412d8c5e64c61baf6630db9de8cfa519ffd
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test highGasUsage (src/BlockchainTestsFiller/ValidBlocks/bcGasPricerTest/highGasUsageFiller.json)"

AMOUNT=$((2*150000*11*$GAS_PRICE+110))
echo "[highGasUsage] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x175D50C47d37bD24d84E76153edBf0C8302Bc698) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x175D50C47d37bD24d84E76153edBf0C8302Bc698 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[highGasUsage] Creating receiver 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b with code and balance 10000000000..."
ADDR_AAAF5374FCE5EDBC8E2A8697C15331677E6EBF0B=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 10000000000 --create 6300000004601260003963000000046000F360003551 | jq -r .contractAddress)
echo $ADDR_AAAF5374FCE5EDBC8E2A8697C15331677E6EBF0B

echo "[highGasUsage] Processing transaction number 806 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x175D50C47d37bD24d84E76153edBf0C8302Bc698) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 8cdca495efa6edd32e7232428f8324cf96e331c621a0883bc10b56d05c102e5f --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 0xffffffffffff | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[highGasUsage] Processing transaction number 807 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x175D50C47d37bD24d84E76153edBf0C8302Bc698) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 8cdca495efa6edd32e7232428f8324cf96e331c621a0883bc10b56d05c102e5f --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 0xffffffffffff | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[highGasUsage] Processing transaction number 808 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x175D50C47d37bD24d84E76153edBf0C8302Bc698) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 8cdca495efa6edd32e7232428f8324cf96e331c621a0883bc10b56d05c102e5f --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 0xffffffffffff | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[highGasUsage] Processing transaction number 809 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x175D50C47d37bD24d84E76153edBf0C8302Bc698) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 8cdca495efa6edd32e7232428f8324cf96e331c621a0883bc10b56d05c102e5f --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 0xffffffffffff | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[highGasUsage] Processing transaction number 810 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x175D50C47d37bD24d84E76153edBf0C8302Bc698) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 8cdca495efa6edd32e7232428f8324cf96e331c621a0883bc10b56d05c102e5f --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 0xffffffffffff | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[highGasUsage] Processing transaction number 811 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x175D50C47d37bD24d84E76153edBf0C8302Bc698) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 8cdca495efa6edd32e7232428f8324cf96e331c621a0883bc10b56d05c102e5f --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 0xffffffffffff | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[highGasUsage] Processing transaction number 812 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x175D50C47d37bD24d84E76153edBf0C8302Bc698) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 8cdca495efa6edd32e7232428f8324cf96e331c621a0883bc10b56d05c102e5f --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 0xffffffffffff | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[highGasUsage] Processing transaction number 813 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x175D50C47d37bD24d84E76153edBf0C8302Bc698) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 8cdca495efa6edd32e7232428f8324cf96e331c621a0883bc10b56d05c102e5f --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 0xffffffffffff | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[highGasUsage] Processing transaction number 814 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x175D50C47d37bD24d84E76153edBf0C8302Bc698) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 8cdca495efa6edd32e7232428f8324cf96e331c621a0883bc10b56d05c102e5f --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 0xffffffffffff | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[highGasUsage] Processing transaction number 815 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x175D50C47d37bD24d84E76153edBf0C8302Bc698) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 8cdca495efa6edd32e7232428f8324cf96e331c621a0883bc10b56d05c102e5f --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 0xffffffffffff | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[highGasUsage] Processing transaction number 816 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x175D50C47d37bD24d84E76153edBf0C8302Bc698) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 8cdca495efa6edd32e7232428f8324cf96e331c621a0883bc10b56d05c102e5f --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 0xffffffffffff | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

