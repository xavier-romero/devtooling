# PRV_KEY for master sender 0x76EF38d0dcc889be6C9Ab7d2e50798d0b65a6C4C
PRV_KEY=910171626e80529228cfa66b911d3f3079c85eaba93f3ff65e17484cd419c135
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test blockhashNonConstArg (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/blockhashNonConstArgFiller.json)"

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[blockhashNonConstArg] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x6d45cA8556DCc626139bece120C0E4aB45e20cD2) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x6d45cA8556DCc626139bece120C0E4aB45e20cD2 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[blockhashNonConstArg] Creating receiver 0x1000000000000000000000000000000000000000 with code and balance 0..."
ADDR_1000000000000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 630000001b6012600039630000001b6000F3731000000000000000000000000000000000000000314060015500 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000000

echo "[blockhashNonConstArg] Creating receiver 0x1000000000000000000000000000000000000001 with code and balance 1..."
ADDR_1000000000000000000000000000000000000001=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1 --create 630000001b6012600039630000001b6000F3731000000000000000000000000000000000000001314060015500 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000001

echo "[blockhashNonConstArg] Processing transaction number 773 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x6d45cA8556DCc626139bece120C0E4aB45e20cD2) to 0x1000000000000000000000000000000000000000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 773fd6d85d1e7bb5e437a1e94e46bf1c097f2fc103811c860faa1e5c3838d3b9 --timeout 20 --value 0 $ADDR_1000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[blockhashNonConstArg] Processing transaction number 774 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x6d45cA8556DCc626139bece120C0E4aB45e20cD2) to 0x1000000000000000000000000000000000000000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 773fd6d85d1e7bb5e437a1e94e46bf1c097f2fc103811c860faa1e5c3838d3b9 --timeout 20 --value 0 $ADDR_1000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

