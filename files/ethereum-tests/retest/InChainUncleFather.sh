# PRV_KEY for master sender 0x40dEa2B0be752bf05CDF19aB8374964208813f8d
PRV_KEY=9b66b9cfe1300abbdd7e24e153dbab067f030df4476bab32d30d194a62221f17
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test InChainUncleFather (src/BlockchainTestsFiller/InvalidBlocks/bcUncleTest/InChainUncleFatherFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[InChainUncleFather] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xB9557ef111B65aDcA7c1A40800685609C4360c4f) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xB9557ef111B65aDcA7c1A40800685609C4360c4f | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleFather] Processing transaction number 246 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xB9557ef111B65aDcA7c1A40800685609C4360c4f) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 755738922639459b1ce38a3361aed5233e270f58fe498213f4902a5599a3f5bc --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleFather] Processing transaction number 247 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xB9557ef111B65aDcA7c1A40800685609C4360c4f) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 755738922639459b1ce38a3361aed5233e270f58fe498213f4902a5599a3f5bc --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleFather] Processing transaction number 248 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xB9557ef111B65aDcA7c1A40800685609C4360c4f) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 755738922639459b1ce38a3361aed5233e270f58fe498213f4902a5599a3f5bc --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

