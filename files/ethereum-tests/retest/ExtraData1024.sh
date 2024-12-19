# PRV_KEY for master sender 0x7088958485C68659F20353Fd29a40F7A704C8cDe
PRV_KEY=dab9279c3938b7b605ddbdf13ad0f2a5fcd7b326ed2930cbf304fa278bc945d1
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test ExtraData1024 (src/BlockchainTestsFiller/InvalidBlocks/bcInvalidHeaderTest/ExtraData1024Filler.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+5000000000))
echo "[ExtraData1024] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x1C82b097d966496059702980C1bF6a96F640c266) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x1C82b097d966496059702980C1bF6a96F640c266 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[ExtraData1024] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 100..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100 --create 630000002c6012600039630000002c6000F37fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff600052600060206000a100 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[ExtraData1024] Processing transaction number 280 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x1C82b097d966496059702980C1bF6a96F640c266) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 57f2235908790c7285b6514bbff3dce62d7f25d1feaffef136f82e3e81cccf33 --timeout 20 --value 5000000000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

