# PRV_KEY for master sender 0x73e999b55e6100aa37E4D998D24Ef4752C32F307
PRV_KEY=8ebe17276bc085f5fe842115c9deb98ba40616731417d2ccd2280c2261a708c0
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test InChainUncleGrandPa (src/BlockchainTestsFiller/InvalidBlocks/bcUncleTest/InChainUncleGrandPaFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[InChainUncleGrandPa] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD7dcfA9B4A20B5743B76Cb8E59C64AabC4883dFe) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xD7dcfA9B4A20B5743B76Cb8E59C64AabC4883dFe | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleGrandPa] Processing transaction number 230 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD7dcfA9B4A20B5743B76Cb8E59C64AabC4883dFe) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 12239f003e4b30b3a4b21fda8b9b4da0531622a536c2eabd3dc2e918195fc86d --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleGrandPa] Processing transaction number 231 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD7dcfA9B4A20B5743B76Cb8E59C64AabC4883dFe) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 12239f003e4b30b3a4b21fda8b9b4da0531622a536c2eabd3dc2e918195fc86d --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[InChainUncleGrandPa] Processing transaction number 232 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD7dcfA9B4A20B5743B76Cb8E59C64AabC4883dFe) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 12239f003e4b30b3a4b21fda8b9b4da0531622a536c2eabd3dc2e918195fc86d --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

