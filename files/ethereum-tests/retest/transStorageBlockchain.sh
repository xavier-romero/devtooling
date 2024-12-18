# PRV_KEY for master sender 0x84e6C2e3b2B95E5DC588b0B97503CD95d4cD5Bf2
PRV_KEY=6585b7287c5fcc76be6fc35d27b5149efcd754a7f34a0b15291b735d10934dcb
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test transStorageBlockchain (src/BlockchainTestsFiller/ValidBlocks/bcEIP1153-transientStorage/transStorageBlockchainFiller.yml)"

AMOUNT=$((2*150000*24*$GAS_PRICE+0))
echo "[transStorageBlockchain] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE8c52EfC169c657593BD2f4cd8736bb83568d90b) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xE8c52EfC169c657593BD2f4cd8736bb83568d90b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transStorageBlockchain] Creating receiver 0xde570000de570000de570000de570000de570000 with code and balance 0..."
ADDR_DE570000DE570000DE570000DE570000DE570000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6160a76011556160a76013556160a76021556160a76023556160a76031556160a76033556160a76041556160a76043556160a76051556160a76053556160a76061556160a76063556300000097605a60003963000000976000F36015565b6000815c9050919050565b81815d5050565b60003560001a4360038214600183141715603a57603160006003565b60108202830155005b604561beef6000600e565b80600181146074576002811460765760038114607c576004811460825760058114608457600681146091576093565b005b60206000f35b60206000fd5bfe5b61beef63b160b160526093565b005b505050 | jq -r .contractAddress)
echo $ADDR_DE570000DE570000DE570000DE570000DE570000

