# PRV_KEY for master sender 0xA3dFa44998842D0E01ee5a143B69611961ec3D03
PRV_KEY=72a613eb1aca7612765a42473df5eb11371956d6486fa06709f64d3db391c520
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test lowDemand (src/BlockchainTestsFiller/ValidBlocks/bcEIP1559/lowDemandFiller.yml)"

AMOUNT=$((2*150000*50*$GAS_PRICE+0))
echo "[lowDemand] Funding sender 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xaE00c1F32967883E7C7fB19Aa22c34512f2aA28d) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xaE00c1F32967883E7C7fB19Aa22c34512f2aA28d | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Creating receiver 0xcccccccccccccccccccccccccccccccccccccccc with code and balance 1099511627776..."
ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1099511627776 --create 6300000003601260003963000000036000F33a4355 | jq -r .contractAddress)
echo $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

echo "[lowDemand] Processing transaction number 1312 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xaE00c1F32967883E7C7fB19Aa22c34512f2aA28d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ffdd47f1db375dab27311011a5a948c4ec278a68e1ba3cf2d8e71aa000a4fa7e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1313 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xaE00c1F32967883E7C7fB19Aa22c34512f2aA28d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ffdd47f1db375dab27311011a5a948c4ec278a68e1ba3cf2d8e71aa000a4fa7e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1314 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xaE00c1F32967883E7C7fB19Aa22c34512f2aA28d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ffdd47f1db375dab27311011a5a948c4ec278a68e1ba3cf2d8e71aa000a4fa7e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1315 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xaE00c1F32967883E7C7fB19Aa22c34512f2aA28d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ffdd47f1db375dab27311011a5a948c4ec278a68e1ba3cf2d8e71aa000a4fa7e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1316 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xaE00c1F32967883E7C7fB19Aa22c34512f2aA28d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ffdd47f1db375dab27311011a5a948c4ec278a68e1ba3cf2d8e71aa000a4fa7e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1317 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xaE00c1F32967883E7C7fB19Aa22c34512f2aA28d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ffdd47f1db375dab27311011a5a948c4ec278a68e1ba3cf2d8e71aa000a4fa7e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1318 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xaE00c1F32967883E7C7fB19Aa22c34512f2aA28d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ffdd47f1db375dab27311011a5a948c4ec278a68e1ba3cf2d8e71aa000a4fa7e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1319 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xaE00c1F32967883E7C7fB19Aa22c34512f2aA28d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ffdd47f1db375dab27311011a5a948c4ec278a68e1ba3cf2d8e71aa000a4fa7e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1320 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xaE00c1F32967883E7C7fB19Aa22c34512f2aA28d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ffdd47f1db375dab27311011a5a948c4ec278a68e1ba3cf2d8e71aa000a4fa7e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1321 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xaE00c1F32967883E7C7fB19Aa22c34512f2aA28d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ffdd47f1db375dab27311011a5a948c4ec278a68e1ba3cf2d8e71aa000a4fa7e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1322 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xaE00c1F32967883E7C7fB19Aa22c34512f2aA28d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ffdd47f1db375dab27311011a5a948c4ec278a68e1ba3cf2d8e71aa000a4fa7e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1323 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xaE00c1F32967883E7C7fB19Aa22c34512f2aA28d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ffdd47f1db375dab27311011a5a948c4ec278a68e1ba3cf2d8e71aa000a4fa7e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1324 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xaE00c1F32967883E7C7fB19Aa22c34512f2aA28d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ffdd47f1db375dab27311011a5a948c4ec278a68e1ba3cf2d8e71aa000a4fa7e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1325 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xaE00c1F32967883E7C7fB19Aa22c34512f2aA28d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ffdd47f1db375dab27311011a5a948c4ec278a68e1ba3cf2d8e71aa000a4fa7e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1326 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xaE00c1F32967883E7C7fB19Aa22c34512f2aA28d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ffdd47f1db375dab27311011a5a948c4ec278a68e1ba3cf2d8e71aa000a4fa7e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1327 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xaE00c1F32967883E7C7fB19Aa22c34512f2aA28d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ffdd47f1db375dab27311011a5a948c4ec278a68e1ba3cf2d8e71aa000a4fa7e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1328 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xaE00c1F32967883E7C7fB19Aa22c34512f2aA28d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ffdd47f1db375dab27311011a5a948c4ec278a68e1ba3cf2d8e71aa000a4fa7e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1329 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xaE00c1F32967883E7C7fB19Aa22c34512f2aA28d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ffdd47f1db375dab27311011a5a948c4ec278a68e1ba3cf2d8e71aa000a4fa7e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1330 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xaE00c1F32967883E7C7fB19Aa22c34512f2aA28d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ffdd47f1db375dab27311011a5a948c4ec278a68e1ba3cf2d8e71aa000a4fa7e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1331 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xaE00c1F32967883E7C7fB19Aa22c34512f2aA28d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ffdd47f1db375dab27311011a5a948c4ec278a68e1ba3cf2d8e71aa000a4fa7e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1332 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xaE00c1F32967883E7C7fB19Aa22c34512f2aA28d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ffdd47f1db375dab27311011a5a948c4ec278a68e1ba3cf2d8e71aa000a4fa7e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1333 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xaE00c1F32967883E7C7fB19Aa22c34512f2aA28d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ffdd47f1db375dab27311011a5a948c4ec278a68e1ba3cf2d8e71aa000a4fa7e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1334 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xaE00c1F32967883E7C7fB19Aa22c34512f2aA28d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ffdd47f1db375dab27311011a5a948c4ec278a68e1ba3cf2d8e71aa000a4fa7e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1335 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xaE00c1F32967883E7C7fB19Aa22c34512f2aA28d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ffdd47f1db375dab27311011a5a948c4ec278a68e1ba3cf2d8e71aa000a4fa7e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1336 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xaE00c1F32967883E7C7fB19Aa22c34512f2aA28d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ffdd47f1db375dab27311011a5a948c4ec278a68e1ba3cf2d8e71aa000a4fa7e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1337 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xaE00c1F32967883E7C7fB19Aa22c34512f2aA28d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ffdd47f1db375dab27311011a5a948c4ec278a68e1ba3cf2d8e71aa000a4fa7e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1338 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xaE00c1F32967883E7C7fB19Aa22c34512f2aA28d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ffdd47f1db375dab27311011a5a948c4ec278a68e1ba3cf2d8e71aa000a4fa7e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1339 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xaE00c1F32967883E7C7fB19Aa22c34512f2aA28d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ffdd47f1db375dab27311011a5a948c4ec278a68e1ba3cf2d8e71aa000a4fa7e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1340 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xaE00c1F32967883E7C7fB19Aa22c34512f2aA28d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ffdd47f1db375dab27311011a5a948c4ec278a68e1ba3cf2d8e71aa000a4fa7e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1341 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xaE00c1F32967883E7C7fB19Aa22c34512f2aA28d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ffdd47f1db375dab27311011a5a948c4ec278a68e1ba3cf2d8e71aa000a4fa7e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1342 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xaE00c1F32967883E7C7fB19Aa22c34512f2aA28d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ffdd47f1db375dab27311011a5a948c4ec278a68e1ba3cf2d8e71aa000a4fa7e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1343 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xaE00c1F32967883E7C7fB19Aa22c34512f2aA28d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ffdd47f1db375dab27311011a5a948c4ec278a68e1ba3cf2d8e71aa000a4fa7e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1344 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xaE00c1F32967883E7C7fB19Aa22c34512f2aA28d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ffdd47f1db375dab27311011a5a948c4ec278a68e1ba3cf2d8e71aa000a4fa7e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1345 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xaE00c1F32967883E7C7fB19Aa22c34512f2aA28d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ffdd47f1db375dab27311011a5a948c4ec278a68e1ba3cf2d8e71aa000a4fa7e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1346 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xaE00c1F32967883E7C7fB19Aa22c34512f2aA28d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ffdd47f1db375dab27311011a5a948c4ec278a68e1ba3cf2d8e71aa000a4fa7e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1347 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xaE00c1F32967883E7C7fB19Aa22c34512f2aA28d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ffdd47f1db375dab27311011a5a948c4ec278a68e1ba3cf2d8e71aa000a4fa7e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1348 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xaE00c1F32967883E7C7fB19Aa22c34512f2aA28d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ffdd47f1db375dab27311011a5a948c4ec278a68e1ba3cf2d8e71aa000a4fa7e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1349 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xaE00c1F32967883E7C7fB19Aa22c34512f2aA28d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ffdd47f1db375dab27311011a5a948c4ec278a68e1ba3cf2d8e71aa000a4fa7e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1350 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xaE00c1F32967883E7C7fB19Aa22c34512f2aA28d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ffdd47f1db375dab27311011a5a948c4ec278a68e1ba3cf2d8e71aa000a4fa7e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1351 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xaE00c1F32967883E7C7fB19Aa22c34512f2aA28d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ffdd47f1db375dab27311011a5a948c4ec278a68e1ba3cf2d8e71aa000a4fa7e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1352 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xaE00c1F32967883E7C7fB19Aa22c34512f2aA28d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ffdd47f1db375dab27311011a5a948c4ec278a68e1ba3cf2d8e71aa000a4fa7e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1353 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xaE00c1F32967883E7C7fB19Aa22c34512f2aA28d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ffdd47f1db375dab27311011a5a948c4ec278a68e1ba3cf2d8e71aa000a4fa7e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1354 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xaE00c1F32967883E7C7fB19Aa22c34512f2aA28d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ffdd47f1db375dab27311011a5a948c4ec278a68e1ba3cf2d8e71aa000a4fa7e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1355 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xaE00c1F32967883E7C7fB19Aa22c34512f2aA28d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ffdd47f1db375dab27311011a5a948c4ec278a68e1ba3cf2d8e71aa000a4fa7e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1356 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xaE00c1F32967883E7C7fB19Aa22c34512f2aA28d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ffdd47f1db375dab27311011a5a948c4ec278a68e1ba3cf2d8e71aa000a4fa7e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1357 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xaE00c1F32967883E7C7fB19Aa22c34512f2aA28d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ffdd47f1db375dab27311011a5a948c4ec278a68e1ba3cf2d8e71aa000a4fa7e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1358 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xaE00c1F32967883E7C7fB19Aa22c34512f2aA28d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ffdd47f1db375dab27311011a5a948c4ec278a68e1ba3cf2d8e71aa000a4fa7e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1359 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xaE00c1F32967883E7C7fB19Aa22c34512f2aA28d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ffdd47f1db375dab27311011a5a948c4ec278a68e1ba3cf2d8e71aa000a4fa7e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1360 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xaE00c1F32967883E7C7fB19Aa22c34512f2aA28d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ffdd47f1db375dab27311011a5a948c4ec278a68e1ba3cf2d8e71aa000a4fa7e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[lowDemand] Processing transaction number 1361 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xaE00c1F32967883E7C7fB19Aa22c34512f2aA28d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ffdd47f1db375dab27311011a5a948c4ec278a68e1ba3cf2d8e71aa000a4fa7e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

