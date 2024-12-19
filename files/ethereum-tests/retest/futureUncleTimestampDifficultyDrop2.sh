# PRV_KEY for master sender 0x62bd88c18bC43Bb0833288220920f18903A940AF
PRV_KEY=84087623e3d38ed048b6e5a212799aac70bb49ab3f146d637a839f0f05196b2a
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test futureUncleTimestampDifficultyDrop2 (src/BlockchainTestsFiller/InvalidBlocks/bcUncleSpecialTests/futureUncleTimestampDifficultyDrop2Filler.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[futureUncleTimestampDifficultyDrop2] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x418D9FB1c89dc7167843AE70dA701D513F0A1D07) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x418D9FB1c89dc7167843AE70dA701D513F0A1D07 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[futureUncleTimestampDifficultyDrop2] Processing transaction number 19 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x418D9FB1c89dc7167843AE70dA701D513F0A1D07) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 764a95e69891fcc6fb3bf2bb28a41d8a2196e22ce802cc754380d1119dd0fdb9 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[futureUncleTimestampDifficultyDrop2] Processing transaction number 20 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x418D9FB1c89dc7167843AE70dA701D513F0A1D07) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 764a95e69891fcc6fb3bf2bb28a41d8a2196e22ce802cc754380d1119dd0fdb9 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[futureUncleTimestampDifficultyDrop2] Processing transaction number 21 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x418D9FB1c89dc7167843AE70dA701D513F0A1D07) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 764a95e69891fcc6fb3bf2bb28a41d8a2196e22ce802cc754380d1119dd0fdb9 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

