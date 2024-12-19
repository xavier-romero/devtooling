# PRV_KEY for master sender 0x20ba6273306C6b9D8293158Eab15313B47EC12fA
PRV_KEY=25906e24ea476f809388a4a9d890353f85bad47839bc6a01635f5236a7708ad8
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test timeDiff14 (src/BlockchainTestsFiller/ValidBlocks/bcValidBlockTest/timeDiff14Filler.json)"

AMOUNT=$((2*150000*2*$GAS_PRICE+12000))
echo "[timeDiff14] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xBbeB4E5A3BAAF7F1468D0dae52c1b6E353d25F88) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xBbeB4E5A3BAAF7F1468D0dae52c1b6E353d25F88 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[timeDiff14] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 100..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100 --create 630000002c6012600039630000002c6000F37fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff600052600060206000a100 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[timeDiff14] Processing transaction number 696 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xBbeB4E5A3BAAF7F1468D0dae52c1b6E353d25F88) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key abc135dd5b05b05ef08bc89c153aa60e8765c7d756548ecb55a91843880677d3 --timeout 20 --value 5000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[timeDiff14] Processing transaction number 697 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xBbeB4E5A3BAAF7F1468D0dae52c1b6E353d25F88) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key abc135dd5b05b05ef08bc89c153aa60e8765c7d756548ecb55a91843880677d3 --timeout 20 --value 7000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

