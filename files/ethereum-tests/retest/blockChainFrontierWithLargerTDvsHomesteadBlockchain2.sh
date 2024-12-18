# PRV_KEY for master sender 0xf65bd66339884178beD2F593eaC515F01Fa376E3
PRV_KEY=67cc058742732467af1b4c876773f91ed4160f98343f8325ee68887b3e36deee
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test blockChainFrontierWithLargerTDvsHomesteadBlockchain2 (src/BlockchainTestsFiller/TransitionTests/bcFrontierToHomestead/blockChainFrontierWithLargerTDvsHomesteadBlockchain2Filler.json)"

AMOUNT=$((2*150000*2*$GAS_PRICE+40))
echo "[blockChainFrontierWithLargerTDvsHomesteadBlockchain2] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x74d568d36dA7bCCbD95A1Ec6D5c26EfA8212eB67) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x74d568d36dA7bCCbD95A1Ec6D5c26EfA8212eB67 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[blockChainFrontierWithLargerTDvsHomesteadBlockchain2] Processing transaction number 876 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x74d568d36dA7bCCbD95A1Ec6D5c26EfA8212eB67) to None"...
echo "[blockChainFrontierWithLargerTDvsHomesteadBlockchain2] Processing transaction number 876 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x74d568d36dA7bCCbD95A1Ec6D5c26EfA8212eB67) to None"...
