# PRV_KEY for master sender 0x63633A8f8426F74F0c0628AfA365504Ac827BB17
PRV_KEY=b6904a080a680e55a63467445daefa7825b6d739c5f9c614c2b17807170a82c5
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test ExtraData1024 (src/BlockchainTestsFiller/InvalidBlocks/bcInvalidHeaderTest/ExtraData1024Filler.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+5000000000))
echo "[ExtraData1024] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xBe1a1A16DC495F2B7f584f7b5e8702d42770e2F8) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xBe1a1A16DC495F2B7f584f7b5e8702d42770e2F8 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[ExtraData1024] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 100..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100 --create 630000002c6012600039630000002c6000F37fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff600052600060206000a100 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[ExtraData1024] Processing transaction number 280 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xBe1a1A16DC495F2B7f584f7b5e8702d42770e2F8) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 77527c1a3f20ea4feaa8375751f760b2bfbfb0086874551916bd5413ed191766 --timeout 20 --value 5000000000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

