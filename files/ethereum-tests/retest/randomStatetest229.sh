# PRV_KEY for master sender 0xc58Ed11C754357d9ACE2355164f912fD91dFB217
PRV_KEY=16beefb3398cd1c24d5a3f314fc2d0f9ea5e93ef3d9f0865acbd8303f0f1a0ca
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest229 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/randomStatetest229Filler.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+100000))
echo "[randomStatetest229] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x21e294f128F39Cf1E0A47ED046C4E7907Eb6bdf8) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x21e294f128F39Cf1E0A47ED046C4E7907Eb6bdf8 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest229] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 1000000000000000000..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000000000000000000 --create 630000000a6012600039630000000a6000F342434145410844455055 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest229] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest229] Processing transaction number 758 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x21e294f128F39Cf1E0A47ED046C4E7907Eb6bdf8) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key e91a07f9ac499605ac9bc450e228fa6d8877eb4f245413f8aa20cbc1e6b31a35 --timeout 20 --value 100000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x42 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

