# PRV_KEY for master sender 0xBEAD110DF8e9b03eAdd343E948524170C2F8D19c
PRV_KEY=66fe5962c3421c36eb7e1fb9e38ed9e32c73e310108e03fd2e90b2a4e69eff03
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test powToPosBlockRejection (src/BlockchainTestsFiller/TransitionTests/bcArrowGlacierToParis/powToPosBlockRejectionFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[powToPosBlockRejection] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xfc147F2281Bb6337Bdf62eefBcb56B738A8b84a3) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xfc147F2281Bb6337Bdf62eefBcb56B738A8b84a3 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[powToPosBlockRejection] Creating receiver 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b with code and balance 100000000000000000..."
ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100000000000000000 --create 6300000006601260003963000000066000F36001600c5500 | jq -r .contractAddress)
echo $ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B

echo "[powToPosBlockRejection] Processing transaction number 911 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xfc147F2281Bb6337Bdf62eefBcb56B738A8b84a3) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 76e8ba36fc9d44fb0d3d3692c833ae897deffc2ad4b0189590bc16053aa83b2c --timeout 20 --value 0 $ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

