# PRV_KEY for master sender 0x4C0d26fe0f889b980fF6111cC0aB930F4918b058
PRV_KEY=9292692a9a81297c2a6ab0168ceffae1f982dbeaa17f97a198339c88d592bae9
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test SuicidesMixingCoinbase2 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/SuicidesMixingCoinbase2Filler.json)"

AMOUNT=$((2*150000*2*$GAS_PRICE+20))
echo "[SuicidesMixingCoinbase2] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xA792BfdC1783A8DeD87E16C0767E7d32cF41f9cA) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xA792BfdC1783A8DeD87E16C0767E7d32cF41f9cA | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[SuicidesMixingCoinbase2] Creating receiver 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b with code and balance 1000..."
ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000 --create 6300000017601260003963000000176000F373c94f5374fce5edbc8e2a8697c15331677e6ebf0bff00 | jq -r .contractAddress)
echo $ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B

echo "[SuicidesMixingCoinbase2] Creating receiver 0xb24f5374fce5edbc8e2a8697c15331677e6ebf0b with code and balance 1000..."
ADDR_B24F5374FCE5EDBC8E2A8697C15331677E6EBF0B=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000 --create 6300000017601260003963000000176000F373c24f5374fce5edbc8e2a8697c15331677e6ebf0bff00 | jq -r .contractAddress)
echo $ADDR_B24F5374FCE5EDBC8E2A8697C15331677E6EBF0B

echo "[SuicidesMixingCoinbase2] Processing transaction number 720 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xA792BfdC1783A8DeD87E16C0767E7d32cF41f9cA) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key eb59f6423d6fe8aa6eb6fd5f3bc92e5849bb497d39298112aa0225cf7f32d04f --timeout 20 --value 10 $ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[SuicidesMixingCoinbase2] Processing transaction number 721 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xA792BfdC1783A8DeD87E16C0767E7d32cF41f9cA) to 0xb24f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key eb59f6423d6fe8aa6eb6fd5f3bc92e5849bb497d39298112aa0225cf7f32d04f --timeout 20 --value 10 $ADDR_B24F5374FCE5EDBC8E2A8697C15331677E6EBF0B | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

