# PRV_KEY for master sender 0xE0808b4ec06027C80D062c4517eBD2ef6b7F67D7
PRV_KEY=14d5d10daba9485047456463e6d77d8b5e7eb0a9ac18df354f3d1b4aef0207d7
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test ByzantiumTransition (src/BlockchainTestsFiller/TransitionTests/bcEIP158ToByzantium/ByzantiumTransitionFiller.json)"

AMOUNT=$((2*150000*2*$GAS_PRICE+2))
echo "[ByzantiumTransition] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x889C8D4647d1736E61b6d907894f61239dC07e72) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x889C8D4647d1736E61b6d907894f61239dC07e72 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[ByzantiumTransition] Creating receiver 0x1000000000000000000000000000000000000001 with code and balance 0..."
ADDR_1000000000000000000000000000000000000001=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6300000043601260003963000000436000F3600040600055600140600155600240600255600340600355600440600455600540600555600640600655600740600755600840600855600940600955600a40600a5500 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000001

echo "[ByzantiumTransition] Creating receiver 0x1000000000000000000000000000000000000002 with code and balance 0..."
ADDR_1000000000000000000000000000000000000002=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6300000043601260003963000000436000F3600040600055600140600155600240600255600340600355600440600455600540600555600640600655600740600755600840600855600940600955600a40600a5500 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000002

echo "[ByzantiumTransition] Processing transaction number 912 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x889C8D4647d1736E61b6d907894f61239dC07e72) to 0x1000000000000000000000000000000000000001"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 6b26a2886ea0456ebab3b750268866cbb4ff701e582a6740975baa9b8804f2e9 --timeout 20 --value 1 $ADDR_1000000000000000000000000000000000000001 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[ByzantiumTransition] Processing transaction number 913 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x889C8D4647d1736E61b6d907894f61239dC07e72) to 0x1000000000000000000000000000000000000002"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 6b26a2886ea0456ebab3b750268866cbb4ff701e582a6740975baa9b8804f2e9 --timeout 20 --value 1 $ADDR_1000000000000000000000000000000000000002 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

