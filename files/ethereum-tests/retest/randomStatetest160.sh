# PRV_KEY for master sender 0xF7C438Ca8952435cE27faCBC2db2b410D27C78B3
PRV_KEY=c120fb6c693d2d4346c42abc4da98b796c8783c9fd5fa84cb643a35894af7c4f
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest160 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/randomStatetest160Filler.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+100000))
echo "[randomStatetest160] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x12EdB0d56Cf77F6746BD38F62190BBb305F61d1B) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x12EdB0d56Cf77F6746BD38F62190BBb305F61d1B | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest160] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 1000000000000000000..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000000000000000000 --create 630000000e6012600039630000000e6000F34242434444454443525520307555 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest160] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest160] Processing transaction number 725 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x12EdB0d56Cf77F6746BD38F62190BBb305F61d1B) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key a1fdf65d76075a99b85a5ab07b31cfc1523cc8bc3d8c26c90da2abcc9e0e639c --timeout 20 --value 100000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x42 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

