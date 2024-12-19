# PRV_KEY for master sender 0x691aD5d0dFA7f0A128be28384F33ba086E74eF77
PRV_KEY=d94ed43c33d279f113f6471d2be002d038f5b09f094b54e2f525f81ad9066877
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test highDemand (src/BlockchainTestsFiller/ValidBlocks/bcEIP1559/highDemandFiller.yml)"

AMOUNT=$((2*150000*16*$GAS_PRICE+0))
echo "[highDemand] Funding sender 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xF975eD735A62E625AeFd47F75F0303A059aE6c6C) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xF975eD735A62E625AeFd47F75F0303A059aE6c6C | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[highDemand] Creating receiver 0xcccccccccccccccccccccccccccccccccccccccc with code and balance 1099511627776..."
ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1099511627776 --create 6300000003601260003963000000036000F33a4355 | jq -r .contractAddress)
echo $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

echo "[highDemand] Creating receiver 0x1111111111111111111111111111111111111111 with code and balance 1099511627776..."
ADDR_1111111111111111111111111111111111111111=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1099511627776 --create 6300000001601260003963000000016000F3FE | jq -r .contractAddress)
echo $ADDR_1111111111111111111111111111111111111111

echo "[highDemand] Processing transaction number 1177 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xF975eD735A62E625AeFd47F75F0303A059aE6c6C) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 33c400442fad0f1880bff4d39cd295193f89d3f44d823a0d5b8b5a563085057c --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[highDemand] Processing transaction number 1178 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xF975eD735A62E625AeFd47F75F0303A059aE6c6C) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 33c400442fad0f1880bff4d39cd295193f89d3f44d823a0d5b8b5a563085057c --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[highDemand] Processing transaction number 1179 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xF975eD735A62E625AeFd47F75F0303A059aE6c6C) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 33c400442fad0f1880bff4d39cd295193f89d3f44d823a0d5b8b5a563085057c --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[highDemand] Processing transaction number 1180 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xF975eD735A62E625AeFd47F75F0303A059aE6c6C) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 33c400442fad0f1880bff4d39cd295193f89d3f44d823a0d5b8b5a563085057c --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[highDemand] Processing transaction number 1181 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xF975eD735A62E625AeFd47F75F0303A059aE6c6C) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 33c400442fad0f1880bff4d39cd295193f89d3f44d823a0d5b8b5a563085057c --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[highDemand] Processing transaction number 1182 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xF975eD735A62E625AeFd47F75F0303A059aE6c6C) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 33c400442fad0f1880bff4d39cd295193f89d3f44d823a0d5b8b5a563085057c --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[highDemand] Processing transaction number 1183 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xF975eD735A62E625AeFd47F75F0303A059aE6c6C) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 33c400442fad0f1880bff4d39cd295193f89d3f44d823a0d5b8b5a563085057c --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[highDemand] Processing transaction number 1184 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xF975eD735A62E625AeFd47F75F0303A059aE6c6C) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 33c400442fad0f1880bff4d39cd295193f89d3f44d823a0d5b8b5a563085057c --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[highDemand] Processing transaction number 1185 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xF975eD735A62E625AeFd47F75F0303A059aE6c6C) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 33c400442fad0f1880bff4d39cd295193f89d3f44d823a0d5b8b5a563085057c --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[highDemand] Processing transaction number 1186 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xF975eD735A62E625AeFd47F75F0303A059aE6c6C) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 33c400442fad0f1880bff4d39cd295193f89d3f44d823a0d5b8b5a563085057c --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[highDemand] Processing transaction number 1187 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xF975eD735A62E625AeFd47F75F0303A059aE6c6C) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 33c400442fad0f1880bff4d39cd295193f89d3f44d823a0d5b8b5a563085057c --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[highDemand] Processing transaction number 1188 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xF975eD735A62E625AeFd47F75F0303A059aE6c6C) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 33c400442fad0f1880bff4d39cd295193f89d3f44d823a0d5b8b5a563085057c --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[highDemand] Processing transaction number 1189 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xF975eD735A62E625AeFd47F75F0303A059aE6c6C) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 33c400442fad0f1880bff4d39cd295193f89d3f44d823a0d5b8b5a563085057c --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[highDemand] Processing transaction number 1190 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xF975eD735A62E625AeFd47F75F0303A059aE6c6C) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 33c400442fad0f1880bff4d39cd295193f89d3f44d823a0d5b8b5a563085057c --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[highDemand] Processing transaction number 1191 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xF975eD735A62E625AeFd47F75F0303A059aE6c6C) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 33c400442fad0f1880bff4d39cd295193f89d3f44d823a0d5b8b5a563085057c --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[highDemand] Processing transaction number 1192 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xF975eD735A62E625AeFd47F75F0303A059aE6c6C) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 33c400442fad0f1880bff4d39cd295193f89d3f44d823a0d5b8b5a563085057c --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

