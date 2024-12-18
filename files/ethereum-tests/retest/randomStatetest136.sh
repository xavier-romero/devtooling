# PRV_KEY for master sender 0xB68Cef64909dc0BBb141E2A635CE891a64982aD0
PRV_KEY=65c8326bcbd78b3354c1c9e0377e0764df0137fd89d1347e679343bb66a5fce7
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest136 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/randomStatetest136Filler.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+890399965))
echo "[randomStatetest136] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x223979B4BB149Db7599cA91bd16CB745422a7fef) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x223979B4BB149Db7599cA91bd16CB745422a7fef | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest136] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 0..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 630000009c6012600039630000009c6000F37f000000000000000000000000945304eb96065b2a98b57a48a06ae28d285a71b57ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe45437f0000000000000000000000000000000000000000000000000000000000000001a26f5a6e9570705019164232776c738c8d8760005155 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest136] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest136] Processing transaction number 752 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x223979B4BB149Db7599cA91bd16CB745422a7fef) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 8aec4a6bd58d634d07fd16ed71999159e22d9d5e042163eb2ae6cd06f6219602 --timeout 20 --value 890399965 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x7f000000000000000000000000945304eb96065b2a98b57a48a06ae28d285a71b57ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe45437f0000000000000000000000000000000000000000000000000000000000000001a26f5a6e9570705019164232776c738c8d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

