# PRV_KEY for master sender 0x3F5dF0521c824037aafa1680a69BD3050dA93305
PRV_KEY=c904df2dcedbffb3c695e9291b72b95fb2c7ecda359a8a0a0a2465d5aeb6155c
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test optionsTest (src/BlockchainTestsFiller/ValidBlocks/bcExample/optionsTestFiller.json)"

AMOUNT=$((2*150000*4*$GAS_PRICE+0))
echo "[optionsTest] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x7B2b69A6D12bd2650e9DC0D0CaA49D98b59a15E5) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x7B2b69A6D12bd2650e9DC0D0CaA49D98b59a15E5 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[optionsTest] Creating receiver 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b with code and balance 100000000000000000..."
ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100000000000000000 --create 6300000007601260003963000000076000F360016000355500 | jq -r .contractAddress)
echo $ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B

echo "[optionsTest] Processing transaction number 780 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x7B2b69A6D12bd2650e9DC0D0CaA49D98b59a15E5) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 4c41ae53f7c9ed3586d0fcc6bef1596724930c4847922264815a6ec2c75fd876 --timeout 20 --value 0 $ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B 0x0000000000000000000000000000000000000000000000000000000000000001 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[optionsTest] Processing transaction number 781 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x7B2b69A6D12bd2650e9DC0D0CaA49D98b59a15E5) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 4c41ae53f7c9ed3586d0fcc6bef1596724930c4847922264815a6ec2c75fd876 --timeout 20 --value 0 $ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B 0x0000000000000000000000000000000000000000000000000000000000000002 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[optionsTest] Processing transaction number 782 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x7B2b69A6D12bd2650e9DC0D0CaA49D98b59a15E5) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 4c41ae53f7c9ed3586d0fcc6bef1596724930c4847922264815a6ec2c75fd876 --timeout 20 --value 0 $ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B 0x0000000000000000000000000000000000000000000000000000000000000003 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[optionsTest] Processing transaction number 783 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x7B2b69A6D12bd2650e9DC0D0CaA49D98b59a15E5) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 4c41ae53f7c9ed3586d0fcc6bef1596724930c4847922264815a6ec2c75fd876 --timeout 20 --value 0 $ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B 0x0000000000000000000000000000000000000000000000000000000000000005 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

