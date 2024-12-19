# PRV_KEY for master sender 0x245711A82665267C2a1848b3D4d278231492A339
PRV_KEY=3b216655d2bd23911d93907c4632d6d4a4eb69b7d72b9ad7ce6a49aa881a2427
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test callcodeOutput2 (src/BlockchainTestsFiller/InvalidBlocks/bcStateTests/callcodeOutput2Filler.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+300000))
echo "[callcodeOutput2] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x73C7C4D8322fa349E66eA7D9d27a22bF64e4a75c) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x73C7C4D8322fa349E66eA7D9d27a22bF64e4a75c | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[callcodeOutput2] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 0..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 630000004d6012600039630000004d6000F37f5e20a0453cecd065ea59c37ac63e079ee08998b6045136a8ce6635c7912ec0b6600052600060006020600073aaae7baea6a6c7c4c2dfeb977efac326af552d8761c350f45060005160005500 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[callcodeOutput2] Creating receiver 0xaaae7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 1000000000000000000..."
ADDR_AAAE7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000000000000000000 --create 6300000008601260003963000000086000F36001600101600055 | jq -r .contractAddress)
echo $ADDR_AAAE7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[callcodeOutput2] Processing transaction number 141 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x73C7C4D8322fa349E66eA7D9d27a22bF64e4a75c) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 279f05feb3ac5a08cdd8c471e6407c15890a8eb532461557c4d4134f457c1581 --timeout 20 --value 100000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[callcodeOutput2] Processing transaction number 142 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x73C7C4D8322fa349E66eA7D9d27a22bF64e4a75c) to 0x195e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 279f05feb3ac5a08cdd8c471e6407c15890a8eb532461557c4d4134f457c1581 --timeout 20 --value 100000 0x195e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[callcodeOutput2] Processing transaction number 143 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x73C7C4D8322fa349E66eA7D9d27a22bF64e4a75c) to 0x195e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 279f05feb3ac5a08cdd8c471e6407c15890a8eb532461557c4d4134f457c1581 --timeout 20 --value 100000 0x195e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

