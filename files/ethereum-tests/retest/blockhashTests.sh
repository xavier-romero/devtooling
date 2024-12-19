# PRV_KEY for master sender 0x8Fa4A125158eB89465963bB5A8EC8b30406C6CaA
PRV_KEY=9051c7711667563484d3a1f39783ce2c57cde8d9da3d2655539b4dbcbcf6c661
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test blockhashTests (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/blockhashTestsFiller.json)"

AMOUNT=$((2*150000*5*$GAS_PRICE+0))
echo "[blockhashTests] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xDF4F8559b2B640143053C5e89EC28a70ddD2fd15) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xDF4F8559b2B640143053C5e89EC28a70ddD2fd15 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[blockhashTests] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 1000000000000000000..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000000000000000000 --create 6300000013601260003963000000136000F360004060005560054060015560044060025500 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[blockhashTests] Creating receiver 0x195e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 1000000000000000000..."
ADDR_195E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000000000000000000 --create 630000000c6012600039630000000c6000F361010043035b804050600556 | jq -r .contractAddress)
echo $ADDR_195E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[blockhashTests] Creating receiver 0x295e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 1000000000000000000..."
ADDR_295E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000000000000000000 --create 6300000014601260003963000000146000F36000406000556004406001556101004060025500 | jq -r .contractAddress)
echo $ADDR_295E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[blockhashTests] Creating receiver 0x395e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 1000000000000000000..."
ADDR_395E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000000000000000000 --create 6300000015601260003963000000156000F3600040600055680100000000000000014060015500 | jq -r .contractAddress)
echo $ADDR_395E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[blockhashTests] Creating receiver 0x495e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 1000000000000000000..."
ADDR_495E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000000000000000000 --create 6300000033601260003963000000336000F3600040600055610101406001557fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff4060025500 | jq -r .contractAddress)
echo $ADDR_495E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[blockhashTests] Processing transaction number 737 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xDF4F8559b2B640143053C5e89EC28a70ddD2fd15) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key eba7e4ab4169d8f26ca21e613ea6a8099009b212d1bd3c3bf2e4239ac44d8cd9 --timeout 20 --value 0 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[blockhashTests] Processing transaction number 738 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xDF4F8559b2B640143053C5e89EC28a70ddD2fd15) to 0x195e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key eba7e4ab4169d8f26ca21e613ea6a8099009b212d1bd3c3bf2e4239ac44d8cd9 --timeout 20 --value 0 $ADDR_195E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[blockhashTests] Processing transaction number 739 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xDF4F8559b2B640143053C5e89EC28a70ddD2fd15) to 0x295e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key eba7e4ab4169d8f26ca21e613ea6a8099009b212d1bd3c3bf2e4239ac44d8cd9 --timeout 20 --value 0 $ADDR_295E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[blockhashTests] Processing transaction number 740 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xDF4F8559b2B640143053C5e89EC28a70ddD2fd15) to 0x395e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key eba7e4ab4169d8f26ca21e613ea6a8099009b212d1bd3c3bf2e4239ac44d8cd9 --timeout 20 --value 0 $ADDR_395E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[blockhashTests] Processing transaction number 741 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xDF4F8559b2B640143053C5e89EC28a70ddD2fd15) to 0x495e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key eba7e4ab4169d8f26ca21e613ea6a8099009b212d1bd3c3bf2e4239ac44d8cd9 --timeout 20 --value 0 $ADDR_495E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

