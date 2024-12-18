# PRV_KEY for master sender 0xC8FC14d305d466f3DaaF184e0610db244e8F439C
PRV_KEY=70b55321eaf71dea02a568f2ea37f6e0eb8c5fc0ba57399552172d352198ccd3
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest160 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/randomStatetest160Filler.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+100000))
echo "[randomStatetest160] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8bcF21fA47961a2697C40437f0B299493F125612) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x8bcF21fA47961a2697C40437f0B299493F125612 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest160] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 1000000000000000000..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000000000000000000 --create 630000000e6012600039630000000e6000F34242434444454443525520307555 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest160] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest160] Processing transaction number 725 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8bcF21fA47961a2697C40437f0B299493F125612) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 036269503046474ac95c28534667f6f20a2079e18c15ec8ba87714d54e430bb6 --timeout 20 --value 100000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x42 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

