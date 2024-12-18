# PRV_KEY for master sender 0x834899CC2127c9d843eDa29c4B941Dc1d6ACD2c5
PRV_KEY=616845152f41dc92c61819dd28b9819fc0a06631a067262b2be8c6535ad2e544
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test result_MergeEnvConvertion (src/BlockchainTestsFiller/InvalidBlocks/bcExpectSection/result_MergeEnvConvertionFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[result_MergeEnvConvertion] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE9241185020Bf86Ff623E6b7DE99d4a89239490B) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xE9241185020Bf86Ff623E6b7DE99d4a89239490B | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[result_MergeEnvConvertion] Processing transaction number 115 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE9241185020Bf86Ff623E6b7DE99d4a89239490B) to None"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key aa27e816c4bce0f00c5576bbdb16014ac8766393d937c825a64410c728fa77fb --timeout 20 --value 0 --create 0x600c60015560068060126000396000f300fe600f60005500 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

