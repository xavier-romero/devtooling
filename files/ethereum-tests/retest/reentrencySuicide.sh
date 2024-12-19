# PRV_KEY for master sender 0xc67f23971556a2D66b1e7d66C168B556b66791D6
PRV_KEY=4b581a567faa78c5ab21c84c8d5c97e9660f46c0013d9dbd8176364d5ec08f96
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test reentrencySuicide (src/BlockchainTestsFiller/ValidBlocks/bcValidBlockTest/reentrencySuicideFiller.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[reentrencySuicide] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0f54B021F07b633F494f49f6F7EC51C53862715a) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x0f54B021F07b633F494f49f6F7EC51C53862715a | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[reentrencySuicide] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 100..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100 --create 6300000040601260003963000000406000F3600a6000526000600060206000600161c0de5af15061c0de6000526000600060206000600361c0de5af150600b6000526000600060206000600261c0de5af100 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[reentrencySuicide] Creating receiver 0x000000000000000000000000000000000000c0de with code and balance 0..."
ADDR_000000000000000000000000000000000000C0DE=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6300000005601260003963000000056000F3600035ff00 | jq -r .contractAddress)
echo $ADDR_000000000000000000000000000000000000C0DE

echo "[reentrencySuicide] Processing transaction number 1431 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0f54B021F07b633F494f49f6F7EC51C53862715a) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 23568566137450a2234287296fcfac0e33376f0f5eed39fdc7e4d115d9c0a67c --timeout 20 --value 0 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

