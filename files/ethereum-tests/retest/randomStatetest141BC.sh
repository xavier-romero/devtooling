# PRV_KEY for master sender 0xDB4f690dAad8e859dd7d05AA2dD8B9dcb647D6dF
PRV_KEY=4b8df6494d55c966f8d18b94d50aa2612e495e676d4c97d27fcbd8419cb7e8d0
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest141BC (src/BlockchainTestsFiller/ValidBlocks/bcRandomBlockhashTest/randomStatetest141BCFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+100000))
echo "[randomStatetest141BC] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x2e6CE490016Dc3A70d6758334E943C1272544E87) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x2e6CE490016Dc3A70d6758334E943C1272544E87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest141BC] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 1000000000000000000..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000000000000000000 --create 6300000008601260003963000000086000F34544424140204555 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest141BC] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest141BC] Processing transaction number 663 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x2e6CE490016Dc3A70d6758334E943C1272544E87) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 166850cd121eb211daa64e7e2f2a65209b56ddc603aa9c7b351d345413f096a4 --timeout 20 --value 100000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x42 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

