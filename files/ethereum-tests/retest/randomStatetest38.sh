# PRV_KEY for master sender 0x489163a6705Ed71Da65b7ddAB9FA37D274cAB431
PRV_KEY=0b6ed613045a4f240c747ba17800fd0dafddeae8fab7b9ea6f2a6a1de0259b8f
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest38 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/randomStatetest38Filler.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+100000))
echo "[randomStatetest38] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xe56dA909E39c1971B8c275ae7Fe00F639bf2BD6a) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xe56dA909E39c1971B8c275ae7Fe00F639bf2BD6a | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest38] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 1000000000000000000..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000000000000000000 --create 6300000004601260003963000000046000F341314555 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest38] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest38] Processing transaction number 747 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xe56dA909E39c1971B8c275ae7Fe00F639bf2BD6a) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 3e43b668c35bdbf7f9b3949a423a116e53f84f8a038d0863814ff73cf96df27b --timeout 20 --value 100000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x42 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

