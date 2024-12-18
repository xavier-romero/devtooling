# PRV_KEY for master sender 0x5bd39F46A4C02F4E2c696fafdcC33A63421E8D93
PRV_KEY=99ff8007ed569dd553dbd60e1b08d8e2fa1d73cdb1b0130497812c4323521cc9
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test timeDiff14 (src/BlockchainTestsFiller/ValidBlocks/bcValidBlockTest/timeDiff14Filler.json)"

AMOUNT=$((2*150000*2*$GAS_PRICE+12000))
echo "[timeDiff14] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x05B3516024D3F0eA9852C61762c931FDAF3EA41f) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x05B3516024D3F0eA9852C61762c931FDAF3EA41f | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[timeDiff14] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 100..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100 --create 630000002c6012600039630000002c6000F37fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff600052600060206000a100 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[timeDiff14] Processing transaction number 696 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x05B3516024D3F0eA9852C61762c931FDAF3EA41f) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key a65c438436402bc5bce9b8b52ad67042bcb042434d47bf5a5b66ff5607df85f9 --timeout 20 --value 5000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[timeDiff14] Processing transaction number 697 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x05B3516024D3F0eA9852C61762c931FDAF3EA41f) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key a65c438436402bc5bce9b8b52ad67042bcb042434d47bf5a5b66ff5607df85f9 --timeout 20 --value 7000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

