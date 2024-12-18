# PRV_KEY for master sender 0xF6605588dFB71263f6C0e2BA57899122F4543dc9
PRV_KEY=8f98df8bc7458f56cdb3edebe0244208d2337a78fb64c815f9f99fa5035502a1
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test medDemand (src/BlockchainTestsFiller/ValidBlocks/bcEIP1559/medDemandFiller.yml)"

AMOUNT=$((2*150000*46*$GAS_PRICE+0))
echo "[medDemand] Funding sender 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf82b4f98009CD0eA75642C1627eC5300A1ab9e78) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xf82b4f98009CD0eA75642C1627eC5300A1ab9e78 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[medDemand] Creating receiver 0xcccccccccccccccccccccccccccccccccccccccc with code and balance 1099511627776..."
ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1099511627776 --create 6300000003601260003963000000036000F33a4355 | jq -r .contractAddress)
echo $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

echo "[medDemand] Creating receiver 0x1111111111111111111111111111111111111111 with code and balance 1099511627776..."
ADDR_1111111111111111111111111111111111111111=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1099511627776 --create 6300000001601260003963000000016000F3FE | jq -r .contractAddress)
echo $ADDR_1111111111111111111111111111111111111111

echo "[medDemand] Processing transaction number 1131 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf82b4f98009CD0eA75642C1627eC5300A1ab9e78) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 87865e2c1b1fecbdffc086f960d596f6ceca50187036cd152b4868428f661497 --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[medDemand] Processing transaction number 1132 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf82b4f98009CD0eA75642C1627eC5300A1ab9e78) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 87865e2c1b1fecbdffc086f960d596f6ceca50187036cd152b4868428f661497 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[medDemand] Processing transaction number 1133 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf82b4f98009CD0eA75642C1627eC5300A1ab9e78) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 87865e2c1b1fecbdffc086f960d596f6ceca50187036cd152b4868428f661497 --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[medDemand] Processing transaction number 1134 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf82b4f98009CD0eA75642C1627eC5300A1ab9e78) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 87865e2c1b1fecbdffc086f960d596f6ceca50187036cd152b4868428f661497 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[medDemand] Processing transaction number 1135 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf82b4f98009CD0eA75642C1627eC5300A1ab9e78) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 87865e2c1b1fecbdffc086f960d596f6ceca50187036cd152b4868428f661497 --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[medDemand] Processing transaction number 1136 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf82b4f98009CD0eA75642C1627eC5300A1ab9e78) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 87865e2c1b1fecbdffc086f960d596f6ceca50187036cd152b4868428f661497 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[medDemand] Processing transaction number 1137 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf82b4f98009CD0eA75642C1627eC5300A1ab9e78) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 87865e2c1b1fecbdffc086f960d596f6ceca50187036cd152b4868428f661497 --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[medDemand] Processing transaction number 1138 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf82b4f98009CD0eA75642C1627eC5300A1ab9e78) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 87865e2c1b1fecbdffc086f960d596f6ceca50187036cd152b4868428f661497 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[medDemand] Processing transaction number 1139 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf82b4f98009CD0eA75642C1627eC5300A1ab9e78) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 87865e2c1b1fecbdffc086f960d596f6ceca50187036cd152b4868428f661497 --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[medDemand] Processing transaction number 1140 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf82b4f98009CD0eA75642C1627eC5300A1ab9e78) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 87865e2c1b1fecbdffc086f960d596f6ceca50187036cd152b4868428f661497 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[medDemand] Processing transaction number 1141 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf82b4f98009CD0eA75642C1627eC5300A1ab9e78) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 87865e2c1b1fecbdffc086f960d596f6ceca50187036cd152b4868428f661497 --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[medDemand] Processing transaction number 1142 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf82b4f98009CD0eA75642C1627eC5300A1ab9e78) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 87865e2c1b1fecbdffc086f960d596f6ceca50187036cd152b4868428f661497 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[medDemand] Processing transaction number 1143 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf82b4f98009CD0eA75642C1627eC5300A1ab9e78) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 87865e2c1b1fecbdffc086f960d596f6ceca50187036cd152b4868428f661497 --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[medDemand] Processing transaction number 1144 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf82b4f98009CD0eA75642C1627eC5300A1ab9e78) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 87865e2c1b1fecbdffc086f960d596f6ceca50187036cd152b4868428f661497 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[medDemand] Processing transaction number 1145 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf82b4f98009CD0eA75642C1627eC5300A1ab9e78) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 87865e2c1b1fecbdffc086f960d596f6ceca50187036cd152b4868428f661497 --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[medDemand] Processing transaction number 1146 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf82b4f98009CD0eA75642C1627eC5300A1ab9e78) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 87865e2c1b1fecbdffc086f960d596f6ceca50187036cd152b4868428f661497 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[medDemand] Processing transaction number 1147 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf82b4f98009CD0eA75642C1627eC5300A1ab9e78) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 87865e2c1b1fecbdffc086f960d596f6ceca50187036cd152b4868428f661497 --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[medDemand] Processing transaction number 1148 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf82b4f98009CD0eA75642C1627eC5300A1ab9e78) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 87865e2c1b1fecbdffc086f960d596f6ceca50187036cd152b4868428f661497 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[medDemand] Processing transaction number 1149 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf82b4f98009CD0eA75642C1627eC5300A1ab9e78) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 87865e2c1b1fecbdffc086f960d596f6ceca50187036cd152b4868428f661497 --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[medDemand] Processing transaction number 1150 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf82b4f98009CD0eA75642C1627eC5300A1ab9e78) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 87865e2c1b1fecbdffc086f960d596f6ceca50187036cd152b4868428f661497 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[medDemand] Processing transaction number 1151 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf82b4f98009CD0eA75642C1627eC5300A1ab9e78) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 87865e2c1b1fecbdffc086f960d596f6ceca50187036cd152b4868428f661497 --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[medDemand] Processing transaction number 1152 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf82b4f98009CD0eA75642C1627eC5300A1ab9e78) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 87865e2c1b1fecbdffc086f960d596f6ceca50187036cd152b4868428f661497 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[medDemand] Processing transaction number 1153 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf82b4f98009CD0eA75642C1627eC5300A1ab9e78) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 87865e2c1b1fecbdffc086f960d596f6ceca50187036cd152b4868428f661497 --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[medDemand] Processing transaction number 1154 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf82b4f98009CD0eA75642C1627eC5300A1ab9e78) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 87865e2c1b1fecbdffc086f960d596f6ceca50187036cd152b4868428f661497 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[medDemand] Processing transaction number 1155 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf82b4f98009CD0eA75642C1627eC5300A1ab9e78) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 87865e2c1b1fecbdffc086f960d596f6ceca50187036cd152b4868428f661497 --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[medDemand] Processing transaction number 1156 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf82b4f98009CD0eA75642C1627eC5300A1ab9e78) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 87865e2c1b1fecbdffc086f960d596f6ceca50187036cd152b4868428f661497 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[medDemand] Processing transaction number 1157 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf82b4f98009CD0eA75642C1627eC5300A1ab9e78) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 87865e2c1b1fecbdffc086f960d596f6ceca50187036cd152b4868428f661497 --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[medDemand] Processing transaction number 1158 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf82b4f98009CD0eA75642C1627eC5300A1ab9e78) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 87865e2c1b1fecbdffc086f960d596f6ceca50187036cd152b4868428f661497 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[medDemand] Processing transaction number 1159 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf82b4f98009CD0eA75642C1627eC5300A1ab9e78) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 87865e2c1b1fecbdffc086f960d596f6ceca50187036cd152b4868428f661497 --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[medDemand] Processing transaction number 1160 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf82b4f98009CD0eA75642C1627eC5300A1ab9e78) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 87865e2c1b1fecbdffc086f960d596f6ceca50187036cd152b4868428f661497 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[medDemand] Processing transaction number 1161 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf82b4f98009CD0eA75642C1627eC5300A1ab9e78) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 87865e2c1b1fecbdffc086f960d596f6ceca50187036cd152b4868428f661497 --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[medDemand] Processing transaction number 1162 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf82b4f98009CD0eA75642C1627eC5300A1ab9e78) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 87865e2c1b1fecbdffc086f960d596f6ceca50187036cd152b4868428f661497 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[medDemand] Processing transaction number 1163 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf82b4f98009CD0eA75642C1627eC5300A1ab9e78) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 87865e2c1b1fecbdffc086f960d596f6ceca50187036cd152b4868428f661497 --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[medDemand] Processing transaction number 1164 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf82b4f98009CD0eA75642C1627eC5300A1ab9e78) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 87865e2c1b1fecbdffc086f960d596f6ceca50187036cd152b4868428f661497 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[medDemand] Processing transaction number 1165 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf82b4f98009CD0eA75642C1627eC5300A1ab9e78) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 87865e2c1b1fecbdffc086f960d596f6ceca50187036cd152b4868428f661497 --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[medDemand] Processing transaction number 1166 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf82b4f98009CD0eA75642C1627eC5300A1ab9e78) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 87865e2c1b1fecbdffc086f960d596f6ceca50187036cd152b4868428f661497 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[medDemand] Processing transaction number 1167 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf82b4f98009CD0eA75642C1627eC5300A1ab9e78) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 87865e2c1b1fecbdffc086f960d596f6ceca50187036cd152b4868428f661497 --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[medDemand] Processing transaction number 1168 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf82b4f98009CD0eA75642C1627eC5300A1ab9e78) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 87865e2c1b1fecbdffc086f960d596f6ceca50187036cd152b4868428f661497 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[medDemand] Processing transaction number 1169 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf82b4f98009CD0eA75642C1627eC5300A1ab9e78) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 87865e2c1b1fecbdffc086f960d596f6ceca50187036cd152b4868428f661497 --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[medDemand] Processing transaction number 1170 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf82b4f98009CD0eA75642C1627eC5300A1ab9e78) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 87865e2c1b1fecbdffc086f960d596f6ceca50187036cd152b4868428f661497 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[medDemand] Processing transaction number 1171 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf82b4f98009CD0eA75642C1627eC5300A1ab9e78) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 87865e2c1b1fecbdffc086f960d596f6ceca50187036cd152b4868428f661497 --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[medDemand] Processing transaction number 1172 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf82b4f98009CD0eA75642C1627eC5300A1ab9e78) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 87865e2c1b1fecbdffc086f960d596f6ceca50187036cd152b4868428f661497 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[medDemand] Processing transaction number 1173 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf82b4f98009CD0eA75642C1627eC5300A1ab9e78) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 87865e2c1b1fecbdffc086f960d596f6ceca50187036cd152b4868428f661497 --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[medDemand] Processing transaction number 1174 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf82b4f98009CD0eA75642C1627eC5300A1ab9e78) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 87865e2c1b1fecbdffc086f960d596f6ceca50187036cd152b4868428f661497 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[medDemand] Processing transaction number 1175 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf82b4f98009CD0eA75642C1627eC5300A1ab9e78) to 0x1111111111111111111111111111111111111111"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 87865e2c1b1fecbdffc086f960d596f6ceca50187036cd152b4868428f661497 --timeout 20 --value 0 $ADDR_1111111111111111111111111111111111111111 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[medDemand] Processing transaction number 1176 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0xf82b4f98009CD0eA75642C1627eC5300A1ab9e78) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 87865e2c1b1fecbdffc086f960d596f6ceca50187036cd152b4868428f661497 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

