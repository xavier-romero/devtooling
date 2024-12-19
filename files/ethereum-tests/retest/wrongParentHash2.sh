# PRV_KEY for master sender 0x6CfeCE466ff54955FDFD792Fe722F6CC9e6D0358
PRV_KEY=769c018d8adca9431bba410d8de9c1aadf3088a1046e2f1dd56ba019f36cfb33
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test wrongParentHash2 (src/BlockchainTestsFiller/InvalidBlocks/bcInvalidHeaderTest/wrongParentHash2Filler.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+5000))
echo "[wrongParentHash2] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x4A2f7e98a9f06c41E5d230007392bF9D6B1F99fE) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x4A2f7e98a9f06c41E5d230007392bF9D6B1F99fE | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[wrongParentHash2] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 100..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100 --create 630000002c6012600039630000002c6000F37fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff600052600060206000a100 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[wrongParentHash2] Processing transaction number 276 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x4A2f7e98a9f06c41E5d230007392bF9D6B1F99fE) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 220e3bd953084fcaf7d2abc3ffe29562003be367c19bb095cc2306cd816fce5f --timeout 20 --value 5000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

