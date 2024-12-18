# PRV_KEY for master sender 0x841C62bFd5E0deD437a56d40aDe5822d450D300C
PRV_KEY=300c17066272c135c9270a8cb094cdaacb026635ffe92cf0e035ac257de6a116
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test feeCap (src/BlockchainTestsFiller/InvalidBlocks/bcEIP1559/feeCapFiller.yml)"

AMOUNT=$((2*150000*16*$GAS_PRICE+0))
echo "[feeCap] Funding sender 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xFf7DaC40A16310C5BdB1c994E1bd577244e592fA) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xFf7DaC40A16310C5BdB1c994E1bd577244e592fA | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[feeCap] Creating receiver 0xcccccccccccccccccccccccccccccccccccccccc with code and balance 1099511627776..."
ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1099511627776 --create 6300000004601260003963000000046000F360013a55 | jq -r .contractAddress)
echo $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

echo "[feeCap] Processing transaction number 1103 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xFf7DaC40A16310C5BdB1c994E1bd577244e592fA) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key e771f83f562297b2c30a6dd1ea700f27121ee203e79b2e8868c6da27d8e4b76a --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[feeCap] Processing transaction number 1104 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xFf7DaC40A16310C5BdB1c994E1bd577244e592fA) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key e771f83f562297b2c30a6dd1ea700f27121ee203e79b2e8868c6da27d8e4b76a --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[feeCap] Processing transaction number 1105 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xFf7DaC40A16310C5BdB1c994E1bd577244e592fA) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key e771f83f562297b2c30a6dd1ea700f27121ee203e79b2e8868c6da27d8e4b76a --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[feeCap] Processing transaction number 1106 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xFf7DaC40A16310C5BdB1c994E1bd577244e592fA) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key e771f83f562297b2c30a6dd1ea700f27121ee203e79b2e8868c6da27d8e4b76a --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[feeCap] Processing transaction number 1107 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xFf7DaC40A16310C5BdB1c994E1bd577244e592fA) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key e771f83f562297b2c30a6dd1ea700f27121ee203e79b2e8868c6da27d8e4b76a --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[feeCap] Processing transaction number 1108 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xFf7DaC40A16310C5BdB1c994E1bd577244e592fA) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key e771f83f562297b2c30a6dd1ea700f27121ee203e79b2e8868c6da27d8e4b76a --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[feeCap] Processing transaction number 1109 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xFf7DaC40A16310C5BdB1c994E1bd577244e592fA) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key e771f83f562297b2c30a6dd1ea700f27121ee203e79b2e8868c6da27d8e4b76a --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[feeCap] Processing transaction number 1110 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xFf7DaC40A16310C5BdB1c994E1bd577244e592fA) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key e771f83f562297b2c30a6dd1ea700f27121ee203e79b2e8868c6da27d8e4b76a --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[feeCap] Processing transaction number 1111 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xFf7DaC40A16310C5BdB1c994E1bd577244e592fA) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key e771f83f562297b2c30a6dd1ea700f27121ee203e79b2e8868c6da27d8e4b76a --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[feeCap] Processing transaction number 1112 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xFf7DaC40A16310C5BdB1c994E1bd577244e592fA) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key e771f83f562297b2c30a6dd1ea700f27121ee203e79b2e8868c6da27d8e4b76a --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[feeCap] Processing transaction number 1113 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xFf7DaC40A16310C5BdB1c994E1bd577244e592fA) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key e771f83f562297b2c30a6dd1ea700f27121ee203e79b2e8868c6da27d8e4b76a --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[feeCap] Processing transaction number 1114 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xFf7DaC40A16310C5BdB1c994E1bd577244e592fA) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key e771f83f562297b2c30a6dd1ea700f27121ee203e79b2e8868c6da27d8e4b76a --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[feeCap] Processing transaction number 1115 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xFf7DaC40A16310C5BdB1c994E1bd577244e592fA) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key e771f83f562297b2c30a6dd1ea700f27121ee203e79b2e8868c6da27d8e4b76a --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[feeCap] Processing transaction number 1116 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xFf7DaC40A16310C5BdB1c994E1bd577244e592fA) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key e771f83f562297b2c30a6dd1ea700f27121ee203e79b2e8868c6da27d8e4b76a --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[feeCap] Processing transaction number 1117 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xFf7DaC40A16310C5BdB1c994E1bd577244e592fA) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key e771f83f562297b2c30a6dd1ea700f27121ee203e79b2e8868c6da27d8e4b76a --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[feeCap] Processing transaction number 1118 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xFf7DaC40A16310C5BdB1c994E1bd577244e592fA) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key e771f83f562297b2c30a6dd1ea700f27121ee203e79b2e8868c6da27d8e4b76a --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

