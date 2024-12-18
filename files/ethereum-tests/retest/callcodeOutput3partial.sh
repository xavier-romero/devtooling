# PRV_KEY for master sender 0xE23671529782F7A876f79460E66e33566FdCE0Bb
PRV_KEY=382da818878cf4cfe3a61c01362e17753c6856bf528f8d09891711d2f6ed3090
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test callcodeOutput3partial (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/callcodeOutput3partialFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+100000))
echo "[callcodeOutput3partial] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x311F28758aa61B951ec7a69793DD0c1Ebe656979) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x311F28758aa61B951ec7a69793DD0c1Ebe656979 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[callcodeOutput3partial] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 0..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 630000004d6012600039630000004d6000F37f5e20a0453cecd065ea59c37ac63e079ee08998b6045136a8ce6635c7912ec0b6600052600a60006000600073aaae7baea6a6c7c4c2dfeb977efac326af552d8761c350f45060005160005500 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[callcodeOutput3partial] Creating receiver 0xaaae7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 1000000000000000000..."
ADDR_AAAE7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000000000000000000 --create 6300000008601260003963000000086000F36001600101600055 | jq -r .contractAddress)
echo $ADDR_AAAE7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[callcodeOutput3partial] Processing transaction number 730 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x311F28758aa61B951ec7a69793DD0c1Ebe656979) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 50ca2260d6970c13cb8354ef8ac305e03cb6e6ecdc9b497d87aaffa552d1f2c0 --timeout 20 --value 100000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

