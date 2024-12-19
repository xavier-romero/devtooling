# PRV_KEY for master sender 0xCdF9dC0e5E4a300a35183C52f9decE87046B33E4
PRV_KEY=758437ea158e9b355435640a246a988fe71e92fe53eb94141b21b5ff6a7342cb
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test gasLimitTooHigh (src/BlockchainTestsFiller/InvalidBlocks/bcUncleHeaderValidity/gasLimitTooHighFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[gasLimitTooHigh] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xA4eEbc322184128Ae644ED038697EEABfcB439A3) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xA4eEbc322184128Ae644ED038697EEABfcB439A3 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[gasLimitTooHigh] Processing transaction number 94 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xA4eEbc322184128Ae644ED038697EEABfcB439A3) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 583a02b6d7ac17cda76660f7ef4288cc793522a2698b8240cbf76be3d1d0a554 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[gasLimitTooHigh] Processing transaction number 95 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xA4eEbc322184128Ae644ED038697EEABfcB439A3) to 0x0000000000000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 583a02b6d7ac17cda76660f7ef4288cc793522a2698b8240cbf76be3d1d0a554 --timeout 20 --value 10 0x0000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[gasLimitTooHigh] Processing transaction number 96 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xA4eEbc322184128Ae644ED038697EEABfcB439A3) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 583a02b6d7ac17cda76660f7ef4288cc793522a2698b8240cbf76be3d1d0a554 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

