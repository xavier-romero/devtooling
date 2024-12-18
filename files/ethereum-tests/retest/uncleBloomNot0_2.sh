# PRV_KEY for master sender 0xAd047dc7b81C8E5FfDa3f7463754616Ad1227ae8
PRV_KEY=8f8c91b8bab4acf8cdbc65a35108649d6ccd29b2fb934683266b6389e6e9d92f
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test uncleBloomNot0_2 (src/BlockchainTestsFiller/InvalidBlocks/bcUncleSpecialTests/uncleBloomNot0_2Filler.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[uncleBloomNot0_2] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x99d8c9cCBe1704399562a1Eef4B6f68De6D35e03) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x99d8c9cCBe1704399562a1Eef4B6f68De6D35e03 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[uncleBloomNot0_2] Processing transaction number 25 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x99d8c9cCBe1704399562a1Eef4B6f68De6D35e03) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key f22df583ff0e88799c4e42a777ee674592a08ce0b73b7b6c6555dd28051ee7bb --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[uncleBloomNot0_2] Processing transaction number 26 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x99d8c9cCBe1704399562a1Eef4B6f68De6D35e03) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key f22df583ff0e88799c4e42a777ee674592a08ce0b73b7b6c6555dd28051ee7bb --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[uncleBloomNot0_2] Processing transaction number 27 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x99d8c9cCBe1704399562a1Eef4B6f68De6D35e03) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key f22df583ff0e88799c4e42a777ee674592a08ce0b73b7b6c6555dd28051ee7bb --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

