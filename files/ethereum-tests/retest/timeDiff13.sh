# PRV_KEY for master sender 0xdD3EdE6006819350E5E1DFaf9c5fBabF1275a9E0
PRV_KEY=07f697ebe511273330bb39327d2a021ec9890c80ab9df37fa7c54f26c912e0d6
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test timeDiff13 (src/BlockchainTestsFiller/ValidBlocks/bcValidBlockTest/timeDiff13Filler.json)"

AMOUNT=$((2*150000*2*$GAS_PRICE+12000))
echo "[timeDiff13] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xcEFA9B507574CEb39B1bf9a4cE95D4c4aB3Ba312) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xcEFA9B507574CEb39B1bf9a4cE95D4c4aB3Ba312 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[timeDiff13] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 100..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100 --create 630000002c6012600039630000002c6000F37fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff600052600060206000a100 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[timeDiff13] Processing transaction number 706 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xcEFA9B507574CEb39B1bf9a4cE95D4c4aB3Ba312) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 3e33195b3468479e41b596843a6a059de9e25cfc9c5ecf7108f38ba9b129d011 --timeout 20 --value 5000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[timeDiff13] Processing transaction number 707 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xcEFA9B507574CEb39B1bf9a4cE95D4c4aB3Ba312) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 3e33195b3468479e41b596843a6a059de9e25cfc9c5ecf7108f38ba9b129d011 --timeout 20 --value 7000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

