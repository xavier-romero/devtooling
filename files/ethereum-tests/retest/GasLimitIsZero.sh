# PRV_KEY for master sender 0x944f767408099a62fadc2283D196dE431E8Ed651
PRV_KEY=8e5c40698513adf87f17440dfcb27110c0809f0adee9d52fccc78714dd2274c5
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test GasLimitIsZero (src/BlockchainTestsFiller/InvalidBlocks/bcInvalidHeaderTest/GasLimitIsZeroFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+5000))
echo "[GasLimitIsZero] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xbbE9fe1D18e53e88E017dCe190E4c22B5e8d500C) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xbbE9fe1D18e53e88E017dCe190E4c22B5e8d500C | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[GasLimitIsZero] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 100..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100 --create 630000002c6012600039630000002c6000F37fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff600052600060206000a100 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[GasLimitIsZero] Processing transaction number 281 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xbbE9fe1D18e53e88E017dCe190E4c22B5e8d500C) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 98445e02ae3540b0cd8d34877448d6bd57bde573eb00151d1d9a039092bdf35a --timeout 20 --value 5000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

