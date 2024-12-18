# PRV_KEY for master sender 0x8221c665227207d6E80D370bD3E9f51fF2441DA8
PRV_KEY=1e3b7c11887b47b299b7344efcadce81eeb41bd7bc364884cf3c151f9628dd91
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test CreateTransactionReverted (src/BlockchainTestsFiller/InvalidBlocks/bcStateTests/CreateTransactionRevertedFiller.json)"

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[CreateTransactionReverted] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x030Fdd1656c4C98601282C34cdcF85bEA384A685) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x030Fdd1656c4C98601282C34cdcF85bEA384A685 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[CreateTransactionReverted] Processing transaction number 133 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x030Fdd1656c4C98601282C34cdcF85bEA384A685) to None"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 59c16c15a4e597f19b835614cbfec36a55f61b0b28133a99a1a50cf314a0cfab --timeout 20 --value 0 --create 0x602280600c6000396000f30060e060020a600035048063f8a8fd6d14601457005b601a6020565b60006000f35b56 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[CreateTransactionReverted] Processing transaction number 134 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x030Fdd1656c4C98601282C34cdcF85bEA384A685) to None"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 59c16c15a4e597f19b835614cbfec36a55f61b0b28133a99a1a50cf314a0cfab --timeout 20 --value 0 --create 0x602280600c6000396000f30060e060020a600035048063f8a8fd6d14601457005b601a6020565b60006000f35b56 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

