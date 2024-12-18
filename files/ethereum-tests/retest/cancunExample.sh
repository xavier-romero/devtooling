# PRV_KEY for master sender 0xcAa4356564C7FE355D6be3A58CDcbe80dFd153e2
PRV_KEY=5594a2e55cecd8cdaded8b6f9e11ea4e6d0eb73fb4d85532d475bd55808051f6
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test cancunExample (src/EIPTestsFiller/BlockchainTests/bcExample/cancunExampleFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[cancunExample] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x1907Af7205e59af4fCfE4b632039Ee05C21CB9E0) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x1907Af7205e59af4fCfE4b632039Ee05C21CB9E0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[cancunExample] Creating receiver 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b with code and balance 100000000000000000..."
ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100000000000000000 --create 6300000007601260003963000000076000F360004960015500 | jq -r .contractAddress)
echo $ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B

echo "[cancunExample] Processing transaction number 914 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x1907Af7205e59af4fCfE4b632039Ee05C21CB9E0) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 153bf4a251d6b5da4249bbe33fd7d30c6d092b24475551ab0527feb79c3e4b45 --timeout 20 --value 0 $ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

