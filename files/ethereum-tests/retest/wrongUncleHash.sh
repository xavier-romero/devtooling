# PRV_KEY for master sender 0x016dcBAa06e7E033960f5D5D43605b03faaa9567
PRV_KEY=e37327e0994b55a428f5320ae73e42a42c122fcbc33016f4ed9c6014e059de7b
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test wrongUncleHash (src/BlockchainTestsFiller/InvalidBlocks/bcInvalidHeaderTest/wrongUncleHashFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+5000))
echo "[wrongUncleHash] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x3fa4C0F750508d5B7C1f30c54a76De733026EA3F) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x3fa4C0F750508d5B7C1f30c54a76De733026EA3F | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[wrongUncleHash] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 100..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100 --create 630000002c6012600039630000002c6000F37fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff600052600060206000a100 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[wrongUncleHash] Processing transaction number 270 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x3fa4C0F750508d5B7C1f30c54a76De733026EA3F) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key e95451c11d5205a76ec72ed28edc4690c54aa91dbd38d0749a91bcce79d36611 --timeout 20 --value 5000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

