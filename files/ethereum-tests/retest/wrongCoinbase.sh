# PRV_KEY for master sender 0x202A260cf39145EbcB4624828847A2faEcDF6798
PRV_KEY=c8d275b266758815590296550f47691d4b6d820e34d97435843629c841c1a366
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test wrongCoinbase (src/BlockchainTestsFiller/InvalidBlocks/bcInvalidHeaderTest/wrongCoinbaseFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+5000))
echo "[wrongCoinbase] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xc75467442Cee8043De75D9c77F3900160B670b42) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xc75467442Cee8043De75D9c77F3900160B670b42 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[wrongCoinbase] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 100..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100 --create 630000002c6012600039630000002c6000F37fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff600052600060206000a100 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[wrongCoinbase] Processing transaction number 278 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xc75467442Cee8043De75D9c77F3900160B670b42) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 19ed1ed914aa379ed911b1318152f430310e1620d38f5059f4f9519a8daf30bf --timeout 20 --value 5000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

