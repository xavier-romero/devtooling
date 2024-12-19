# PRV_KEY for master sender 0x8ea90e1E7C05232669dd81E0dD45df5A5159FE3b
PRV_KEY=7fc32ce3a11e6402ba6d13e4a2a63ddd1b845a468d217331fee5b4e11c109560
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest141BC (src/BlockchainTestsFiller/ValidBlocks/bcRandomBlockhashTest/randomStatetest141BCFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+100000))
echo "[randomStatetest141BC] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x589FEd71ab2EFc2b6C4DF182bdF6C639a9E996B0) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x589FEd71ab2EFc2b6C4DF182bdF6C639a9E996B0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest141BC] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 1000000000000000000..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000000000000000000 --create 6300000008601260003963000000086000F34544424140204555 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest141BC] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest141BC] Processing transaction number 663 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x589FEd71ab2EFc2b6C4DF182bdF6C639a9E996B0) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ed96abe38c2b3e1e2aff7ae8f5350378467545f2fa86a594d171ec043a362d64 --timeout 20 --value 100000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x42 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

