# PRV_KEY for master sender 0x2555d05BCace0CD5236bfCc7E58c70e4186D8258
PRV_KEY=e0d201228305d66dc57fd3a94f574e2aebafc4b41cb48708bdc13913afc3fd3b
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test RecallSuicidedContract (src/BlockchainTestsFiller/ValidBlocks/bcValidBlockTest/RecallSuicidedContractFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+257))
echo "[RecallSuicidedContract] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xCE197c4f1956c042FB2a18063980E077163571Dc) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xCE197c4f1956c042FB2a18063980E077163571Dc | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[RecallSuicidedContract] Processing transaction number 708 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xCE197c4f1956c042FB2a18063980E077163571Dc) to None"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key a5428fb95b6960f0bb7b7c3e14a8c4dd9a4a94be604b7e1242d82a49f8423160 --timeout 20 --value 255 --create 0x604b80600c6000396000f3007c01000000000000000000000000000000000000000000000000000000006000350463cbf0b0c08114602d57005b60006004358073ffffffffffffffffffffffffffffffffffffffff16ff | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[RecallSuicidedContract] Processing transaction number 709 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xCE197c4f1956c042FB2a18063980E077163571Dc) to 0x6295ee1b4f6dd65047762f924ecd367c17eabf8f"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key a5428fb95b6960f0bb7b7c3e14a8c4dd9a4a94be604b7e1242d82a49f8423160 --timeout 20 --value 1 0x6295ee1b4f6dd65047762f924ecd367c17eabf8f 0xcbf0b0c00000000000000000000000000000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[RecallSuicidedContract] Processing transaction number 710 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xCE197c4f1956c042FB2a18063980E077163571Dc) to 0x6295ee1b4f6dd65047762f924ecd367c17eabf8f"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key a5428fb95b6960f0bb7b7c3e14a8c4dd9a4a94be604b7e1242d82a49f8423160 --timeout 20 --value 1 0x6295ee1b4f6dd65047762f924ecd367c17eabf8f 0xcbf0b0c00110000000000011000000000000011000000000000011000000000000000011 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

