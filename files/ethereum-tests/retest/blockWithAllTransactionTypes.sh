# PRV_KEY for master sender 0xA9B4A90fd905b2691aa1175F74d39A01B0189784
PRV_KEY=f898bbdcfcd06d0bfcb7f7137beec5f4aa1b89a46ef00b6316f590d3cad15048
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test blockWithAllTransactionTypes (src/BlockchainTestsFiller/ValidBlocks/bcEIP4844-blobtransactions/blockWithAllTransactionTypesFiller.yml)"

AMOUNT=$((2*150000*4*$GAS_PRICE+16))
echo "[blockWithAllTransactionTypes] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD339F8Ed621Ce01ee288AbA7eE0C925b7B520862) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xD339F8Ed621Ce01ee288AbA7eE0C925b7B520862 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[blockWithAllTransactionTypes] Processing transaction number 1750 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD339F8Ed621Ce01ee288AbA7eE0C925b7B520862) to 0x100000000000000000000000000000000000000a"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 23003d12242d0cf1f7410cd61023bf6439df18f0d65404d0d9dd893a91ad5d97 --timeout 20 --value 1 0x100000000000000000000000000000000000000a | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[blockWithAllTransactionTypes] Processing transaction number 1751 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD339F8Ed621Ce01ee288AbA7eE0C925b7B520862) to 0x100000000000000000000000000000000000000a"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 23003d12242d0cf1f7410cd61023bf6439df18f0d65404d0d9dd893a91ad5d97 --timeout 20 --value 3 0x100000000000000000000000000000000000000a | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[blockWithAllTransactionTypes] Processing transaction number 1752 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD339F8Ed621Ce01ee288AbA7eE0C925b7B520862) to 0x100000000000000000000000000000000000000a"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 23003d12242d0cf1f7410cd61023bf6439df18f0d65404d0d9dd893a91ad5d97 --timeout 20 --value 5 0x100000000000000000000000000000000000000a | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[blockWithAllTransactionTypes] Processing transaction number 1753 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD339F8Ed621Ce01ee288AbA7eE0C925b7B520862) to 0x100000000000000000000000000000000000000a"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 23003d12242d0cf1f7410cd61023bf6439df18f0d65404d0d9dd893a91ad5d97 --timeout 20 --value 7 0x100000000000000000000000000000000000000a | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

