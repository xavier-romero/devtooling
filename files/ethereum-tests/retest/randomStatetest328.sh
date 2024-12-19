# PRV_KEY for master sender 0xaA1364Dea552379eEA1bA6387c8EF88C3a6BB83d
PRV_KEY=172d71a3fdc05b5aaabf1d6cd400bb0768edee81fe4a6678c4f32bfb51e3a770
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest328 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/randomStatetest328Filler.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+100000))
echo "[randomStatetest328] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x239932D46bc510A994242094D890A75EccB39e5A) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x239932D46bc510A994242094D890A75EccB39e5A | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest328] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 1000000000000000000..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000000000000000000 --create 6300000003601260003963000000036000F3454555 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest328] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest328] Processing transaction number 750 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x239932D46bc510A994242094D890A75EccB39e5A) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key f671319b28ac924012c70e31f7281438f9bd17524975e0589474ef7adb5eddeb --timeout 20 --value 100000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x42 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

