# PRV_KEY for master sender 0x79B45df9a7D3550F3e066480Fa5DDEdF7de67ce1
PRV_KEY=c4ffdbffea093c6605b6a21b6819a6c717bef7e5d31b5fdbc0064f0e6f5ca60e
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test RecallSuicidedContract (src/BlockchainTestsFiller/ValidBlocks/bcValidBlockTest/RecallSuicidedContractFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+257))
echo "[RecallSuicidedContract] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x5eF03F8E9EF3D6d8FA2203e0c749fcE7167FFA35) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x5eF03F8E9EF3D6d8FA2203e0c749fcE7167FFA35 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[RecallSuicidedContract] Processing transaction number 708 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x5eF03F8E9EF3D6d8FA2203e0c749fcE7167FFA35) to None"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d155a6c3b7955e61005f17cfae8bd3284a7d042cf90480f2cf77db3cac04afa9 --timeout 20 --value 255 --create 0x604b80600c6000396000f3007c01000000000000000000000000000000000000000000000000000000006000350463cbf0b0c08114602d57005b60006004358073ffffffffffffffffffffffffffffffffffffffff16ff | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[RecallSuicidedContract] Processing transaction number 709 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x5eF03F8E9EF3D6d8FA2203e0c749fcE7167FFA35) to 0x6295ee1b4f6dd65047762f924ecd367c17eabf8f"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d155a6c3b7955e61005f17cfae8bd3284a7d042cf90480f2cf77db3cac04afa9 --timeout 20 --value 1 0x6295ee1b4f6dd65047762f924ecd367c17eabf8f 0xcbf0b0c00000000000000000000000000000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[RecallSuicidedContract] Processing transaction number 710 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x5eF03F8E9EF3D6d8FA2203e0c749fcE7167FFA35) to 0x6295ee1b4f6dd65047762f924ecd367c17eabf8f"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d155a6c3b7955e61005f17cfae8bd3284a7d042cf90480f2cf77db3cac04afa9 --timeout 20 --value 1 0x6295ee1b4f6dd65047762f924ecd367c17eabf8f 0xcbf0b0c00110000000000011000000000000011000000000000011000000000000000011 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

