# PRV_KEY for master sender 0x0951e624f8bFA9a61c4a6A77baECF69c85611603
PRV_KEY=b3d78d8d63da158343957424db673692b9ac43c29966a60fa3179d1e9da29a7e
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test blockWithAllTransactionTypes (src/BlockchainTestsFiller/ValidBlocks/bcEIP4844-blobtransactions/blockWithAllTransactionTypesFiller.yml)"

AMOUNT=$((2*150000*4*$GAS_PRICE+16))
echo "[blockWithAllTransactionTypes] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x9E99f7020773A110b30CBd8308e67Fd3d6197C9C) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x9E99f7020773A110b30CBd8308e67Fd3d6197C9C | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[blockWithAllTransactionTypes] Processing transaction number 1750 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x9E99f7020773A110b30CBd8308e67Fd3d6197C9C) to 0x100000000000000000000000000000000000000a"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key b49d5a01a6413975cd45b0bdb16c399ec154145a54b2ca2c1bd6c2b6bcfcadf1 --timeout 20 --value 1 0x100000000000000000000000000000000000000a | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[blockWithAllTransactionTypes] Processing transaction number 1751 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x9E99f7020773A110b30CBd8308e67Fd3d6197C9C) to 0x100000000000000000000000000000000000000a"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key b49d5a01a6413975cd45b0bdb16c399ec154145a54b2ca2c1bd6c2b6bcfcadf1 --timeout 20 --value 3 0x100000000000000000000000000000000000000a | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[blockWithAllTransactionTypes] Processing transaction number 1752 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x9E99f7020773A110b30CBd8308e67Fd3d6197C9C) to 0x100000000000000000000000000000000000000a"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key b49d5a01a6413975cd45b0bdb16c399ec154145a54b2ca2c1bd6c2b6bcfcadf1 --timeout 20 --value 5 0x100000000000000000000000000000000000000a | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[blockWithAllTransactionTypes] Processing transaction number 1753 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x9E99f7020773A110b30CBd8308e67Fd3d6197C9C) to 0x100000000000000000000000000000000000000a"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key b49d5a01a6413975cd45b0bdb16c399ec154145a54b2ca2c1bd6c2b6bcfcadf1 --timeout 20 --value 7 0x100000000000000000000000000000000000000a | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

