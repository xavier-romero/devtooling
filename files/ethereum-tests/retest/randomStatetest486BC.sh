# PRV_KEY for master sender 0xF53C0b598291748106D82922a48Ecf06C3d8B3cE
PRV_KEY=51ad4ea01c4cf933fad416908b58d7865f22bcc70bb61e1e1fc1ef6b405a1eda
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest486BC (src/BlockchainTestsFiller/ValidBlocks/bcRandomBlockhashTest/randomStatetest486BCFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+100000))
echo "[randomStatetest486BC] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x50BF5f700F3E525384dF0C467435d27794795cD6) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x50BF5f700F3E525384dF0C467435d27794795cD6 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest486BC] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 1000000000000000000..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000000000000000000 --create 630000000b6012600039630000000b6000F34434404341424140203855 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest486BC] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest486BC] Processing transaction number 635 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x50BF5f700F3E525384dF0C467435d27794795cD6) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key af1f290d55fda75ae966e692dfd92b724f4d24468022df6ee76df524c9fbcc13 --timeout 20 --value 100000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x42 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

