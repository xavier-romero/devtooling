# PRV_KEY for master sender 0x9Fb1A0465a81580132bD4A5c02E48789cbe7E67a
PRV_KEY=5b62b28fdbdd3a4df6a35565b3f2172a9d90479cbaef65a14fe8411340c2df73
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest319BC (src/BlockchainTestsFiller/ValidBlocks/bcRandomBlockhashTest/randomStatetest319BCFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+100000))
echo "[randomStatetest319BC] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x80b89Bb81c32b35A28e8245D702b51DFc245B373) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x80b89Bb81c32b35A28e8245D702b51DFc245B373 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest319BC] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 1000000000000000000..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000000000000000000 --create 630000000b6012600039630000000b6000F344404243424142915a2055 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest319BC] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest319BC] Processing transaction number 597 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x80b89Bb81c32b35A28e8245D702b51DFc245B373) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key b68cf436d1dfc2db033943655ebc01686b638d2c6765e321509f6028d70d01ff --timeout 20 --value 100000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x42 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

