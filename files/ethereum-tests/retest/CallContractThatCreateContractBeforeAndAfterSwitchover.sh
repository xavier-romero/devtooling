# PRV_KEY for master sender 0xc33D6E37A100315472A0d1B6fe2Ef539eB45f560
PRV_KEY=0ca4c5d025bd6e145be6d32ade41329b23f7c592de9d0ae39e5b8e4732069dbb
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test CallContractThatCreateContractBeforeAndAfterSwitchover (src/BlockchainTestsFiller/TransitionTests/bcFrontierToHomestead/CallContractThatCreateContractBeforeAndAfterSwitchoverFiller.json)"

AMOUNT=$((2*150000*5*$GAS_PRICE+50))
echo "[CallContractThatCreateContractBeforeAndAfterSwitchover] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x658e170d4b695F01D3e9E0503CF6aa333600c2B5) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x658e170d4b695F01D3e9E0503CF6aa333600c2B5 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[CallContractThatCreateContractBeforeAndAfterSwitchover] Creating receiver 0x1000000000000000000000000000000000000001 with code and balance 10000000000..."
ADDR_1000000000000000000000000000000000000001=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 10000000000 --create 6300000017601260003963000000176000F3446001555a60025560206000600039602060006000f000 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000001

echo "[CallContractThatCreateContractBeforeAndAfterSwitchover] Processing transaction number 879 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x658e170d4b695F01D3e9E0503CF6aa333600c2B5) to 0x1000000000000000000000000000000000000001"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 7bfec7a4acbfd96355fd2b6ba37c54e045916d5ba169cb5a6348438219a0e810 --timeout 20 --value 10 $ADDR_1000000000000000000000000000000000000001 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[CallContractThatCreateContractBeforeAndAfterSwitchover] Processing transaction number 880 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x658e170d4b695F01D3e9E0503CF6aa333600c2B5) to None"...
echo "[CallContractThatCreateContractBeforeAndAfterSwitchover] Processing transaction number 880 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x658e170d4b695F01D3e9E0503CF6aa333600c2B5) to None"...
echo "[CallContractThatCreateContractBeforeAndAfterSwitchover] Processing transaction number 880 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x658e170d4b695F01D3e9E0503CF6aa333600c2B5) to None"...
echo "[CallContractThatCreateContractBeforeAndAfterSwitchover] Processing transaction number 880 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x658e170d4b695F01D3e9E0503CF6aa333600c2B5) to 0x1000000000000000000000000000000000000001"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 7bfec7a4acbfd96355fd2b6ba37c54e045916d5ba169cb5a6348438219a0e810 --timeout 20 --value 10 $ADDR_1000000000000000000000000000000000000001 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

