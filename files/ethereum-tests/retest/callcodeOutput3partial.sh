# PRV_KEY for master sender 0xA4c091f46d2dd04679bc94c1e89b3D44CcD93915
PRV_KEY=1abc4935d1788a07b99cac2b66f8a68df8fb8ee426648e798636777a8ec9ee6d
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test callcodeOutput3partial (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/callcodeOutput3partialFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+100000))
echo "[callcodeOutput3partial] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x70d6BBD2BF33f95ada3A9C6a3ecC13EB57D1fBfC) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x70d6BBD2BF33f95ada3A9C6a3ecC13EB57D1fBfC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[callcodeOutput3partial] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 0..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 630000004d6012600039630000004d6000F37f5e20a0453cecd065ea59c37ac63e079ee08998b6045136a8ce6635c7912ec0b6600052600a60006000600073aaae7baea6a6c7c4c2dfeb977efac326af552d8761c350f45060005160005500 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[callcodeOutput3partial] Creating receiver 0xaaae7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 1000000000000000000..."
ADDR_AAAE7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000000000000000000 --create 6300000008601260003963000000086000F36001600101600055 | jq -r .contractAddress)
echo $ADDR_AAAE7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[callcodeOutput3partial] Processing transaction number 730 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x70d6BBD2BF33f95ada3A9C6a3ecC13EB57D1fBfC) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 91f6ad432e9401e4a2dd1ef6b7584dfc792d8456aa7affc006a7910d2c68445b --timeout 20 --value 100000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

