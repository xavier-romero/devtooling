# PRV_KEY for master sender 0x47776b7cA4fAdEcc7Cbc92C97501E6CcDB48B870
PRV_KEY=0ecddf7a8de16efb8ec5664bb811c6581c0ee3109506b18c2b11472424c92080
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest170 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/randomStatetest170Filler.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+100000))
echo "[randomStatetest170] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE057C89456B0E1223216A83F42bF0645F8270F0d) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xE057C89456B0E1223216A83F42bF0645F8270F0d | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest170] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 1000000000000000000..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000000000000000000 --create 6300000005601260003963000000056000F34445413155 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest170] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest170] Processing transaction number 731 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE057C89456B0E1223216A83F42bF0645F8270F0d) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ce4493a141075d1331116ab760bc572e1384eb4a60671ae3217a724b41ab7668 --timeout 20 --value 100000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x42 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

