# PRV_KEY for master sender 0xC1c4A03dfd4DA030749E2F8804Be8ECA7285A60F
PRV_KEY=0280777684a151a395f6f5fa463f4f01b5fc20d8f07fca95fb80a973d56acd69
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest377 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/randomStatetest377Filler.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+100000))
echo "[randomStatetest377] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x239013b1d29D66D25931BC927e7421450777fc9b) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x239013b1d29D66D25931BC927e7421450777fc9b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest377] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 1000000000000000000..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000000000000000000 --create 630000000a6012600039630000000a6000F341444442444441450855 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest377] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest377] Processing transaction number 753 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x239013b1d29D66D25931BC927e7421450777fc9b) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 2a5e8c8e9b7759ed964628851cb0f71c77640d737bffe5148947908e6d920fdb --timeout 20 --value 100000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x42 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

