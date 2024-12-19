# PRV_KEY for master sender 0x8E1c04eb9428BD29003526B4BB3481d040501072
PRV_KEY=b107e9597832f97ea082f616aabf03f881cf9cac0092e621f905596458706180
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test callRevert (src/BlockchainTestsFiller/ValidBlocks/bcValidBlockTest/callRevertFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+10))
echo "[callRevert] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xAbaE15CD50c57AB11B00Dca111fd81fcF8e691F4) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xAbaE15CD50c57AB11B00Dca111fd81fcF8e691F4 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[callRevert] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 10000000000..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 10000000000 --create 6300000006601260003963000000066000F360006000fd00 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[callRevert] Processing transaction number 711 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xAbaE15CD50c57AB11B00Dca111fd81fcF8e691F4) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 1ed88217927695d0e08c449aa4299d36ec77f7cffcbc62caf75bb3f3e828d862 --timeout 20 --value 10 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

