# PRV_KEY for master sender 0x1a5E268F69f638c0eb104c304958Be6403c03A17
PRV_KEY=e53774ace8d2acf29d20cfec9e90dde4f31f1cc96d79bc441a186ba9af47eb6c
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test suicideCoinbase (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/suicideCoinbaseFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+3003))
echo "[suicideCoinbase] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0662abc91C369Aa1F64D4320b446342e8F973556) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x0662abc91C369Aa1F64D4320b446342e8F973556 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[suicideCoinbase] Creating receiver 0x8888f1f195afa192cfee860698584c030f4c9db1 with code and balance 1000..."
ADDR_8888F1F195AFA192CFEE860698584C030F4C9DB1=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000 --create 630000005d6012600039630000005d6000F360606040526000357c0100000000000000000000000000000000000000000000000000000000900480630c55699c146037576035565b005b60406004506042565b005b3373ffffffffffffffffffffffffffffffffffffffff16ff5b56 | jq -r .contractAddress)
echo $ADDR_8888F1F195AFA192CFEE860698584C030F4C9DB1

echo "[suicideCoinbase] Processing transaction number 767 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0662abc91C369Aa1F64D4320b446342e8F973556) to 0x8888f1f195afa192cfee860698584c030f4c9db1"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key cb7e36b444e8306663c086fc76cbf468274341e124198c8287d4f07a2ec2ef14 --timeout 20 --value 1001 $ADDR_8888F1F195AFA192CFEE860698584C030F4C9DB1 0x0c55699c | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[suicideCoinbase] Processing transaction number 768 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0662abc91C369Aa1F64D4320b446342e8F973556) to 0x0000000000000000000000000000000000000000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key cb7e36b444e8306663c086fc76cbf468274341e124198c8287d4f07a2ec2ef14 --timeout 20 --value 1000 0x0000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[suicideCoinbase] Processing transaction number 769 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0662abc91C369Aa1F64D4320b446342e8F973556) to 0x0000000000000000000000000000000000000000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key cb7e36b444e8306663c086fc76cbf468274341e124198c8287d4f07a2ec2ef14 --timeout 20 --value 1002 0x0000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

