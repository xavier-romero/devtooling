# PRV_KEY for master sender 0xE2363303a06E5D5Add5eC2715af6746da4E8cDCF
PRV_KEY=038d274431e46698a5bfc08b4b8cf049317de93198df56c69e92b0e5d12ed47b
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test reentrencySuicide (src/BlockchainTestsFiller/ValidBlocks/bcValidBlockTest/reentrencySuicideFiller.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[reentrencySuicide] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xCf20BB794d032561ADF1db5e7D94C9944079f870) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xCf20BB794d032561ADF1db5e7D94C9944079f870 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[reentrencySuicide] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 100..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100 --create 6300000040601260003963000000406000F3600a6000526000600060206000600161c0de5af15061c0de6000526000600060206000600361c0de5af150600b6000526000600060206000600261c0de5af100 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[reentrencySuicide] Creating receiver 0x000000000000000000000000000000000000c0de with code and balance 0..."
ADDR_000000000000000000000000000000000000C0DE=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6300000005601260003963000000056000F3600035ff00 | jq -r .contractAddress)
echo $ADDR_000000000000000000000000000000000000C0DE

echo "[reentrencySuicide] Processing transaction number 1431 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xCf20BB794d032561ADF1db5e7D94C9944079f870) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 6010fbdc4cc4481b964e46250664fcecd3a0ef5c758d179221792b9b1e9259dd --timeout 20 --value 0 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

