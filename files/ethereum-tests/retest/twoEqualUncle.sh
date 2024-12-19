# PRV_KEY for master sender 0x7953eD2a124576f366924fe672FDdF949fd0eb40
PRV_KEY=403528a57a77869577b7fd3dff1e4def71f547ab2766073384df6f8f594ad665
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test twoEqualUncle (src/BlockchainTestsFiller/InvalidBlocks/bcUncleTest/twoEqualUncleFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[twoEqualUncle] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD89d7960F5Ae6b97b15f9d9D77b91b883340Ef47) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xD89d7960F5Ae6b97b15f9d9D77b91b883340Ef47 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[twoEqualUncle] Processing transaction number 178 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD89d7960F5Ae6b97b15f9d9D77b91b883340Ef47) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 921041a5a6598e1d0af8f104f4b66dfe39f524bc95ba66c6413c3493938adeb9 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[twoEqualUncle] Processing transaction number 179 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD89d7960F5Ae6b97b15f9d9D77b91b883340Ef47) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 921041a5a6598e1d0af8f104f4b66dfe39f524bc95ba66c6413c3493938adeb9 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[twoEqualUncle] Processing transaction number 180 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD89d7960F5Ae6b97b15f9d9D77b91b883340Ef47) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 921041a5a6598e1d0af8f104f4b66dfe39f524bc95ba66c6413c3493938adeb9 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

