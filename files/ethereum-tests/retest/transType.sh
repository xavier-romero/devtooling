# PRV_KEY for master sender 0x18E1D5a19E987622a3175F048d30c1318775E7E2
PRV_KEY=3b914ac7cfe6e5969fc578c865a7c3f68a3e42def4db2d0b95fc930346314e3c
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test transType (src/BlockchainTestsFiller/ValidBlocks/bcEIP1559/transTypeFiller.yml)"

AMOUNT=$((2*150000*7*$GAS_PRICE+0))
echo "[transType] Funding sender 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xBb4127996CfC5D8754A89224a9D3702888a23f84) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xBb4127996CfC5D8754A89224a9D3702888a23f84 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transType] Processing transaction number 1424 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xBb4127996CfC5D8754A89224a9D3702888a23f84) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 472ec1738d932b653be7c31fb60b0857d5072398ecc79d1f13219b989b0b6e8c --timeout 20 --value 0 0xcccccccccccccccccccccccccccccccccccccccc | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transType] Processing transaction number 1425 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xBb4127996CfC5D8754A89224a9D3702888a23f84) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 472ec1738d932b653be7c31fb60b0857d5072398ecc79d1f13219b989b0b6e8c --timeout 20 --value 0 0xcccccccccccccccccccccccccccccccccccccccc | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transType] Processing transaction number 1426 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xBb4127996CfC5D8754A89224a9D3702888a23f84) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 472ec1738d932b653be7c31fb60b0857d5072398ecc79d1f13219b989b0b6e8c --timeout 20 --value 0 0xcccccccccccccccccccccccccccccccccccccccc | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transType] Processing transaction number 1427 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xBb4127996CfC5D8754A89224a9D3702888a23f84) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 472ec1738d932b653be7c31fb60b0857d5072398ecc79d1f13219b989b0b6e8c --timeout 20 --value 0 0xcccccccccccccccccccccccccccccccccccccccc | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transType] Processing transaction number 1428 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xBb4127996CfC5D8754A89224a9D3702888a23f84) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 472ec1738d932b653be7c31fb60b0857d5072398ecc79d1f13219b989b0b6e8c --timeout 20 --value 0 0xcccccccccccccccccccccccccccccccccccccccc | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transType] Processing transaction number 1429 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xBb4127996CfC5D8754A89224a9D3702888a23f84) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 472ec1738d932b653be7c31fb60b0857d5072398ecc79d1f13219b989b0b6e8c --timeout 20 --value 0 0xcccccccccccccccccccccccccccccccccccccccc | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transType] Processing transaction number 1430 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xBb4127996CfC5D8754A89224a9D3702888a23f84) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 472ec1738d932b653be7c31fb60b0857d5072398ecc79d1f13219b989b0b6e8c --timeout 20 --value 0 0xcccccccccccccccccccccccccccccccccccccccc | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