echo "[transStorageBlockchain] Processing transaction number 1763 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE8c52EfC169c657593BD2f4cd8736bb83568d90b) to 0xde570000de570000de570000de570000de570000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 9879974fa21402922b5ebb737d94ea963abdf27b23b5b59feb92fc86ceceaaa9 --timeout 20 --value 0 $ADDR_DE570000DE570000DE570000DE570000DE570000 0x01 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transStorageBlockchain] Processing transaction number 1764 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE8c52EfC169c657593BD2f4cd8736bb83568d90b) to 0xde570000de570000de570000de570000de570000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 9879974fa21402922b5ebb737d94ea963abdf27b23b5b59feb92fc86ceceaaa9 --timeout 20 --value 0 $ADDR_DE570000DE570000DE570000DE570000DE570000 0x02 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transStorageBlockchain] Processing transaction number 1765 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE8c52EfC169c657593BD2f4cd8736bb83568d90b) to 0xde570000de570000de570000de570000de570000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 9879974fa21402922b5ebb737d94ea963abdf27b23b5b59feb92fc86ceceaaa9 --timeout 20 --value 0 $ADDR_DE570000DE570000DE570000DE570000DE570000 0x03 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transStorageBlockchain] Processing transaction number 1766 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE8c52EfC169c657593BD2f4cd8736bb83568d90b) to 0xde570000de570000de570000de570000de570000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 9879974fa21402922b5ebb737d94ea963abdf27b23b5b59feb92fc86ceceaaa9 --timeout 20 --value 0 $ADDR_DE570000DE570000DE570000DE570000DE570000 0x04 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transStorageBlockchain] Processing transaction number 1767 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE8c52EfC169c657593BD2f4cd8736bb83568d90b) to 0xde570000de570000de570000de570000de570000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 9879974fa21402922b5ebb737d94ea963abdf27b23b5b59feb92fc86ceceaaa9 --timeout 20 --value 0 $ADDR_DE570000DE570000DE570000DE570000DE570000 0x01 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transStorageBlockchain] Processing transaction number 1768 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE8c52EfC169c657593BD2f4cd8736bb83568d90b) to 0xde570000de570000de570000de570000de570000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 9879974fa21402922b5ebb737d94ea963abdf27b23b5b59feb92fc86ceceaaa9 --timeout 20 --value 0 $ADDR_DE570000DE570000DE570000DE570000DE570000 0x02 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transStorageBlockchain] Processing transaction number 1769 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE8c52EfC169c657593BD2f4cd8736bb83568d90b) to 0xde570000de570000de570000de570000de570000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 9879974fa21402922b5ebb737d94ea963abdf27b23b5b59feb92fc86ceceaaa9 --timeout 20 --value 0 $ADDR_DE570000DE570000DE570000DE570000DE570000 0x03 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transStorageBlockchain] Processing transaction number 1770 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE8c52EfC169c657593BD2f4cd8736bb83568d90b) to 0xde570000de570000de570000de570000de570000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 9879974fa21402922b5ebb737d94ea963abdf27b23b5b59feb92fc86ceceaaa9 --timeout 20 --value 0 $ADDR_DE570000DE570000DE570000DE570000DE570000 0x04 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transStorageBlockchain] Processing transaction number 1771 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE8c52EfC169c657593BD2f4cd8736bb83568d90b) to 0xde570000de570000de570000de570000de570000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 9879974fa21402922b5ebb737d94ea963abdf27b23b5b59feb92fc86ceceaaa9 --timeout 20 --value 0 $ADDR_DE570000DE570000DE570000DE570000DE570000 0x01 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transStorageBlockchain] Processing transaction number 1772 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE8c52EfC169c657593BD2f4cd8736bb83568d90b) to 0xde570000de570000de570000de570000de570000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 9879974fa21402922b5ebb737d94ea963abdf27b23b5b59feb92fc86ceceaaa9 --timeout 20 --value 0 $ADDR_DE570000DE570000DE570000DE570000DE570000 0x02 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transStorageBlockchain] Processing transaction number 1773 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE8c52EfC169c657593BD2f4cd8736bb83568d90b) to 0xde570000de570000de570000de570000de570000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 9879974fa21402922b5ebb737d94ea963abdf27b23b5b59feb92fc86ceceaaa9 --timeout 20 --value 0 $ADDR_DE570000DE570000DE570000DE570000DE570000 0x03 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transStorageBlockchain] Processing transaction number 1774 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE8c52EfC169c657593BD2f4cd8736bb83568d90b) to 0xde570000de570000de570000de570000de570000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 9879974fa21402922b5ebb737d94ea963abdf27b23b5b59feb92fc86ceceaaa9 --timeout 20 --value 0 $ADDR_DE570000DE570000DE570000DE570000DE570000 0x04 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transStorageBlockchain] Processing transaction number 1775 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE8c52EfC169c657593BD2f4cd8736bb83568d90b) to 0xde570000de570000de570000de570000de570000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 9879974fa21402922b5ebb737d94ea963abdf27b23b5b59feb92fc86ceceaaa9 --timeout 20 --value 0 $ADDR_DE570000DE570000DE570000DE570000DE570000 0x01 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transStorageBlockchain] Processing transaction number 1776 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE8c52EfC169c657593BD2f4cd8736bb83568d90b) to 0xde570000de570000de570000de570000de570000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 9879974fa21402922b5ebb737d94ea963abdf27b23b5b59feb92fc86ceceaaa9 --timeout 20 --value 0 $ADDR_DE570000DE570000DE570000DE570000DE570000 0x02 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transStorageBlockchain] Processing transaction number 1777 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE8c52EfC169c657593BD2f4cd8736bb83568d90b) to 0xde570000de570000de570000de570000de570000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 9879974fa21402922b5ebb737d94ea963abdf27b23b5b59feb92fc86ceceaaa9 --timeout 20 --value 0 $ADDR_DE570000DE570000DE570000DE570000DE570000 0x03 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transStorageBlockchain] Processing transaction number 1778 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE8c52EfC169c657593BD2f4cd8736bb83568d90b) to 0xde570000de570000de570000de570000de570000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 9879974fa21402922b5ebb737d94ea963abdf27b23b5b59feb92fc86ceceaaa9 --timeout 20 --value 0 $ADDR_DE570000DE570000DE570000DE570000DE570000 0x04 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transStorageBlockchain] Processing transaction number 1779 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE8c52EfC169c657593BD2f4cd8736bb83568d90b) to 0xde570000de570000de570000de570000de570000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 9879974fa21402922b5ebb737d94ea963abdf27b23b5b59feb92fc86ceceaaa9 --timeout 20 --value 0 $ADDR_DE570000DE570000DE570000DE570000DE570000 0x01 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transStorageBlockchain] Processing transaction number 1780 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE8c52EfC169c657593BD2f4cd8736bb83568d90b) to 0xde570000de570000de570000de570000de570000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 9879974fa21402922b5ebb737d94ea963abdf27b23b5b59feb92fc86ceceaaa9 --timeout 20 --value 0 $ADDR_DE570000DE570000DE570000DE570000DE570000 0x02 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transStorageBlockchain] Processing transaction number 1781 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE8c52EfC169c657593BD2f4cd8736bb83568d90b) to 0xde570000de570000de570000de570000de570000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 9879974fa21402922b5ebb737d94ea963abdf27b23b5b59feb92fc86ceceaaa9 --timeout 20 --value 0 $ADDR_DE570000DE570000DE570000DE570000DE570000 0x03 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transStorageBlockchain] Processing transaction number 1782 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE8c52EfC169c657593BD2f4cd8736bb83568d90b) to 0xde570000de570000de570000de570000de570000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 9879974fa21402922b5ebb737d94ea963abdf27b23b5b59feb92fc86ceceaaa9 --timeout 20 --value 0 $ADDR_DE570000DE570000DE570000DE570000DE570000 0x04 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transStorageBlockchain] Processing transaction number 1783 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE8c52EfC169c657593BD2f4cd8736bb83568d90b) to 0xde570000de570000de570000de570000de570000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 9879974fa21402922b5ebb737d94ea963abdf27b23b5b59feb92fc86ceceaaa9 --timeout 20 --value 0 $ADDR_DE570000DE570000DE570000DE570000DE570000 0x01 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transStorageBlockchain] Processing transaction number 1784 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE8c52EfC169c657593BD2f4cd8736bb83568d90b) to 0xde570000de570000de570000de570000de570000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 9879974fa21402922b5ebb737d94ea963abdf27b23b5b59feb92fc86ceceaaa9 --timeout 20 --value 0 $ADDR_DE570000DE570000DE570000DE570000DE570000 0x02 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transStorageBlockchain] Processing transaction number 1785 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE8c52EfC169c657593BD2f4cd8736bb83568d90b) to 0xde570000de570000de570000de570000de570000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 9879974fa21402922b5ebb737d94ea963abdf27b23b5b59feb92fc86ceceaaa9 --timeout 20 --value 0 $ADDR_DE570000DE570000DE570000DE570000DE570000 0x03 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transStorageBlockchain] Processing transaction number 1786 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE8c52EfC169c657593BD2f4cd8736bb83568d90b) to 0xde570000de570000de570000de570000de570000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 9879974fa21402922b5ebb737d94ea963abdf27b23b5b59feb92fc86ceceaaa9 --timeout 20 --value 0 $ADDR_DE570000DE570000DE570000DE570000DE570000 0x04 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

