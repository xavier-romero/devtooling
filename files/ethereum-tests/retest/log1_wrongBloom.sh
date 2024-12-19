# PRV_KEY for master sender 0x7ea6F7678e7266380F87180431248077E4858032
PRV_KEY=ac4dffcefbaa60a38fa046418bebedff919cf162626804f071eeb88140613931
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test log1_wrongBloom (src/BlockchainTestsFiller/InvalidBlocks/bcInvalidHeaderTest/log1_wrongBloomFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+5000))
echo "[log1_wrongBloom] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x3B2E995a7Bf89961bF4cf99B6bDFac1f9626CC86) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x3B2E995a7Bf89961bF4cf99B6bDFac1f9626CC86 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[log1_wrongBloom] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 100..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100 --create 630000002c6012600039630000002c6000F37fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff600052600060206000a100 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[log1_wrongBloom] Processing transaction number 271 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x3B2E995a7Bf89961bF4cf99B6bDFac1f9626CC86) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 0923857f357fce168100949aa82fa517b7079b7374040f8dbcec882f1dea21ba --timeout 20 --value 5000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

