# PRV_KEY for master sender 0xD86190eDd4e2f4C8874C6889E57e7f2a682eeb14
PRV_KEY=e5e29a3f4ba7ac898f2afb85f343124e3b5352753071fb81021e12e08e3a348b
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest109BC (src/BlockchainTestsFiller/ValidBlocks/bcRandomBlockhashTest/randomStatetest109BCFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+100000))
echo "[randomStatetest109BC] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE93d7520bD1Ed27aDf9f8558411C1e4dD65B0Ef3) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xE93d7520bD1Ed27aDf9f8558411C1e4dD65B0Ef3 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest109BC] Creating receiver 0x000f3df6d732807ef1319fb7b8bb8522d0beac02 with code and balance 0..."
ADDR_000F3DF6D732807EF1319FB7B8BB8522D0BEAC02=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6103b66103b6556103e86103e85561079e61079e556300000061602760003963000000616000F33373fffffffffffffffffffffffffffffffffffffffe14604d57602036146024575f5ffd5b5f35801560495762001fff810690815414603c575f5ffd5b62001fff01545f5260205ff35b5f5ffd5b62001fff42064281555f359062001fff015500 | jq -r .contractAddress)
echo $ADDR_000F3DF6D732807EF1319FB7B8BB8522D0BEAC02

echo "[randomStatetest109BC] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 1000000000000000000..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000000000000000000 --create 6300000007601260003963000000076000F344444131444055 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest109BC] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest109BC] Processing transaction number 670 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE93d7520bD1Ed27aDf9f8558411C1e4dD65B0Ef3) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 0d9f0e3658be7d26a9c98de961229dcc7c00892beecd954e117f12151f5bcd35 --timeout 20 --value 100000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x42 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi
