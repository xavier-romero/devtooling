# PRV_KEY for master sender 0xf6113F838FcB7D6488987fCe3F3888E2c7125031
PRV_KEY=eb71775fabeb7465b1a258d07c7854a75d4e729fb79293491b9c0b32e4a3797a
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test incorrectWithdrawalsRoot (src/BlockchainTestsFiller/InvalidBlocks/bc4895-withdrawals/incorrectWithdrawalsRootFiller.json)"

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[incorrectWithdrawalsRoot] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x6aA2f08441f6867A2869Eb58dD53a1cD0991d7F7) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x6aA2f08441f6867A2869Eb58dD53a1cD0991d7F7 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[incorrectWithdrawalsRoot] Processing transaction number 156 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x6aA2f08441f6867A2869Eb58dD53a1cD0991d7F7) to None"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 131f87d2cdc118e1a30e38d78d2b9739688b01942a8400b5610f3a0fd8548b85 --timeout 20 --value 0 --create 0x600160015500 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[incorrectWithdrawalsRoot] Processing transaction number 157 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x6aA2f08441f6867A2869Eb58dD53a1cD0991d7F7) to None"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 131f87d2cdc118e1a30e38d78d2b9739688b01942a8400b5610f3a0fd8548b85 --timeout 20 --value 0 --create 0x600160015500 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

