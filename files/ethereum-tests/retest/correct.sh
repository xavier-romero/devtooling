# PRV_KEY for master sender 0xb8647abC8059ee75016688B3c16458FA3997b430
PRV_KEY=f0df69008d11e05cd328c2dc5f77d6fdff73e7fac6466801534e47b71ddb0087
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test correct (src/BlockchainTestsFiller/InvalidBlocks/bcUncleHeaderValidity/correctFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[correct] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0B6eD885e0f65b26DAc13eE4B5Ef8f0c62F6A389) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x0B6eD885e0f65b26DAc13eE4B5Ef8f0c62F6A389 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[correct] Processing transaction number 37 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0B6eD885e0f65b26DAc13eE4B5Ef8f0c62F6A389) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 2b45db040ab81093a56ce1d7b9544bd0f57e74409d9e5788ed44ebe3cdd5e423 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[correct] Processing transaction number 38 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0B6eD885e0f65b26DAc13eE4B5Ef8f0c62F6A389) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 2b45db040ab81093a56ce1d7b9544bd0f57e74409d9e5788ed44ebe3cdd5e423 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[correct] Processing transaction number 39 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0B6eD885e0f65b26DAc13eE4B5Ef8f0c62F6A389) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 2b45db040ab81093a56ce1d7b9544bd0f57e74409d9e5788ed44ebe3cdd5e423 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

