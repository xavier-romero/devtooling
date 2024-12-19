# PRV_KEY for master sender 0x387b9e1cb5fE167ef39Ec3A4f82f2ac61b98a008
PRV_KEY=81757481b180cf919b90d46f3e740d2d51c812c192aca424b1a465f0f48ae3d5
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test checkGasLimit (src/BlockchainTestsFiller/InvalidBlocks/bcEIP1559/checkGasLimitFiller.yml)"

AMOUNT=$((2*150000*13*$GAS_PRICE+0))
echo "[checkGasLimit] Funding sender 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xAabCdDE2aaDE3BDf3EaFF559f523669cfB00b3E1) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xAabCdDE2aaDE3BDf3EaFF559f523669cfB00b3E1 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[checkGasLimit] Creating receiver 0x1111111111111111111111111111111111111111 with code and balance 1099511627776..."
ADDR_1111111111111111111111111111111111111111=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1099511627776 --create 6300000001601260003963000000016000F3fe | jq -r .contractAddress)
echo $ADDR_1111111111111111111111111111111111111111

echo "[checkGasLimit] Processing transaction number 1090 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xAabCdDE2aaDE3BDf3EaFF559f523669cfB00b3E1) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key cf3515e4d12c6ccc9edd4b7177274dde65c083df6daf7e5e18f95d22e593cd8d --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[checkGasLimit] Processing transaction number 1091 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xAabCdDE2aaDE3BDf3EaFF559f523669cfB00b3E1) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key cf3515e4d12c6ccc9edd4b7177274dde65c083df6daf7e5e18f95d22e593cd8d --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[checkGasLimit] Processing transaction number 1092 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xAabCdDE2aaDE3BDf3EaFF559f523669cfB00b3E1) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key cf3515e4d12c6ccc9edd4b7177274dde65c083df6daf7e5e18f95d22e593cd8d --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[checkGasLimit] Processing transaction number 1093 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xAabCdDE2aaDE3BDf3EaFF559f523669cfB00b3E1) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key cf3515e4d12c6ccc9edd4b7177274dde65c083df6daf7e5e18f95d22e593cd8d --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[checkGasLimit] Processing transaction number 1094 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xAabCdDE2aaDE3BDf3EaFF559f523669cfB00b3E1) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key cf3515e4d12c6ccc9edd4b7177274dde65c083df6daf7e5e18f95d22e593cd8d --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[checkGasLimit] Processing transaction number 1095 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xAabCdDE2aaDE3BDf3EaFF559f523669cfB00b3E1) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key cf3515e4d12c6ccc9edd4b7177274dde65c083df6daf7e5e18f95d22e593cd8d --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[checkGasLimit] Processing transaction number 1096 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xAabCdDE2aaDE3BDf3EaFF559f523669cfB00b3E1) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key cf3515e4d12c6ccc9edd4b7177274dde65c083df6daf7e5e18f95d22e593cd8d --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[checkGasLimit] Processing transaction number 1097 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xAabCdDE2aaDE3BDf3EaFF559f523669cfB00b3E1) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key cf3515e4d12c6ccc9edd4b7177274dde65c083df6daf7e5e18f95d22e593cd8d --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[checkGasLimit] Processing transaction number 1098 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xAabCdDE2aaDE3BDf3EaFF559f523669cfB00b3E1) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key cf3515e4d12c6ccc9edd4b7177274dde65c083df6daf7e5e18f95d22e593cd8d --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[checkGasLimit] Processing transaction number 1099 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xAabCdDE2aaDE3BDf3EaFF559f523669cfB00b3E1) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key cf3515e4d12c6ccc9edd4b7177274dde65c083df6daf7e5e18f95d22e593cd8d --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[checkGasLimit] Processing transaction number 1100 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xAabCdDE2aaDE3BDf3EaFF559f523669cfB00b3E1) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key cf3515e4d12c6ccc9edd4b7177274dde65c083df6daf7e5e18f95d22e593cd8d --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[checkGasLimit] Processing transaction number 1101 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xAabCdDE2aaDE3BDf3EaFF559f523669cfB00b3E1) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key cf3515e4d12c6ccc9edd4b7177274dde65c083df6daf7e5e18f95d22e593cd8d --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[checkGasLimit] Processing transaction number 1102 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xAabCdDE2aaDE3BDf3EaFF559f523669cfB00b3E1) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key cf3515e4d12c6ccc9edd4b7177274dde65c083df6daf7e5e18f95d22e593cd8d --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

