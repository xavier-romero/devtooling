# PRV_KEY for master sender 0x84B53CB09c7dEABD0E24eC01A610201AF3C6B80A
PRV_KEY=5c163479b4416b8004bf8078f8c4a8165bea308de880ed5ac6ae57db0c1d9bce
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test diff1024 (src/BlockchainTestsFiller/ValidBlocks/bcValidBlockTest/diff1024Filler.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+10))
echo "[diff1024] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x203eC6a7AcF6588e7dE3d3Dd549348B7abC52C29) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x203eC6a7AcF6588e7dE3d3Dd549348B7abC52C29 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[diff1024] Processing transaction number 698 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x203eC6a7AcF6588e7dE3d3Dd549348B7abC52C29) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key f46d870cc475dfc573b3ee0f4a7e532815766ee7dc185f8d0bf2ae27f1053b95 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

