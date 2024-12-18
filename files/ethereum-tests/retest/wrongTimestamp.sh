# PRV_KEY for master sender 0x7A23b40B246Ca3ebf66461C85F1A523FEba88E69
PRV_KEY=c2a48ab21b0f1b315a34d51eed53ac13d58d2e273ce1f156b40f8b039bb57f75
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test wrongTimestamp (src/BlockchainTestsFiller/InvalidBlocks/bcInvalidHeaderTest/wrongTimestampFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+5000))
echo "[wrongTimestamp] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x712DD8BC77999a85b3B7C17352ECA001E03F67ed) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x712DD8BC77999a85b3B7C17352ECA001E03F67ed | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[wrongTimestamp] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 100..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100 --create 630000002c6012600039630000002c6000F37fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff600052600060206000a100 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[wrongTimestamp] Processing transaction number 282 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x712DD8BC77999a85b3B7C17352ECA001E03F67ed) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 571c85e6f00ad4d560bacd16fbb742acb29d0251a84f4b70a1e474714a12055c --timeout 20 --value 5000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

