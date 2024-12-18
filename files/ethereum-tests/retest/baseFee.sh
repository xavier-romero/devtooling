# PRV_KEY for master sender 0xc076c7bA1042D946B04F5cA6799D0A5c92A6Fa9a
PRV_KEY=7076cbc60df6f58b5254f7da2fe1ec131c553ce25817ac8155a452df7eade406
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test baseFee (src/BlockchainTestsFiller/InvalidBlocks/bcEIP1559/baseFeeFiller.yml)"

AMOUNT=$((2*150000*14*$GAS_PRICE+0))
echo "[baseFee] Funding sender 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x479cC5Dbbc880941e7f4620185bA40d1E696ADc9) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x479cC5Dbbc880941e7f4620185bA40d1E696ADc9 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[baseFee] Creating receiver 0xcccccccccccccccccccccccccccccccccccccccc with code and balance 1099511627776..."
ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1099511627776 --create 6300000014601260003963000000146000F3484355483a036110004301554761200043015500 | jq -r .contractAddress)
echo $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

echo "[baseFee] Creating receiver 0xcccccccccccccccccccccccccccccccccccccccd with code and balance 2199023255552..."
ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 2199023255552 --create 630000001e6012600039630000001e6000F360008060008073cccccccccccccccccccccccccccccccccccccccc5af450 | jq -r .contractAddress)
echo $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD

echo "[baseFee] Creating receiver 0x000000000000000000000000000000000000c0de with code and balance 0..."
ADDR_000000000000000000000000000000000000C0DE=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 630000001e6012600039630000001e6000F360008060008073cccccccccccccccccccccccccccccccccccccccc5af450 | jq -r .contractAddress)
echo $ADDR_000000000000000000000000000000000000C0DE

echo "[baseFee] Creating receiver 0xccccccccccccccccccccccccccccccccccccccce with code and balance 2199023255552..."
ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCE=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 2199023255552 --create 630000002e6012600039630000002e6000F360008060008061100061c0de5af160008060008073cccccccccccccccccccccccccccccccccccccccc5af4905050 | jq -r .contractAddress)
echo $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCE

echo "[baseFee] Processing transaction number 955 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x479cC5Dbbc880941e7f4620185bA40d1E696ADc9) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 23ad803ac23dc3f6b51bc24c889f0e73c1cba9491d6d892b0edf24dc74f967ce --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 0x01 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[baseFee] Processing transaction number 956 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x479cC5Dbbc880941e7f4620185bA40d1E696ADc9) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 23ad803ac23dc3f6b51bc24c889f0e73c1cba9491d6d892b0edf24dc74f967ce --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 0x0201 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[baseFee] Processing transaction number 957 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x479cC5Dbbc880941e7f4620185bA40d1E696ADc9) to 0xcccccccccccccccccccccccccccccccccccccccd"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 23ad803ac23dc3f6b51bc24c889f0e73c1cba9491d6d892b0edf24dc74f967ce --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD 0x0202 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[baseFee] Processing transaction number 958 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x479cC5Dbbc880941e7f4620185bA40d1E696ADc9) to 0xccccccccccccccccccccccccccccccccccccccce"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 23ad803ac23dc3f6b51bc24c889f0e73c1cba9491d6d892b0edf24dc74f967ce --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCE 0x0203 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[baseFee] Processing transaction number 959 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x479cC5Dbbc880941e7f4620185bA40d1E696ADc9) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 23ad803ac23dc3f6b51bc24c889f0e73c1cba9491d6d892b0edf24dc74f967ce --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 0x0301 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[baseFee] Processing transaction number 960 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x479cC5Dbbc880941e7f4620185bA40d1E696ADc9) to 0xcccccccccccccccccccccccccccccccccccccccd"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 23ad803ac23dc3f6b51bc24c889f0e73c1cba9491d6d892b0edf24dc74f967ce --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD 0x0302 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[baseFee] Processing transaction number 961 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x479cC5Dbbc880941e7f4620185bA40d1E696ADc9) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 23ad803ac23dc3f6b51bc24c889f0e73c1cba9491d6d892b0edf24dc74f967ce --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 0x0301 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[baseFee] Processing transaction number 962 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x479cC5Dbbc880941e7f4620185bA40d1E696ADc9) to 0xccccccccccccccccccccccccccccccccccccccce"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 23ad803ac23dc3f6b51bc24c889f0e73c1cba9491d6d892b0edf24dc74f967ce --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCE 0x0303 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[baseFee] Processing transaction number 963 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x479cC5Dbbc880941e7f4620185bA40d1E696ADc9) to 0xcccccccccccccccccccccccccccccccccccccccd"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 23ad803ac23dc3f6b51bc24c889f0e73c1cba9491d6d892b0edf24dc74f967ce --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD 0x0304 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[baseFee] Processing transaction number 964 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x479cC5Dbbc880941e7f4620185bA40d1E696ADc9) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 23ad803ac23dc3f6b51bc24c889f0e73c1cba9491d6d892b0edf24dc74f967ce --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 0x0401 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[baseFee] Processing transaction number 965 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x479cC5Dbbc880941e7f4620185bA40d1E696ADc9) to 0xcccccccccccccccccccccccccccccccccccccccd"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 23ad803ac23dc3f6b51bc24c889f0e73c1cba9491d6d892b0edf24dc74f967ce --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD 0x0402 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[baseFee] Processing transaction number 966 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x479cC5Dbbc880941e7f4620185bA40d1E696ADc9) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 23ad803ac23dc3f6b51bc24c889f0e73c1cba9491d6d892b0edf24dc74f967ce --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 0x0401 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[baseFee] Processing transaction number 967 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x479cC5Dbbc880941e7f4620185bA40d1E696ADc9) to 0xccccccccccccccccccccccccccccccccccccccce"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 23ad803ac23dc3f6b51bc24c889f0e73c1cba9491d6d892b0edf24dc74f967ce --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCE 0x0403 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[baseFee] Processing transaction number 968 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x479cC5Dbbc880941e7f4620185bA40d1E696ADc9) to 0xcccccccccccccccccccccccccccccccccccccccd"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 23ad803ac23dc3f6b51bc24c889f0e73c1cba9491d6d892b0edf24dc74f967ce --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD 0x0404 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

