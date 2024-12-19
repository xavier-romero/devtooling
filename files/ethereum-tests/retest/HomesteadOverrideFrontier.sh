# PRV_KEY for master sender 0x1ACBDd7acd32E849e160f8745A6FAE3D0419c749
PRV_KEY=651dfbdb6e019eec5cb4966a9a7a96e89c92846cbafeaf5388da845f45b994a5
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test HomesteadOverrideFrontier (src/BlockchainTestsFiller/TransitionTests/bcFrontierToHomestead/HomesteadOverrideFrontierFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+12))
echo "[HomesteadOverrideFrontier] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xd3547aAC5b0fed3972E6ff66cC8D6E234953d61A) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xd3547aAC5b0fed3972E6ff66cC8D6E234953d61A | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[HomesteadOverrideFrontier] Processing transaction number 876 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xd3547aAC5b0fed3972E6ff66cC8D6E234953d61A) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 7a9f683d59fc661ac6e35d2ad7d1fd8641c4fc3c70c5c264ec75a9079ad24f1c --timeout 20 --value 1 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[HomesteadOverrideFrontier] Processing transaction number 877 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xd3547aAC5b0fed3972E6ff66cC8D6E234953d61A) to None"...
echo "[HomesteadOverrideFrontier] Processing transaction number 877 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xd3547aAC5b0fed3972E6ff66cC8D6E234953d61A) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 7a9f683d59fc661ac6e35d2ad7d1fd8641c4fc3c70c5c264ec75a9079ad24f1c --timeout 20 --value 10 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

