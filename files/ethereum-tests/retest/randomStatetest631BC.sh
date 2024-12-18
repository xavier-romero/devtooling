# PRV_KEY for master sender 0x406eaA425BcAB1832CBaDc7e48F4F22F6eED3343
PRV_KEY=c7dca27afb617c4998e7890081344e9c4374daa33c3d234149488c35fa7afbe3
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest631BC (src/BlockchainTestsFiller/ValidBlocks/bcRandomBlockhashTest/randomStatetest631BCFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+1804331878))
echo "[randomStatetest631BC] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xa5ad1d8f21543aa2c3579366De937B2C4a8A8Ad9) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xa5ad1d8f21543aa2c3579366De937B2C4a8A8Ad9 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest631BC] Creating receiver 0x000f3df6d732807ef1319fb7b8bb8522d0beac02 with code and balance 0..."
ADDR_000F3DF6D732807EF1319FB7B8BB8522D0BEAC02=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6103b66103b6556103e86103e85561079e61079e556300000061602760003963000000616000F33373fffffffffffffffffffffffffffffffffffffffe14604d57602036146024575f5ffd5b5f35801560495762001fff810690815414603c575f5ffd5b62001fff01545f5260205ff35b5f5ffd5b62001fff42064281555f359062001fff015500 | jq -r .contractAddress)
echo $ADDR_000F3DF6D732807EF1319FB7B8BB8522D0BEAC02

echo "[randomStatetest631BC] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 0..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 63000000d3601260003963000000d36000F3447ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe7f000000000000000000000000ffffffffffffffffffffffffffffffffffffffff7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe7f0000000000000000000000010000000000000000000000000000000000000000407f000000000000000000000000000000000000000000000000000000000000c350383709658551993b760955 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest631BC] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest631BC] Processing transaction number 613 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xa5ad1d8f21543aa2c3579366De937B2C4a8A8Ad9) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key c69cdceb6d039bb12491179380f8cbe22802d866f2d4d641ead76bc075f94769 --timeout 20 --value 1804331878 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x447ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe7f000000000000000000000000ffffffffffffffffffffffffffffffffffffffff7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe7f0000000000000000000000010000000000000000000000000000000000000000407f000000000000000000000000000000000000000000000000000000000000c350383709658551993b7609 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

