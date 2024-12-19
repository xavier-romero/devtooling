# PRV_KEY for master sender 0xC96A1F576C5b2623b6D4b7Be4bB66c61f1B70e09
PRV_KEY=924f3ec3f59811a671a3848133a8b6ac6233f4c092d2dfe0d18d90c9b41358f6
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest253BC (src/BlockchainTestsFiller/ValidBlocks/bcRandomBlockhashTest/randomStatetest253BCFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+100000))
echo "[randomStatetest253BC] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x983bD29a300dE104b502706F28C7A11c406C694c) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x983bD29a300dE104b502706F28C7A11c406C694c | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest253BC] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 1000000000000000000..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000000000000000000 --create 630000000c6012600039630000000c6000F34243428144424140f271f155 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest253BC] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest253BC] Processing transaction number 673 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x983bD29a300dE104b502706F28C7A11c406C694c) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 133e4316762b59e1576a7d86fe55684fbecfef57fbab31fd80e554965243f132 --timeout 20 --value 100000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x42 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

