# PRV_KEY for master sender 0x5E0CD51557e74344D2b9aD61EEadE3b6DeFF623B
PRV_KEY=8f9d40cf6ffea7fa78308111e92508c4fb8c00a3656514ba1bf471df18649742
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test createNameRegistratorPerTxsNotEnoughGasAt (src/BlockchainTestsFiller/InvalidBlocks/bcStateTests/createNameRegistratorPerTxsNotEnoughGasAtFiller.json)"

AMOUNT=$((2*150000*2*$GAS_PRICE+200000))
echo "[createNameRegistratorPerTxsNotEnoughGasAt] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xA7d243a579Fb05C48fA8D4eEa48FDd112169D061) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xA7d243a579Fb05C48fA8D4eEa48FDd112169D061 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[createNameRegistratorPerTxsNotEnoughGasAt] Processing transaction number 144 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xA7d243a579Fb05C48fA8D4eEa48FDd112169D061) to None"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 68f4be31868982c5af40f3dcd74edc93e841fbfb6aa355af4c791b29027f1cd7 --timeout 20 --value 100000 --create 0x6001600155601080600c6000396000f3006000355415600957005b60203560003555 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[createNameRegistratorPerTxsNotEnoughGasAt] Processing transaction number 145 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xA7d243a579Fb05C48fA8D4eEa48FDd112169D061) to None"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 68f4be31868982c5af40f3dcd74edc93e841fbfb6aa355af4c791b29027f1cd7 --timeout 20 --value 100000 --create 0x622fffff60002000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

