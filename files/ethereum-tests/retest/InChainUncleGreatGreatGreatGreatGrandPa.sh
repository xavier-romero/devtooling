# PRV_KEY for master sender 0xeb023Ab847f00Ca7046Be013c640dde3B5058591
PRV_KEY=62a2fc802c6d7675afc57e2381a1942d05ab6800604c9d8eafa5dc0944bd1bd3
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test InChainUncleGreatGreatGreatGreatGrandPa (src/BlockchainTestsFiller/InvalidBlocks/bcUncleTest/InChainUncleGreatGreatGreatGreatGrandPaFiller.json)"

AMOUNT=$((2*150000*7*$GAS_PRICE+70))
echo "[InChainUncleGreatGreatGreatGreatGrandPa] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x12125c3d6e1bCD27f32a52585c16538C658481Fa) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x12125c3d6e1bCD27f32a52585c16538C658481Fa | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleGreatGreatGreatGreatGrandPa] Processing transaction number 197 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x12125c3d6e1bCD27f32a52585c16538C658481Fa) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key e33e98977b6391583672d72faf323129bb1b6c17553c6394a0f3192f79edb177 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleGreatGreatGreatGreatGrandPa] Processing transaction number 198 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x12125c3d6e1bCD27f32a52585c16538C658481Fa) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key e33e98977b6391583672d72faf323129bb1b6c17553c6394a0f3192f79edb177 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleGreatGreatGreatGreatGrandPa] Processing transaction number 199 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x12125c3d6e1bCD27f32a52585c16538C658481Fa) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key e33e98977b6391583672d72faf323129bb1b6c17553c6394a0f3192f79edb177 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleGreatGreatGreatGreatGrandPa] Processing transaction number 200 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x12125c3d6e1bCD27f32a52585c16538C658481Fa) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key e33e98977b6391583672d72faf323129bb1b6c17553c6394a0f3192f79edb177 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleGreatGreatGreatGreatGrandPa] Processing transaction number 201 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x12125c3d6e1bCD27f32a52585c16538C658481Fa) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key e33e98977b6391583672d72faf323129bb1b6c17553c6394a0f3192f79edb177 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleGreatGreatGreatGreatGrandPa] Processing transaction number 202 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x12125c3d6e1bCD27f32a52585c16538C658481Fa) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key e33e98977b6391583672d72faf323129bb1b6c17553c6394a0f3192f79edb177 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleGreatGreatGreatGreatGrandPa] Processing transaction number 203 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x12125c3d6e1bCD27f32a52585c16538C658481Fa) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key e33e98977b6391583672d72faf323129bb1b6c17553c6394a0f3192f79edb177 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

