# PRV_KEY for master sender 0x01B37ece1D3Cc77D255375E0C06070Ebb622d63d
PRV_KEY=6c3285ca878e9f1912445b2eab713510f5d9db61cc9d3eb22a4c8f87a8b42779
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test suicideCoinbaseState (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/suicideCoinbaseStateFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+100000))
echo "[suicideCoinbaseState] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xcB531ac645488ddB63FACd1c12F2E61bB5142b97) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xcB531ac645488ddB63FACd1c12F2E61bB5142b97 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[suicideCoinbaseState] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 1000000000000000000..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000000000000000000 --create 6300000017601260003963000000176000F373a94f5374fce5edbc8e2a8697c15331677e6ebf0bff00 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[suicideCoinbaseState] Processing transaction number 749 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xcB531ac645488ddB63FACd1c12F2E61bB5142b97) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 7fb029478c656246b559d071d302fb26cb14b670757e1310a9851b76b57c5096 --timeout 20 --value 100000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

