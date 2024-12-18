# PRV_KEY for master sender 0x4E907F2f24b767A235393ac1Cd748501f46CfE55
PRV_KEY=fa6cb586dee9404769ba4fd6581a3015fb76b298ff5f2656df6138388e5f3942
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test staticcall (src/BlockchainTestsFiller/InvalidBlocks/bc4895-withdrawals/staticcallFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[staticcall] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xc54c4f49C4a946c395F534b75cb054C9b620A6B9) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xc54c4f49C4a946c395F534b75cb054C9b620A6B9 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[staticcall] Creating receiver 0xc000000000000000000000000000000000000001 with code and balance 10..."
ADDR_C000000000000000000000000000000000000001=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 10 --create 630000000a6012600039630000000a6000F364600060005560005200 | jq -r .contractAddress)
echo $ADDR_C000000000000000000000000000000000000001

echo "[staticcall] Creating receiver 0xd000000000000000000000000000000000000001 with code and balance 10..."
ADDR_D000000000000000000000000000000000000001=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 10 --create 6300000025601260003963000000256000F3600060006000600073c00000000000000000000000000000000000000161c350fa60005500 | jq -r .contractAddress)
echo $ADDR_D000000000000000000000000000000000000001

echo "[staticcall] Processing transaction number 154 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xc54c4f49C4a946c395F534b75cb054C9b620A6B9) to 0xd000000000000000000000000000000000000001"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key c2d0ea7dda69dff0dfa10c1f93cf0d6de1f7dbe609539f402a7a0bb998978277 --timeout 20 --value 0 $ADDR_D000000000000000000000000000000000000001 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

