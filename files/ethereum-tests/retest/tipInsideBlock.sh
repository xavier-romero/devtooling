# PRV_KEY for master sender 0x4295fBF2ab1B96f3e88eA1B2CcC522AD18F6C44A
PRV_KEY=aaabf19eaa560d5b9f1e1630adf24bf23e66f0350764ff018a70d7425a283de7
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test tipInsideBlock (src/BlockchainTestsFiller/ValidBlocks/bcEIP3675/tipInsideBlockFiller.yml)"

AMOUNT=$((2*150000*5*$GAS_PRICE+0))
echo "[tipInsideBlock] Funding sender 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x58B0fEeB2241d3Bd35Ad5fc8feEF9231f1601d1d) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x58B0fEeB2241d3Bd35Ad5fc8feEF9231f1601d1d | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[tipInsideBlock] Creating receiver 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa with code and balance 1099511627776..."
ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1099511627776 --create 6300000003601260003963000000036000F360FF00 | jq -r .contractAddress)
echo $ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA

echo "[tipInsideBlock] Creating receiver 0xcccccccccccccccccccccccccccccccccccccccc with code and balance 1099511627776..."
ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1099511627776 --create 600160015560016002556300000005601c60003963000000056000F34131435500 | jq -r .contractAddress)
echo $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

echo "[tipInsideBlock] Creating receiver 0xdddddddddddddddddddddddddddddddddddddddd with code and balance 1099511627776..."
ADDR_DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1099511627776 --create 600160015560016002556300000005601c60003963000000056000F34131435500 | jq -r .contractAddress)
echo $ADDR_DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD

echo "[tipInsideBlock] Processing transaction number 1754 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x58B0fEeB2241d3Bd35Ad5fc8feEF9231f1601d1d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 13a555eb95dc9e1ae5aaf84811655f952555ff21291b4680365280c2cf058836 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[tipInsideBlock] Processing transaction number 1755 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x58B0fEeB2241d3Bd35Ad5fc8feEF9231f1601d1d) to 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 13a555eb95dc9e1ae5aaf84811655f952555ff21291b4680365280c2cf058836 --timeout 20 --value 0 $ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[tipInsideBlock] Processing transaction number 1756 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x58B0fEeB2241d3Bd35Ad5fc8feEF9231f1601d1d) to 0xdddddddddddddddddddddddddddddddddddddddd"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 13a555eb95dc9e1ae5aaf84811655f952555ff21291b4680365280c2cf058836 --timeout 20 --value 0 $ADDR_DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[tipInsideBlock] Processing transaction number 1757 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x58B0fEeB2241d3Bd35Ad5fc8feEF9231f1601d1d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 13a555eb95dc9e1ae5aaf84811655f952555ff21291b4680365280c2cf058836 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[tipInsideBlock] Processing transaction number 1758 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x58B0fEeB2241d3Bd35Ad5fc8feEF9231f1601d1d) to 0xdddddddddddddddddddddddddddddddddddddddd"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 13a555eb95dc9e1ae5aaf84811655f952555ff21291b4680365280c2cf058836 --timeout 20 --value 0 $ADDR_DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

