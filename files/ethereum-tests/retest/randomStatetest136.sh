# PRV_KEY for master sender 0x586fA5D9BEedfe161A88e6b0a4D6673a313f04D9
PRV_KEY=36a454c646c85d25c5301c8138b1454b7a2f71f8b7b6d534eeb99338b87d0b1c
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest136 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/randomStatetest136Filler.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+890399965))
echo "[randomStatetest136] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x04B9DfAE876499d8f468A0C5d62830f18160C619) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x04B9DfAE876499d8f468A0C5d62830f18160C619 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest136] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 0..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 630000009c6012600039630000009c6000F37f000000000000000000000000945304eb96065b2a98b57a48a06ae28d285a71b57ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe45437f0000000000000000000000000000000000000000000000000000000000000001a26f5a6e9570705019164232776c738c8d8760005155 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest136] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest136] Processing transaction number 752 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x04B9DfAE876499d8f468A0C5d62830f18160C619) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ae1b125ad26be63ad700425a812a40c13cba4f1da82c83138a23fa4263601533 --timeout 20 --value 890399965 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x7f000000000000000000000000945304eb96065b2a98b57a48a06ae28d285a71b57ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe45437f0000000000000000000000000000000000000000000000000000000000000001a26f5a6e9570705019164232776c738c8d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

