# PRV_KEY for master sender 0xCe23Bd52003d4194418bEec8E5148fE45c1D4f66
PRV_KEY=7cfbe6922799df99c5642415e837caefc5f2866712c42ca9887bd6346a965f0d
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest374BC (src/BlockchainTestsFiller/ValidBlocks/bcRandomBlockhashTest/randomStatetest374BCFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+362352739))
echo "[randomStatetest374BC] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x21cc938ae60462FB4D77fdC549D93084FdE99266) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x21cc938ae60462FB4D77fdC549D93084FdE99266 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest374BC] Creating receiver 0x000f3df6d732807ef1319fb7b8bb8522d0beac02 with code and balance 0..."
ADDR_000F3DF6D732807EF1319FB7B8BB8522D0BEAC02=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6103b66103b6556103e86103e85561079e61079e556300000061602760003963000000616000F33373fffffffffffffffffffffffffffffffffffffffe14604d57602036146024575f5ffd5b5f35801560495762001fff810690815414603c575f5ffd5b62001fff01545f5260205ff35b5f5ffd5b62001fff42064281555f359062001fff015500 | jq -r .contractAddress)
echo $ADDR_000F3DF6D732807EF1319FB7B8BB8522D0BEAC02

echo "[randomStatetest374BC] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 0..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 63000000bd601260003963000000bd6000F37f00000000000000000000000000000000000000000000000000000000000000017f000000000000000000000000ffffffffffffffffffffffffffffffffffffffff7f000000000000000000000000ffffffffffffffffffffffffffffffffffffffff437f000000000000000000000000945304eb96065b2a98b57a48a06ae28d285a71b57f000000000000000000000000000000000000000000000000000000000000c35041406fa33a526031796e8c18836f61367c885560005155 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest374BC] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest374BC] Processing transaction number 614 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x21cc938ae60462FB4D77fdC549D93084FdE99266) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 80f12fdad74d62350293db1ecd2ce69d5a4c4a7f9ac7b314c1b9b22253499dba --timeout 20 --value 362352739 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x7f00000000000000000000000000000000000000000000000000000000000000017f000000000000000000000000ffffffffffffffffffffffffffffffffffffffff7f000000000000000000000000ffffffffffffffffffffffffffffffffffffffff437f000000000000000000000000945304eb96065b2a98b57a48a06ae28d285a71b57f000000000000000000000000000000000000000000000000000000000000c35041406fa33a526031796e8c18836f61367c88 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi
