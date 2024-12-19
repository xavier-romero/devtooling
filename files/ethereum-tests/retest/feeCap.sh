# PRV_KEY for master sender 0x1D18623d059E9939533f675AB440E7AC7011378f
PRV_KEY=dd9e0a35b5af7b233c9c93788ff19dc60bdcad277d88724e5e80daa0f380d690
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test feeCap (src/BlockchainTestsFiller/InvalidBlocks/bcEIP1559/feeCapFiller.yml)"

AMOUNT=$((2*150000*16*$GAS_PRICE+0))
echo "[feeCap] Funding sender 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xd386A4EB67f3A9E5B04F7C243785b7d3df451295) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xd386A4EB67f3A9E5B04F7C243785b7d3df451295 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[feeCap] Creating receiver 0xcccccccccccccccccccccccccccccccccccccccc with code and balance 1099511627776..."
ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1099511627776 --create 6300000004601260003963000000046000F360013a55 | jq -r .contractAddress)
echo $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

echo "[feeCap] Processing transaction number 1103 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xd386A4EB67f3A9E5B04F7C243785b7d3df451295) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 77d15478a3c4bd757aedc9a6274f9558c8ec034645ede7678c7df1471860a6e0 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[feeCap] Processing transaction number 1104 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xd386A4EB67f3A9E5B04F7C243785b7d3df451295) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 77d15478a3c4bd757aedc9a6274f9558c8ec034645ede7678c7df1471860a6e0 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[feeCap] Processing transaction number 1105 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xd386A4EB67f3A9E5B04F7C243785b7d3df451295) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 77d15478a3c4bd757aedc9a6274f9558c8ec034645ede7678c7df1471860a6e0 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[feeCap] Processing transaction number 1106 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xd386A4EB67f3A9E5B04F7C243785b7d3df451295) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 77d15478a3c4bd757aedc9a6274f9558c8ec034645ede7678c7df1471860a6e0 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[feeCap] Processing transaction number 1107 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xd386A4EB67f3A9E5B04F7C243785b7d3df451295) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 77d15478a3c4bd757aedc9a6274f9558c8ec034645ede7678c7df1471860a6e0 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[feeCap] Processing transaction number 1108 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xd386A4EB67f3A9E5B04F7C243785b7d3df451295) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 77d15478a3c4bd757aedc9a6274f9558c8ec034645ede7678c7df1471860a6e0 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[feeCap] Processing transaction number 1109 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xd386A4EB67f3A9E5B04F7C243785b7d3df451295) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 77d15478a3c4bd757aedc9a6274f9558c8ec034645ede7678c7df1471860a6e0 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[feeCap] Processing transaction number 1110 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xd386A4EB67f3A9E5B04F7C243785b7d3df451295) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 77d15478a3c4bd757aedc9a6274f9558c8ec034645ede7678c7df1471860a6e0 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[feeCap] Processing transaction number 1111 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xd386A4EB67f3A9E5B04F7C243785b7d3df451295) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 77d15478a3c4bd757aedc9a6274f9558c8ec034645ede7678c7df1471860a6e0 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[feeCap] Processing transaction number 1112 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xd386A4EB67f3A9E5B04F7C243785b7d3df451295) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 77d15478a3c4bd757aedc9a6274f9558c8ec034645ede7678c7df1471860a6e0 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[feeCap] Processing transaction number 1113 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xd386A4EB67f3A9E5B04F7C243785b7d3df451295) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 77d15478a3c4bd757aedc9a6274f9558c8ec034645ede7678c7df1471860a6e0 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[feeCap] Processing transaction number 1114 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xd386A4EB67f3A9E5B04F7C243785b7d3df451295) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 77d15478a3c4bd757aedc9a6274f9558c8ec034645ede7678c7df1471860a6e0 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[feeCap] Processing transaction number 1115 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xd386A4EB67f3A9E5B04F7C243785b7d3df451295) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 77d15478a3c4bd757aedc9a6274f9558c8ec034645ede7678c7df1471860a6e0 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[feeCap] Processing transaction number 1116 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xd386A4EB67f3A9E5B04F7C243785b7d3df451295) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 77d15478a3c4bd757aedc9a6274f9558c8ec034645ede7678c7df1471860a6e0 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[feeCap] Processing transaction number 1117 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xd386A4EB67f3A9E5B04F7C243785b7d3df451295) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 77d15478a3c4bd757aedc9a6274f9558c8ec034645ede7678c7df1471860a6e0 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[feeCap] Processing transaction number 1118 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xd386A4EB67f3A9E5B04F7C243785b7d3df451295) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 77d15478a3c4bd757aedc9a6274f9558c8ec034645ede7678c7df1471860a6e0 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

