# PRV_KEY for master sender 0x2C906d9b3f821EF9ed220FeB4Fa83c9E5E6CAF1c
PRV_KEY=4ed2bd635764997c1c9d68a617bf1bbf9cbd4b2f76238b2957b5ea969e0239f6
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test suicideStorageCheckVCreate (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/suicideStorageCheckVCreateFiller.json)"

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[suicideStorageCheckVCreate] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE457f7EB43EA2ADc642b4385AaAA74c6fED76E7A) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xE457f7EB43EA2ADc642b4385AaAA74c6fED76E7A | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[suicideStorageCheckVCreate] Creating receiver 0xe3476106159f87477ad639e3ddcbb6b240efe459 with code and balance 1000..."
ADDR_E3476106159F87477AD639E3DDCBB6B240EFE459=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000 --create 6300000009601260003963000000096000F360036001556001ff00 | jq -r .contractAddress)
echo $ADDR_E3476106159F87477AD639E3DDCBB6B240EFE459

echo "[suicideStorageCheckVCreate] Processing transaction number 716 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE457f7EB43EA2ADc642b4385AaAA74c6fED76E7A) to 0xe3476106159f87477ad639e3ddcbb6b240efe459"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 37af13018b5f829c594f96a35cf1f7bdb1d7b49b71b63f272b49fe99ce8781eb --timeout 20 --value 0 $ADDR_E3476106159F87477AD639E3DDCBB6B240EFE459 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[suicideStorageCheckVCreate] Processing transaction number 717 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE457f7EB43EA2ADc642b4385AaAA74c6fED76E7A) to None"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 37af13018b5f829c594f96a35cf1f7bdb1d7b49b71b63f272b49fe99ce8781eb --timeout 20 --value 0 --create 0x6a6001546003556002600255600052600b60156000f000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

