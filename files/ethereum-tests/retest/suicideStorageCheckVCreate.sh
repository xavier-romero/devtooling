# PRV_KEY for master sender 0x946EBC41376a5E2f8C6C2F9e0818eE19d742a016
PRV_KEY=fb94ea7abe331e63ce49598854e413be05583b04c069059f33d423720ac2df65
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test suicideStorageCheckVCreate (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/suicideStorageCheckVCreateFiller.json)"

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[suicideStorageCheckVCreate] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x707AEeD12B4786c4A63ca16cd99fD4f69577e483) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x707AEeD12B4786c4A63ca16cd99fD4f69577e483 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[suicideStorageCheckVCreate] Creating receiver 0xe3476106159f87477ad639e3ddcbb6b240efe459 with code and balance 1000..."
ADDR_E3476106159F87477AD639E3DDCBB6B240EFE459=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000 --create 6300000009601260003963000000096000F360036001556001ff00 | jq -r .contractAddress)
echo $ADDR_E3476106159F87477AD639E3DDCBB6B240EFE459

echo "[suicideStorageCheckVCreate] Processing transaction number 716 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x707AEeD12B4786c4A63ca16cd99fD4f69577e483) to 0xe3476106159f87477ad639e3ddcbb6b240efe459"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 3c619ff6b2a9dc90bf651ef297b34385008a3d3502ad3c352246123abf269ae5 --timeout 20 --value 0 $ADDR_E3476106159F87477AD639E3DDCBB6B240EFE459 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[suicideStorageCheckVCreate] Processing transaction number 717 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x707AEeD12B4786c4A63ca16cd99fD4f69577e483) to None"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 3c619ff6b2a9dc90bf651ef297b34385008a3d3502ad3c352246123abf269ae5 --timeout 20 --value 0 --create 0x6a6001546003556002600255600052600b60156000f000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

