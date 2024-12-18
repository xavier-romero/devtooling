# PRV_KEY for master sender 0xe9E04F0Cf6B5ADaFf04aA71694eb5aA5294eaf06
PRV_KEY=1ffb04d0465fe1a1a53709a2b27ada41223535942e1facedaae420f96999202f
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test highDemand (src/BlockchainTestsFiller/ValidBlocks/bcEIP1559/highDemandFiller.yml)"

AMOUNT=$((2*150000*16*$GAS_PRICE+0))
echo "[highDemand] Funding sender 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf4426c5D18FD40fb482bDEbFA0D3d889fC3984a0) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xf4426c5D18FD40fb482bDEbFA0D3d889fC3984a0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[highDemand] Creating receiver 0xcccccccccccccccccccccccccccccccccccccccc with code and balance 1099511627776..."
ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1099511627776 --create 6300000003601260003963000000036000F33a4355 | jq -r .contractAddress)
echo $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

echo "[highDemand] Creating receiver 0x1111111111111111111111111111111111111111 with code and balance 1099511627776..."
ADDR_1111111111111111111111111111111111111111=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1099511627776 --create 6300000001601260003963000000016000F3FE | jq -r .contractAddress)
echo $ADDR_1111111111111111111111111111111111111111

echo "[highDemand] Processing transaction number 1177 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf4426c5D18FD40fb482bDEbFA0D3d889fC3984a0) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 41342f4681f48d84462b456e495bdcc2d9a7598c990d535203f6921657321307 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[highDemand] Processing transaction number 1178 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf4426c5D18FD40fb482bDEbFA0D3d889fC3984a0) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 41342f4681f48d84462b456e495bdcc2d9a7598c990d535203f6921657321307 --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[highDemand] Processing transaction number 1179 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf4426c5D18FD40fb482bDEbFA0D3d889fC3984a0) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 41342f4681f48d84462b456e495bdcc2d9a7598c990d535203f6921657321307 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[highDemand] Processing transaction number 1180 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf4426c5D18FD40fb482bDEbFA0D3d889fC3984a0) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 41342f4681f48d84462b456e495bdcc2d9a7598c990d535203f6921657321307 --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[highDemand] Processing transaction number 1181 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf4426c5D18FD40fb482bDEbFA0D3d889fC3984a0) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 41342f4681f48d84462b456e495bdcc2d9a7598c990d535203f6921657321307 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[highDemand] Processing transaction number 1182 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf4426c5D18FD40fb482bDEbFA0D3d889fC3984a0) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 41342f4681f48d84462b456e495bdcc2d9a7598c990d535203f6921657321307 --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[highDemand] Processing transaction number 1183 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf4426c5D18FD40fb482bDEbFA0D3d889fC3984a0) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 41342f4681f48d84462b456e495bdcc2d9a7598c990d535203f6921657321307 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[highDemand] Processing transaction number 1184 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf4426c5D18FD40fb482bDEbFA0D3d889fC3984a0) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 41342f4681f48d84462b456e495bdcc2d9a7598c990d535203f6921657321307 --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[highDemand] Processing transaction number 1185 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf4426c5D18FD40fb482bDEbFA0D3d889fC3984a0) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 41342f4681f48d84462b456e495bdcc2d9a7598c990d535203f6921657321307 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[highDemand] Processing transaction number 1186 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf4426c5D18FD40fb482bDEbFA0D3d889fC3984a0) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 41342f4681f48d84462b456e495bdcc2d9a7598c990d535203f6921657321307 --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[highDemand] Processing transaction number 1187 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf4426c5D18FD40fb482bDEbFA0D3d889fC3984a0) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 41342f4681f48d84462b456e495bdcc2d9a7598c990d535203f6921657321307 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[highDemand] Processing transaction number 1188 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf4426c5D18FD40fb482bDEbFA0D3d889fC3984a0) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 41342f4681f48d84462b456e495bdcc2d9a7598c990d535203f6921657321307 --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[highDemand] Processing transaction number 1189 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf4426c5D18FD40fb482bDEbFA0D3d889fC3984a0) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 41342f4681f48d84462b456e495bdcc2d9a7598c990d535203f6921657321307 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[highDemand] Processing transaction number 1190 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf4426c5D18FD40fb482bDEbFA0D3d889fC3984a0) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 41342f4681f48d84462b456e495bdcc2d9a7598c990d535203f6921657321307 --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[highDemand] Processing transaction number 1191 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf4426c5D18FD40fb482bDEbFA0D3d889fC3984a0) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 41342f4681f48d84462b456e495bdcc2d9a7598c990d535203f6921657321307 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[highDemand] Processing transaction number 1192 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf4426c5D18FD40fb482bDEbFA0D3d889fC3984a0) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 41342f4681f48d84462b456e495bdcc2d9a7598c990d535203f6921657321307 --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

