# PRV_KEY for master sender 0x89eE4bcdfC65c754A55c49a9658C2405aEba4f5D
PRV_KEY=2c75a05510638ad0460a37f8d9c653d850b789ae5d2ed09cf044d4eb34b51b2c
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test log1_correct (src/BlockchainTestsFiller/ValidBlocks/bcValidBlockTest/log1_correctFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+5000000000))
echo "[log1_correct] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x9C03Ee96761582c3eF77A999240a5785447454A2) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x9C03Ee96761582c3eF77A999240a5785447454A2 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[log1_correct] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 100..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100 --create 630000002c6012600039630000002c6000F37fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff600052600060206000a100 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[log1_correct] Processing transaction number 693 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x9C03Ee96761582c3eF77A999240a5785447454A2) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 2796113970f5fc8a31fb61a8f0c6c45f1466fe8b0e29753aa7091c40db85d372 --timeout 20 --value 5000000000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

