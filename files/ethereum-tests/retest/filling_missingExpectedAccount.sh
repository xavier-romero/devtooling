# PRV_KEY for master sender 0xD98E343ecf37Af11376424b01D7385Be08fB9C56
PRV_KEY=d619ac13dc4153eb87894cc42d1a68ac7825004e972918cc4a7933b6c088cd56
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test filling_missingExpectedAccount (src/BlockchainTestsFiller/InvalidBlocks/bcExpectSection/filling_missingExpectedAccountFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+10))
echo "[filling_missingExpectedAccount] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x45b2e68F00e70A260B22c1Dc4EFa2fC3BFEB0b79) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x45b2e68F00e70A260B22c1Dc4EFa2fC3BFEB0b79 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[filling_missingExpectedAccount] Processing transaction number 119 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x45b2e68F00e70A260B22c1Dc4EFa2fC3BFEB0b79) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key dcc19f796a36a5f84b05172de91db1fe9ce453ddd5194d691601489e7d25f138 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

