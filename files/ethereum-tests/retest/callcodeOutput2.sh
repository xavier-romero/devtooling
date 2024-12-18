# PRV_KEY for master sender 0x1e43c2d203B69F07E7fa34EEbF8c2D85628357CC
PRV_KEY=2aeec940c8661f6a9bd6fcdf6c9ee4cac1f88efcb418cedf6580e62469e63c39
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test callcodeOutput2 (src/BlockchainTestsFiller/InvalidBlocks/bcStateTests/callcodeOutput2Filler.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+300000))
echo "[callcodeOutput2] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xe331e786D11e603711711B143f15Fd0b63F78e5A) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xe331e786D11e603711711B143f15Fd0b63F78e5A | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[callcodeOutput2] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 0..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 630000004d6012600039630000004d6000F37f5e20a0453cecd065ea59c37ac63e079ee08998b6045136a8ce6635c7912ec0b6600052600060006020600073aaae7baea6a6c7c4c2dfeb977efac326af552d8761c350f45060005160005500 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[callcodeOutput2] Creating receiver 0xaaae7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 1000000000000000000..."
ADDR_AAAE7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000000000000000000 --create 6300000008601260003963000000086000F36001600101600055 | jq -r .contractAddress)
echo $ADDR_AAAE7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[callcodeOutput2] Processing transaction number 141 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xe331e786D11e603711711B143f15Fd0b63F78e5A) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 7bcd5a81ebe700b441b848c93649032422ff0759b1cd833eabd2d587db83629a --timeout 20 --value 100000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[callcodeOutput2] Processing transaction number 142 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xe331e786D11e603711711B143f15Fd0b63F78e5A) to 0x195e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 7bcd5a81ebe700b441b848c93649032422ff0759b1cd833eabd2d587db83629a --timeout 20 --value 100000 0x195e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[callcodeOutput2] Processing transaction number 143 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xe331e786D11e603711711B143f15Fd0b63F78e5A) to 0x195e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 7bcd5a81ebe700b441b848c93649032422ff0759b1cd833eabd2d587db83629a --timeout 20 --value 100000 0x195e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

