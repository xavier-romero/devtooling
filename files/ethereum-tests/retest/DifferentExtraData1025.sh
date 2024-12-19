# PRV_KEY for master sender 0x1E767213dDC46a70FceF3884901ff3B20D49f045
PRV_KEY=8b108694b91474eff0a9928b1ea528ce13b2ae7c34860b3446df457046f2c1ee
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test DifferentExtraData1025 (src/BlockchainTestsFiller/InvalidBlocks/bcInvalidHeaderTest/DifferentExtraData1025Filler.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+5000))
echo "[DifferentExtraData1025] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x43ABDE78D5961AdF606f41E74343dD4048605f7f) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x43ABDE78D5961AdF606f41E74343dD4048605f7f | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[DifferentExtraData1025] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 100..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100 --create 630000002c6012600039630000002c6000F37fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff600052600060206000a100 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[DifferentExtraData1025] Processing transaction number 274 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x43ABDE78D5961AdF606f41E74343dD4048605f7f) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 040daf8a54c775b8492c7323f70a44acae534ad5273cdf1f7eedd80191d74134 --timeout 20 --value 5000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

