# PRV_KEY for master sender 0xE2107854989d32A6e6dD5bf81D92Cc44eF027D5d
PRV_KEY=1fd001fd3944b78a6012d1d8918aefeaa73352fec6af420a9b9fe42e330338b9
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test baseFee (src/BlockchainTestsFiller/InvalidBlocks/bcEIP1559/baseFeeFiller.yml)"

AMOUNT=$((2*150000*14*$GAS_PRICE+0))
echo "[baseFee] Funding sender 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x3086A48Cf8DDd1ba9f6909cd2cc0d8233C1b0DEe) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x3086A48Cf8DDd1ba9f6909cd2cc0d8233C1b0DEe | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[baseFee] Creating receiver 0xcccccccccccccccccccccccccccccccccccccccc with code and balance 1099511627776..."
ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1099511627776 --create 6300000014601260003963000000146000F3484355483a036110004301554761200043015500 | jq -r .contractAddress)
echo $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

echo "[baseFee] Creating receiver 0xcccccccccccccccccccccccccccccccccccccccd with code and balance 2199023255552..."
ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 2199023255552 --create 630000001e6012600039630000001e6000F360008060008073cccccccccccccccccccccccccccccccccccccccc5af450 | jq -r .contractAddress)
echo $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD

echo "[baseFee] Creating receiver 0x000000000000000000000000000000000000c0de with code and balance 0..."
ADDR_000000000000000000000000000000000000C0DE=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 630000001e6012600039630000001e6000F360008060008073cccccccccccccccccccccccccccccccccccccccc5af450 | jq -r .contractAddress)
echo $ADDR_000000000000000000000000000000000000C0DE

echo "[baseFee] Creating receiver 0xccccccccccccccccccccccccccccccccccccccce with code and balance 2199023255552..."
ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCE=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 2199023255552 --create 630000002e6012600039630000002e6000F360008060008061100061c0de5af160008060008073cccccccccccccccccccccccccccccccccccccccc5af4905050 | jq -r .contractAddress)
echo $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCE

echo "[baseFee] Processing transaction number 955 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x3086A48Cf8DDd1ba9f6909cd2cc0d8233C1b0DEe) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 978c79723f3a44a9d5d00a230f165edd50549cf27ddf0b7b9131ec014fe64415 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 0x01 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[baseFee] Processing transaction number 956 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x3086A48Cf8DDd1ba9f6909cd2cc0d8233C1b0DEe) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 978c79723f3a44a9d5d00a230f165edd50549cf27ddf0b7b9131ec014fe64415 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 0x0201 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[baseFee] Processing transaction number 957 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x3086A48Cf8DDd1ba9f6909cd2cc0d8233C1b0DEe) to 0xcccccccccccccccccccccccccccccccccccccccd"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 978c79723f3a44a9d5d00a230f165edd50549cf27ddf0b7b9131ec014fe64415 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD 0x0202 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[baseFee] Processing transaction number 958 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x3086A48Cf8DDd1ba9f6909cd2cc0d8233C1b0DEe) to 0xccccccccccccccccccccccccccccccccccccccce"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 978c79723f3a44a9d5d00a230f165edd50549cf27ddf0b7b9131ec014fe64415 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCE 0x0203 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[baseFee] Processing transaction number 959 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x3086A48Cf8DDd1ba9f6909cd2cc0d8233C1b0DEe) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 978c79723f3a44a9d5d00a230f165edd50549cf27ddf0b7b9131ec014fe64415 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 0x0301 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[baseFee] Processing transaction number 960 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x3086A48Cf8DDd1ba9f6909cd2cc0d8233C1b0DEe) to 0xcccccccccccccccccccccccccccccccccccccccd"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 978c79723f3a44a9d5d00a230f165edd50549cf27ddf0b7b9131ec014fe64415 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD 0x0302 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[baseFee] Processing transaction number 961 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x3086A48Cf8DDd1ba9f6909cd2cc0d8233C1b0DEe) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 978c79723f3a44a9d5d00a230f165edd50549cf27ddf0b7b9131ec014fe64415 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 0x0301 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[baseFee] Processing transaction number 962 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x3086A48Cf8DDd1ba9f6909cd2cc0d8233C1b0DEe) to 0xccccccccccccccccccccccccccccccccccccccce"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 978c79723f3a44a9d5d00a230f165edd50549cf27ddf0b7b9131ec014fe64415 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCE 0x0303 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[baseFee] Processing transaction number 963 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x3086A48Cf8DDd1ba9f6909cd2cc0d8233C1b0DEe) to 0xcccccccccccccccccccccccccccccccccccccccd"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 978c79723f3a44a9d5d00a230f165edd50549cf27ddf0b7b9131ec014fe64415 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD 0x0304 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[baseFee] Processing transaction number 964 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x3086A48Cf8DDd1ba9f6909cd2cc0d8233C1b0DEe) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 978c79723f3a44a9d5d00a230f165edd50549cf27ddf0b7b9131ec014fe64415 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 0x0401 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[baseFee] Processing transaction number 965 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x3086A48Cf8DDd1ba9f6909cd2cc0d8233C1b0DEe) to 0xcccccccccccccccccccccccccccccccccccccccd"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 978c79723f3a44a9d5d00a230f165edd50549cf27ddf0b7b9131ec014fe64415 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD 0x0402 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[baseFee] Processing transaction number 966 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x3086A48Cf8DDd1ba9f6909cd2cc0d8233C1b0DEe) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 978c79723f3a44a9d5d00a230f165edd50549cf27ddf0b7b9131ec014fe64415 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 0x0401 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[baseFee] Processing transaction number 967 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x3086A48Cf8DDd1ba9f6909cd2cc0d8233C1b0DEe) to 0xccccccccccccccccccccccccccccccccccccccce"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 978c79723f3a44a9d5d00a230f165edd50549cf27ddf0b7b9131ec014fe64415 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCE 0x0403 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[baseFee] Processing transaction number 968 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x3086A48Cf8DDd1ba9f6909cd2cc0d8233C1b0DEe) to 0xcccccccccccccccccccccccccccccccccccccccd"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 978c79723f3a44a9d5d00a230f165edd50549cf27ddf0b7b9131ec014fe64415 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD 0x0404 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

