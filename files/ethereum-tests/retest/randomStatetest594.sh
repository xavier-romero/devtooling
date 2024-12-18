# PRV_KEY for master sender 0xe96401F53a52838016395eA9782E7fDBb44a69D1
PRV_KEY=ddbd63183ba61ba138092a49831c50ddbe1f963f8d4934d8fca5dba8ea642596
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest594 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/randomStatetest594Filler.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+1174931516))
echo "[randomStatetest594] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE90D4fC832D0039F8893C40fA1857377FEFBea06) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xE90D4fC832D0039F8893C40fA1857377FEFBea06 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest594] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 0..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 63000000eb601260003963000000eb6000F37f00000000000000000000000100000000000000000000000000000000000000007f000000000000000000000000000000000000000000000000000000000000c3507f00000000000000000000000100000000000000000000000000000000000000007f0000000000000000000000010000000000000000000000000000000000000000457fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe950955 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest594] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest594] Processing transaction number 728 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE90D4fC832D0039F8893C40fA1857377FEFBea06) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 6525eafaf0414a509a5944594c577f6e9bdc391df33aa12e1ad374b040588c69 --timeout 20 --value 1174931516 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x7f00000000000000000000000100000000000000000000000000000000000000007f000000000000000000000000000000000000000000000000000000000000c3507f00000000000000000000000100000000000000000000000000000000000000007f0000000000000000000000010000000000000000000000000000000000000000457fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe9509 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

