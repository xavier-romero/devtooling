# PRV_KEY for master sender 0x6407EAaf857bcf1723C617891cd9059527043846
PRV_KEY=01521e3287b61a82d2d7ea506c4f1edb800f014fb4912816464daeda9ac92241
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest619 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/randomStatetest619Filler.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+511599063))
echo "[randomStatetest619] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x10DA7407Fbf7b31A99e69e8ffcEeAd10dda8072e) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x10DA7407Fbf7b31A99e69e8ffcEeAd10dda8072e | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest619] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 0..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 63000000f0601260003963000000f06000F37f00000000000000000000000100000000000000000000000000000000000000007f000000000000000000000000945304eb96065b2a98b57a48a06ae28d285a71b57f000000000000000000000000000000000000000000000000000000000000c3507f000000000000000000000000000000000000000000000000000000000000c3507fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff547f000000000000000000000000945304eb96065b2a98b57a48a06ae28d285a71b57f00000000000000000000000100000000000000000000000000000000000000005543374560005155 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest619] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest619] Processing transaction number 779 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x10DA7407Fbf7b31A99e69e8ffcEeAd10dda8072e) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key bce5af7a0d7427851ccad1d4fdad21029d0dbf3003c046b406799e76e2925309 --timeout 20 --value 511599063 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x7f00000000000000000000000100000000000000000000000000000000000000007f000000000000000000000000945304eb96065b2a98b57a48a06ae28d285a71b57f000000000000000000000000000000000000000000000000000000000000c3507f000000000000000000000000000000000000000000000000000000000000c3507fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff547f000000000000000000000000945304eb96065b2a98b57a48a06ae28d285a71b57f000000000000000000000001000000000000000000000000000000000000000055433745 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi
