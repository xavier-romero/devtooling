# PRV_KEY for master sender 0x3Ba1eaaE52AF83e2478aaD5472aF100eD5899948
PRV_KEY=b0fc9b62e5e2baf93f519c08b4dac205f70685e80b20ba656480f53c23b19b5c
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test lowDemand (src/BlockchainTestsFiller/ValidBlocks/bcEIP1559/lowDemandFiller.yml)"

AMOUNT=$((2*150000*50*$GAS_PRICE+0))
echo "[lowDemand] Funding sender 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xA74ab9f82F0d3B9Bc3D4b215C719517Cd6dBEBE7) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xA74ab9f82F0d3B9Bc3D4b215C719517Cd6dBEBE7 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Creating receiver 0xcccccccccccccccccccccccccccccccccccccccc with code and balance 1099511627776..."
ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1099511627776 --create 6300000003601260003963000000036000F33a4355 | jq -r .contractAddress)
echo $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

echo "[lowDemand] Processing transaction number 1312 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xA74ab9f82F0d3B9Bc3D4b215C719517Cd6dBEBE7) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 582947c749ba1f33b932eaa1a42b44b8be6c54feb91d3346b133a4a8820f9829 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1313 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xA74ab9f82F0d3B9Bc3D4b215C719517Cd6dBEBE7) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 582947c749ba1f33b932eaa1a42b44b8be6c54feb91d3346b133a4a8820f9829 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1314 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xA74ab9f82F0d3B9Bc3D4b215C719517Cd6dBEBE7) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 582947c749ba1f33b932eaa1a42b44b8be6c54feb91d3346b133a4a8820f9829 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1315 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xA74ab9f82F0d3B9Bc3D4b215C719517Cd6dBEBE7) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 582947c749ba1f33b932eaa1a42b44b8be6c54feb91d3346b133a4a8820f9829 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1316 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xA74ab9f82F0d3B9Bc3D4b215C719517Cd6dBEBE7) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 582947c749ba1f33b932eaa1a42b44b8be6c54feb91d3346b133a4a8820f9829 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1317 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xA74ab9f82F0d3B9Bc3D4b215C719517Cd6dBEBE7) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 582947c749ba1f33b932eaa1a42b44b8be6c54feb91d3346b133a4a8820f9829 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1318 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xA74ab9f82F0d3B9Bc3D4b215C719517Cd6dBEBE7) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 582947c749ba1f33b932eaa1a42b44b8be6c54feb91d3346b133a4a8820f9829 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1319 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xA74ab9f82F0d3B9Bc3D4b215C719517Cd6dBEBE7) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 582947c749ba1f33b932eaa1a42b44b8be6c54feb91d3346b133a4a8820f9829 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1320 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xA74ab9f82F0d3B9Bc3D4b215C719517Cd6dBEBE7) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 582947c749ba1f33b932eaa1a42b44b8be6c54feb91d3346b133a4a8820f9829 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1321 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xA74ab9f82F0d3B9Bc3D4b215C719517Cd6dBEBE7) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 582947c749ba1f33b932eaa1a42b44b8be6c54feb91d3346b133a4a8820f9829 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1322 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xA74ab9f82F0d3B9Bc3D4b215C719517Cd6dBEBE7) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 582947c749ba1f33b932eaa1a42b44b8be6c54feb91d3346b133a4a8820f9829 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1323 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xA74ab9f82F0d3B9Bc3D4b215C719517Cd6dBEBE7) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 582947c749ba1f33b932eaa1a42b44b8be6c54feb91d3346b133a4a8820f9829 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1324 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xA74ab9f82F0d3B9Bc3D4b215C719517Cd6dBEBE7) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 582947c749ba1f33b932eaa1a42b44b8be6c54feb91d3346b133a4a8820f9829 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1325 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xA74ab9f82F0d3B9Bc3D4b215C719517Cd6dBEBE7) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 582947c749ba1f33b932eaa1a42b44b8be6c54feb91d3346b133a4a8820f9829 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1326 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xA74ab9f82F0d3B9Bc3D4b215C719517Cd6dBEBE7) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 582947c749ba1f33b932eaa1a42b44b8be6c54feb91d3346b133a4a8820f9829 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1327 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xA74ab9f82F0d3B9Bc3D4b215C719517Cd6dBEBE7) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 582947c749ba1f33b932eaa1a42b44b8be6c54feb91d3346b133a4a8820f9829 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1328 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xA74ab9f82F0d3B9Bc3D4b215C719517Cd6dBEBE7) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 582947c749ba1f33b932eaa1a42b44b8be6c54feb91d3346b133a4a8820f9829 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1329 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xA74ab9f82F0d3B9Bc3D4b215C719517Cd6dBEBE7) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 582947c749ba1f33b932eaa1a42b44b8be6c54feb91d3346b133a4a8820f9829 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1330 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xA74ab9f82F0d3B9Bc3D4b215C719517Cd6dBEBE7) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 582947c749ba1f33b932eaa1a42b44b8be6c54feb91d3346b133a4a8820f9829 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1331 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xA74ab9f82F0d3B9Bc3D4b215C719517Cd6dBEBE7) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 582947c749ba1f33b932eaa1a42b44b8be6c54feb91d3346b133a4a8820f9829 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1332 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xA74ab9f82F0d3B9Bc3D4b215C719517Cd6dBEBE7) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 582947c749ba1f33b932eaa1a42b44b8be6c54feb91d3346b133a4a8820f9829 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1333 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xA74ab9f82F0d3B9Bc3D4b215C719517Cd6dBEBE7) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 582947c749ba1f33b932eaa1a42b44b8be6c54feb91d3346b133a4a8820f9829 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1334 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xA74ab9f82F0d3B9Bc3D4b215C719517Cd6dBEBE7) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 582947c749ba1f33b932eaa1a42b44b8be6c54feb91d3346b133a4a8820f9829 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1335 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xA74ab9f82F0d3B9Bc3D4b215C719517Cd6dBEBE7) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 582947c749ba1f33b932eaa1a42b44b8be6c54feb91d3346b133a4a8820f9829 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1336 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xA74ab9f82F0d3B9Bc3D4b215C719517Cd6dBEBE7) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 582947c749ba1f33b932eaa1a42b44b8be6c54feb91d3346b133a4a8820f9829 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1337 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xA74ab9f82F0d3B9Bc3D4b215C719517Cd6dBEBE7) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 582947c749ba1f33b932eaa1a42b44b8be6c54feb91d3346b133a4a8820f9829 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1338 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xA74ab9f82F0d3B9Bc3D4b215C719517Cd6dBEBE7) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 582947c749ba1f33b932eaa1a42b44b8be6c54feb91d3346b133a4a8820f9829 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1339 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xA74ab9f82F0d3B9Bc3D4b215C719517Cd6dBEBE7) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 582947c749ba1f33b932eaa1a42b44b8be6c54feb91d3346b133a4a8820f9829 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1340 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xA74ab9f82F0d3B9Bc3D4b215C719517Cd6dBEBE7) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 582947c749ba1f33b932eaa1a42b44b8be6c54feb91d3346b133a4a8820f9829 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1341 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xA74ab9f82F0d3B9Bc3D4b215C719517Cd6dBEBE7) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 582947c749ba1f33b932eaa1a42b44b8be6c54feb91d3346b133a4a8820f9829 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1342 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xA74ab9f82F0d3B9Bc3D4b215C719517Cd6dBEBE7) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 582947c749ba1f33b932eaa1a42b44b8be6c54feb91d3346b133a4a8820f9829 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1343 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xA74ab9f82F0d3B9Bc3D4b215C719517Cd6dBEBE7) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 582947c749ba1f33b932eaa1a42b44b8be6c54feb91d3346b133a4a8820f9829 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1344 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xA74ab9f82F0d3B9Bc3D4b215C719517Cd6dBEBE7) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 582947c749ba1f33b932eaa1a42b44b8be6c54feb91d3346b133a4a8820f9829 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1345 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xA74ab9f82F0d3B9Bc3D4b215C719517Cd6dBEBE7) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 582947c749ba1f33b932eaa1a42b44b8be6c54feb91d3346b133a4a8820f9829 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1346 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xA74ab9f82F0d3B9Bc3D4b215C719517Cd6dBEBE7) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 582947c749ba1f33b932eaa1a42b44b8be6c54feb91d3346b133a4a8820f9829 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1347 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xA74ab9f82F0d3B9Bc3D4b215C719517Cd6dBEBE7) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 582947c749ba1f33b932eaa1a42b44b8be6c54feb91d3346b133a4a8820f9829 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1348 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xA74ab9f82F0d3B9Bc3D4b215C719517Cd6dBEBE7) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 582947c749ba1f33b932eaa1a42b44b8be6c54feb91d3346b133a4a8820f9829 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1349 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xA74ab9f82F0d3B9Bc3D4b215C719517Cd6dBEBE7) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 582947c749ba1f33b932eaa1a42b44b8be6c54feb91d3346b133a4a8820f9829 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1350 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xA74ab9f82F0d3B9Bc3D4b215C719517Cd6dBEBE7) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 582947c749ba1f33b932eaa1a42b44b8be6c54feb91d3346b133a4a8820f9829 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1351 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xA74ab9f82F0d3B9Bc3D4b215C719517Cd6dBEBE7) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 582947c749ba1f33b932eaa1a42b44b8be6c54feb91d3346b133a4a8820f9829 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1352 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xA74ab9f82F0d3B9Bc3D4b215C719517Cd6dBEBE7) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 582947c749ba1f33b932eaa1a42b44b8be6c54feb91d3346b133a4a8820f9829 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1353 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xA74ab9f82F0d3B9Bc3D4b215C719517Cd6dBEBE7) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 582947c749ba1f33b932eaa1a42b44b8be6c54feb91d3346b133a4a8820f9829 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1354 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xA74ab9f82F0d3B9Bc3D4b215C719517Cd6dBEBE7) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 582947c749ba1f33b932eaa1a42b44b8be6c54feb91d3346b133a4a8820f9829 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1355 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xA74ab9f82F0d3B9Bc3D4b215C719517Cd6dBEBE7) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 582947c749ba1f33b932eaa1a42b44b8be6c54feb91d3346b133a4a8820f9829 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1356 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xA74ab9f82F0d3B9Bc3D4b215C719517Cd6dBEBE7) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 582947c749ba1f33b932eaa1a42b44b8be6c54feb91d3346b133a4a8820f9829 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1357 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xA74ab9f82F0d3B9Bc3D4b215C719517Cd6dBEBE7) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 582947c749ba1f33b932eaa1a42b44b8be6c54feb91d3346b133a4a8820f9829 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1358 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xA74ab9f82F0d3B9Bc3D4b215C719517Cd6dBEBE7) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 582947c749ba1f33b932eaa1a42b44b8be6c54feb91d3346b133a4a8820f9829 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1359 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xA74ab9f82F0d3B9Bc3D4b215C719517Cd6dBEBE7) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 582947c749ba1f33b932eaa1a42b44b8be6c54feb91d3346b133a4a8820f9829 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1360 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xA74ab9f82F0d3B9Bc3D4b215C719517Cd6dBEBE7) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 582947c749ba1f33b932eaa1a42b44b8be6c54feb91d3346b133a4a8820f9829 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1361 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xA74ab9f82F0d3B9Bc3D4b215C719517Cd6dBEBE7) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 582947c749ba1f33b932eaa1a42b44b8be6c54feb91d3346b133a4a8820f9829 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

