# PRV_KEY for master sender 0xEB48e959a3F27F4e9cceD3C75Fe5C1f37862BAC8
PRV_KEY=22e2766ae0404beb147cb480e437ac90a5978e5ca60fcdecb94d97d05384cc70
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test timestampTooHigh (src/BlockchainTestsFiller/InvalidBlocks/bcUncleHeaderValidity/timestampTooHighFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[timestampTooHigh] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xEfcd35D2dc664410651e79390B17aAdB42d6bbb4) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xEfcd35D2dc664410651e79390B17aAdB42d6bbb4 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[timestampTooHigh] Processing transaction number 76 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xEfcd35D2dc664410651e79390B17aAdB42d6bbb4) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 7ed5ece16f2dd29fea3c7ca135f0fc5417eb296b482d92dd424576c9014c94fd --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[timestampTooHigh] Processing transaction number 77 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xEfcd35D2dc664410651e79390B17aAdB42d6bbb4) to 0x0000000000000000000000000000000000000000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 7ed5ece16f2dd29fea3c7ca135f0fc5417eb296b482d92dd424576c9014c94fd --timeout 20 --value 10 0x0000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[timestampTooHigh] Processing transaction number 78 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xEfcd35D2dc664410651e79390B17aAdB42d6bbb4) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 7ed5ece16f2dd29fea3c7ca135f0fc5417eb296b482d92dd424576c9014c94fd --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

