# PRV_KEY for master sender 0xC1f91252D2554aD82C96E7c28921820D62f1c336
PRV_KEY=1fc605ef3f129c5ea8af89fb2bdb7dedb2032c7a0beba749aa5bcb9e18959c69
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test wrongUncleHash (src/BlockchainTestsFiller/InvalidBlocks/bcInvalidHeaderTest/wrongUncleHashFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+5000))
echo "[wrongUncleHash] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0bC111fb0f7892F6B8A89BE33aE91081E9661DE3) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x0bC111fb0f7892F6B8A89BE33aE91081E9661DE3 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[wrongUncleHash] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 100..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100 --create 630000002c6012600039630000002c6000F37fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff600052600060206000a100 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[wrongUncleHash] Processing transaction number 270 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0bC111fb0f7892F6B8A89BE33aE91081E9661DE3) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 929d0a5abb043d7b889425bf234fb4da46b8af0cebb325e205b27643f82ebb72 --timeout 20 --value 5000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

