# PRV_KEY for master sender 0xd2578Cb94cE9eb9C93181dE2D0Bf9248918dff3F
PRV_KEY=5b3eb58f69dbfbef88a96e4895e6e289c74c2f3bdcd453543407c060f7b99cc7
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test incorrectUncleTimestamp3 (src/BlockchainTestsFiller/InvalidBlocks/bcUncleHeaderValidity/incorrectUncleTimestamp3Filler.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[incorrectUncleTimestamp3] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0d3d2BceE8112857fB8d016DD65E7Cfcc4657010) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x0d3d2BceE8112857fB8d016DD65E7Cfcc4657010 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[incorrectUncleTimestamp3] Processing transaction number 73 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0d3d2BceE8112857fB8d016DD65E7Cfcc4657010) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 06e40df68c638980694833ff95665aa5283663db7eaede478bf0ed98b597c0b2 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[incorrectUncleTimestamp3] Processing transaction number 74 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0d3d2BceE8112857fB8d016DD65E7Cfcc4657010) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 06e40df68c638980694833ff95665aa5283663db7eaede478bf0ed98b597c0b2 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[incorrectUncleTimestamp3] Processing transaction number 75 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0d3d2BceE8112857fB8d016DD65E7Cfcc4657010) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 06e40df68c638980694833ff95665aa5283663db7eaede478bf0ed98b597c0b2 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

