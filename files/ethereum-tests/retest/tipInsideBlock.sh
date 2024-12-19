# PRV_KEY for master sender 0xDB242A0dB1C08deF17290C1C0358B844074Cf577
PRV_KEY=d025acbe36c25ce36619241047240ca90b3856026638a41fe966a97d0c57e576
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test tipInsideBlock (src/BlockchainTestsFiller/ValidBlocks/bcEIP3675/tipInsideBlockFiller.yml)"

AMOUNT=$((2*150000*5*$GAS_PRICE+0))
echo "[tipInsideBlock] Funding sender 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x75aed4b1bA7fe09555617e2967a795ae39C42BbF) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x75aed4b1bA7fe09555617e2967a795ae39C42BbF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[tipInsideBlock] Creating receiver 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa with code and balance 1099511627776..."
ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1099511627776 --create 6300000003601260003963000000036000F360FF00 | jq -r .contractAddress)
echo $ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA

echo "[tipInsideBlock] Creating receiver 0xcccccccccccccccccccccccccccccccccccccccc with code and balance 1099511627776..."
ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1099511627776 --create 600160015560016002556300000005601c60003963000000056000F34131435500 | jq -r .contractAddress)
echo $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

echo "[tipInsideBlock] Creating receiver 0xdddddddddddddddddddddddddddddddddddddddd with code and balance 1099511627776..."
ADDR_DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1099511627776 --create 600160015560016002556300000005601c60003963000000056000F34131435500 | jq -r .contractAddress)
echo $ADDR_DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD

echo "[tipInsideBlock] Processing transaction number 1754 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x75aed4b1bA7fe09555617e2967a795ae39C42BbF) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 59ffa993dd88abfa202beef02c719d17086e34c154e30e05ff4420b22bd566ed --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[tipInsideBlock] Processing transaction number 1755 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x75aed4b1bA7fe09555617e2967a795ae39C42BbF) to 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 59ffa993dd88abfa202beef02c719d17086e34c154e30e05ff4420b22bd566ed --timeout 20 --value 0 $ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[tipInsideBlock] Processing transaction number 1756 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x75aed4b1bA7fe09555617e2967a795ae39C42BbF) to 0xdddddddddddddddddddddddddddddddddddddddd"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 59ffa993dd88abfa202beef02c719d17086e34c154e30e05ff4420b22bd566ed --timeout 20 --value 0 $ADDR_DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[tipInsideBlock] Processing transaction number 1757 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x75aed4b1bA7fe09555617e2967a795ae39C42BbF) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 59ffa993dd88abfa202beef02c719d17086e34c154e30e05ff4420b22bd566ed --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[tipInsideBlock] Processing transaction number 1758 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x75aed4b1bA7fe09555617e2967a795ae39C42BbF) to 0xdddddddddddddddddddddddddddddddddddddddd"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 59ffa993dd88abfa202beef02c719d17086e34c154e30e05ff4420b22bd566ed --timeout 20 --value 0 $ADDR_DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

