# PRV_KEY for master sender 0x1bB58e3F9b9187e2a837aEF28Be98099bF89866e
PRV_KEY=e0c7b11604a47c5807f8b6f4d3204e9771389891a0f8bb4648f4323d80afe61d
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test checkGasLimit (src/BlockchainTestsFiller/InvalidBlocks/bcEIP1559/checkGasLimitFiller.yml)"

AMOUNT=$((2*150000*13*$GAS_PRICE+0))
echo "[checkGasLimit] Funding sender 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xb6580ccc5c508BE386fF8b6e217EfDC8B86d94b4) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xb6580ccc5c508BE386fF8b6e217EfDC8B86d94b4 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[checkGasLimit] Creating receiver 0x1111111111111111111111111111111111111111 with code and balance 1099511627776..."
ADDR_1111111111111111111111111111111111111111=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1099511627776 --create 6300000001601260003963000000016000F3fe | jq -r .contractAddress)
echo $ADDR_1111111111111111111111111111111111111111

echo "[checkGasLimit] Processing transaction number 1090 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xb6580ccc5c508BE386fF8b6e217EfDC8B86d94b4) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 2ac789fad7d1611c085186014f8ef6c8f27e55796dcd7154d0e1030538fd9e64 --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[checkGasLimit] Processing transaction number 1091 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xb6580ccc5c508BE386fF8b6e217EfDC8B86d94b4) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 2ac789fad7d1611c085186014f8ef6c8f27e55796dcd7154d0e1030538fd9e64 --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[checkGasLimit] Processing transaction number 1092 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xb6580ccc5c508BE386fF8b6e217EfDC8B86d94b4) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 2ac789fad7d1611c085186014f8ef6c8f27e55796dcd7154d0e1030538fd9e64 --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[checkGasLimit] Processing transaction number 1093 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xb6580ccc5c508BE386fF8b6e217EfDC8B86d94b4) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 2ac789fad7d1611c085186014f8ef6c8f27e55796dcd7154d0e1030538fd9e64 --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[checkGasLimit] Processing transaction number 1094 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xb6580ccc5c508BE386fF8b6e217EfDC8B86d94b4) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 2ac789fad7d1611c085186014f8ef6c8f27e55796dcd7154d0e1030538fd9e64 --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[checkGasLimit] Processing transaction number 1095 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xb6580ccc5c508BE386fF8b6e217EfDC8B86d94b4) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 2ac789fad7d1611c085186014f8ef6c8f27e55796dcd7154d0e1030538fd9e64 --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[checkGasLimit] Processing transaction number 1096 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xb6580ccc5c508BE386fF8b6e217EfDC8B86d94b4) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 2ac789fad7d1611c085186014f8ef6c8f27e55796dcd7154d0e1030538fd9e64 --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[checkGasLimit] Processing transaction number 1097 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xb6580ccc5c508BE386fF8b6e217EfDC8B86d94b4) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 2ac789fad7d1611c085186014f8ef6c8f27e55796dcd7154d0e1030538fd9e64 --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[checkGasLimit] Processing transaction number 1098 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xb6580ccc5c508BE386fF8b6e217EfDC8B86d94b4) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 2ac789fad7d1611c085186014f8ef6c8f27e55796dcd7154d0e1030538fd9e64 --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[checkGasLimit] Processing transaction number 1099 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xb6580ccc5c508BE386fF8b6e217EfDC8B86d94b4) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 2ac789fad7d1611c085186014f8ef6c8f27e55796dcd7154d0e1030538fd9e64 --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[checkGasLimit] Processing transaction number 1100 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xb6580ccc5c508BE386fF8b6e217EfDC8B86d94b4) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 2ac789fad7d1611c085186014f8ef6c8f27e55796dcd7154d0e1030538fd9e64 --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[checkGasLimit] Processing transaction number 1101 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xb6580ccc5c508BE386fF8b6e217EfDC8B86d94b4) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 2ac789fad7d1611c085186014f8ef6c8f27e55796dcd7154d0e1030538fd9e64 --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[checkGasLimit] Processing transaction number 1102 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xb6580ccc5c508BE386fF8b6e217EfDC8B86d94b4) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 2ac789fad7d1611c085186014f8ef6c8f27e55796dcd7154d0e1030538fd9e64 --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

