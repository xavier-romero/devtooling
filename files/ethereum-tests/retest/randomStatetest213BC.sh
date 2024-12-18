# PRV_KEY for master sender 0xBFC256bDFCdfD2441Cca9b20De473f9a2b52D735
PRV_KEY=a81ccab458641bf5b7f264589a19cd05dc6d28d044e2b3e45bfae7ff108c0171
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest213BC (src/BlockchainTestsFiller/ValidBlocks/bcRandomBlockhashTest/randomStatetest213BCFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+1640847204))
echo "[randomStatetest213BC] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xa11B3EF0a82EeB7D7E9d56ae0eEeb17BFb4892E7) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xa11B3EF0a82EeB7D7E9d56ae0eEeb17BFb4892E7 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest213BC] Creating receiver 0x000f3df6d732807ef1319fb7b8bb8522d0beac02 with code and balance 0..."
ADDR_000F3DF6D732807EF1319FB7B8BB8522D0BEAC02=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6103b66103b6556103e86103e85561079e61079e556300000061602760003963000000616000F33373fffffffffffffffffffffffffffffffffffffffe14604d57602036146024575f5ffd5b5f35801560495762001fff810690815414603c575f5ffd5b62001fff01545f5260205ff35b5f5ffd5b62001fff42064281555f359062001fff015500 | jq -r .contractAddress)
echo $ADDR_000F3DF6D732807EF1319FB7B8BB8522D0BEAC02

echo "[randomStatetest213BC] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 0..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 630000007d6012600039630000007d6000F34338407f000000000000000000000000ffffffffffffffffffffffffffffffffffffffff425a7f000000000000000000000000945304eb96065b2a98b57a48a06ae28d285a71b57fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff6f3b1860586d8587cc788e106fa3937f5560005155 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest213BC] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest213BC] Processing transaction number 637 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xa11B3EF0a82EeB7D7E9d56ae0eEeb17BFb4892E7) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key f3ddbd071a174ad24a7b3a744b502b2c0139b236736cc3063bfb5ec0bb84a89a --timeout 20 --value 1640847204 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x4338407f000000000000000000000000ffffffffffffffffffffffffffffffffffffffff425a7f000000000000000000000000945304eb96065b2a98b57a48a06ae28d285a71b57fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff6f3b1860586d8587cc788e106fa3937f | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

