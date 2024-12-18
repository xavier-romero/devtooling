# PRV_KEY for master sender 0xA66b3153C65e0Fd4F8c9a3cFCcaEeB7F6333EA91
PRV_KEY=3f3ae1d9bab656c53cf2d580923eb65c0818932c2a28cbb9d449774d47723869
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest186BC (src/BlockchainTestsFiller/ValidBlocks/bcRandomBlockhashTest/randomStatetest186BCFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+100000))
echo "[randomStatetest186BC] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xC7cd2b734Ef416dDECbA9a94F189c77b38400D5F) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xC7cd2b734Ef416dDECbA9a94F189c77b38400D5F | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest186BC] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 1000000000000000000..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000000000000000000 --create 630000000d6012600039630000000d6000F345454340424244444131599455 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest186BC] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest186BC] Processing transaction number 684 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xC7cd2b734Ef416dDECbA9a94F189c77b38400D5F) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 1d6e168798ea2340c6aac453c78b2580ccad02cfc7fd50d1599492d4e97b5f24 --timeout 20 --value 100000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x42 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

