# PRV_KEY for master sender 0xa0318109762038310bB1769A0A446DaA8b812469
PRV_KEY=ed43d837aa927e5e5c7568ecf4203326d3eb5d23ee2e9323c6720ece27a2feac
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test gasLimitTooHigh (src/BlockchainTestsFiller/InvalidBlocks/bcUncleHeaderValidity/gasLimitTooHighFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[gasLimitTooHigh] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x5F2Bcb1c80A1C0076A64c65aF6bD341b399350Fb) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x5F2Bcb1c80A1C0076A64c65aF6bD341b399350Fb | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[gasLimitTooHigh] Processing transaction number 94 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x5F2Bcb1c80A1C0076A64c65aF6bD341b399350Fb) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key d8bfb27dc75e22db8570f8817dae4e376d45ed0c5bd4eecdef104b170b8d7d91 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[gasLimitTooHigh] Processing transaction number 95 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x5F2Bcb1c80A1C0076A64c65aF6bD341b399350Fb) to 0x0000000000000000000000000000000000000000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key d8bfb27dc75e22db8570f8817dae4e376d45ed0c5bd4eecdef104b170b8d7d91 --timeout 20 --value 10 0x0000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[gasLimitTooHigh] Processing transaction number 96 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x5F2Bcb1c80A1C0076A64c65aF6bD341b399350Fb) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key d8bfb27dc75e22db8570f8817dae4e376d45ed0c5bd4eecdef104b170b8d7d91 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

