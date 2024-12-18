# PRV_KEY for master sender 0x82Cc58C3f44995d3500BbB5b756676382979cB69
PRV_KEY=cacb238eda8fbca5ff032afe8df4ea6bdbe82a10ca1f8bbef5ac3b357a5fdfcf
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test RecallSuicidedContractInOneBlock (src/BlockchainTestsFiller/ValidBlocks/bcValidBlockTest/RecallSuicidedContractInOneBlockFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+257))
echo "[RecallSuicidedContractInOneBlock] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x1BFa797F58E130ed38C95b92159BDfa41DA8c73f) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x1BFa797F58E130ed38C95b92159BDfa41DA8c73f | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[RecallSuicidedContractInOneBlock] Processing transaction number 703 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x1BFa797F58E130ed38C95b92159BDfa41DA8c73f) to None"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key e0c1ca21f3ea72501172a445d69db52930860d51ebb526b76b43993dd1ac3f7f --timeout 20 --value 255 --create 0x604b80600c6000396000f3007c01000000000000000000000000000000000000000000000000000000006000350463cbf0b0c08114602d57005b60006004358073ffffffffffffffffffffffffffffffffffffffff16ff | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[RecallSuicidedContractInOneBlock] Processing transaction number 704 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x1BFa797F58E130ed38C95b92159BDfa41DA8c73f) to 0x6295ee1b4f6dd65047762f924ecd367c17eabf8f"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key e0c1ca21f3ea72501172a445d69db52930860d51ebb526b76b43993dd1ac3f7f --timeout 20 --value 1 0x6295ee1b4f6dd65047762f924ecd367c17eabf8f 0xcbf0b0c00000000000000000000000000000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[RecallSuicidedContractInOneBlock] Processing transaction number 705 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x1BFa797F58E130ed38C95b92159BDfa41DA8c73f) to 0x6295ee1b4f6dd65047762f924ecd367c17eabf8f"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key e0c1ca21f3ea72501172a445d69db52930860d51ebb526b76b43993dd1ac3f7f --timeout 20 --value 1 0x6295ee1b4f6dd65047762f924ecd367c17eabf8f 0xcbf0b0c00110000000000011000000000000011000000000000011000000000000000011 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

