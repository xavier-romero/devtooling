# PRV_KEY for master sender 0x4Dbb6BE904566D3135d4f40c44f549Da0981F7ef
PRV_KEY=2da08f05b8f9e4777f132b1e3f57abc81e0fee8e5c62981dd45c923a5a7bf1e9
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test log1_wrongBlockNumber (src/BlockchainTestsFiller/InvalidBlocks/bcInvalidHeaderTest/log1_wrongBlockNumberFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+5000))
echo "[log1_wrongBlockNumber] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x58D82D77d36De270f6e72Ed50827944204368013) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x58D82D77d36De270f6e72Ed50827944204368013 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[log1_wrongBlockNumber] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 100..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100 --create 630000002c6012600039630000002c6000F37fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff600052600060206000a100 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[log1_wrongBlockNumber] Processing transaction number 264 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x58D82D77d36De270f6e72Ed50827944204368013) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 3cae82eabde697c7dd4a891907a8323a0ca5268589b7d003ceafdc83c356f724 --timeout 20 --value 5000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

