# PRV_KEY for master sender 0xef439A0be716093cc40873bF2b4340EF11bcE41D
PRV_KEY=1f56dc38c55d23f2897d7d1dac5f57139c333a76f5b17f2c75149837db7118b6
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test futureUncleTimestamp3 (src/BlockchainTestsFiller/InvalidBlocks/bcUncleSpecialTests/futureUncleTimestamp3Filler.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[futureUncleTimestamp3] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x5aBd87D085826B4441C21f8972919eCA1B83e11D) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x5aBd87D085826B4441C21f8972919eCA1B83e11D | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[futureUncleTimestamp3] Processing transaction number 13 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x5aBd87D085826B4441C21f8972919eCA1B83e11D) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key f9c7c12a3f93483a493939d50ec4a63e882c41b29cce38307715bdaddabe1dbb --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[futureUncleTimestamp3] Processing transaction number 14 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x5aBd87D085826B4441C21f8972919eCA1B83e11D) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key f9c7c12a3f93483a493939d50ec4a63e882c41b29cce38307715bdaddabe1dbb --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[futureUncleTimestamp3] Processing transaction number 15 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x5aBd87D085826B4441C21f8972919eCA1B83e11D) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key f9c7c12a3f93483a493939d50ec4a63e882c41b29cce38307715bdaddabe1dbb --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

