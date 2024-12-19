# PRV_KEY for master sender 0x2919b9648163F70c26553d307Aa05a2Bc5d965A0
PRV_KEY=4b4a261a19c541481161d42359cfdd11a1a0d5b2e25be0360cbda21513a3729f
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test staticcall (src/BlockchainTestsFiller/InvalidBlocks/bc4895-withdrawals/staticcallFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[staticcall] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE78e9337F93f0D770495845A3b025c35EAe85A0c) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xE78e9337F93f0D770495845A3b025c35EAe85A0c | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[staticcall] Creating receiver 0xc000000000000000000000000000000000000001 with code and balance 10..."
ADDR_C000000000000000000000000000000000000001=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 10 --create 630000000a6012600039630000000a6000F364600060005560005200 | jq -r .contractAddress)
echo $ADDR_C000000000000000000000000000000000000001

echo "[staticcall] Creating receiver 0xd000000000000000000000000000000000000001 with code and balance 10..."
ADDR_D000000000000000000000000000000000000001=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 10 --create 6300000025601260003963000000256000F3600060006000600073c00000000000000000000000000000000000000161c350fa60005500 | jq -r .contractAddress)
echo $ADDR_D000000000000000000000000000000000000001

echo "[staticcall] Processing transaction number 154 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE78e9337F93f0D770495845A3b025c35EAe85A0c) to 0xd000000000000000000000000000000000000001"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key c683626af0ef5a5bc8b22a8f91cf8daa0247fdc1cef0a5ac0a1f58757ef46585 --timeout 20 --value 0 $ADDR_D000000000000000000000000000000000000001 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

