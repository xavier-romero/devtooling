# PRV_KEY for master sender 0xf4832D94955114ca2f2C17315385220756688C30
PRV_KEY=6649cddef7740b6f40ea29c62b38d16f9748f78c5f3a341af7838246b8efe5c0
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test uncleHeaderWithGeneration0 (src/BlockchainTestsFiller/InvalidBlocks/bcUncleTest/uncleHeaderWithGeneration0Filler.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[uncleHeaderWithGeneration0] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE00f6933Cd1AA95B64F746313B06e45aD235815E) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xE00f6933Cd1AA95B64F746313B06e45aD235815E | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[uncleHeaderWithGeneration0] Processing transaction number 175 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE00f6933Cd1AA95B64F746313B06e45aD235815E) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key aa3759d6665655dce9e1acd691813abadd26450233d102f134b05aabc4a10aac --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[uncleHeaderWithGeneration0] Processing transaction number 176 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE00f6933Cd1AA95B64F746313B06e45aD235815E) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key aa3759d6665655dce9e1acd691813abadd26450233d102f134b05aabc4a10aac --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[uncleHeaderWithGeneration0] Processing transaction number 177 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE00f6933Cd1AA95B64F746313B06e45aD235815E) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key aa3759d6665655dce9e1acd691813abadd26450233d102f134b05aabc4a10aac --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

