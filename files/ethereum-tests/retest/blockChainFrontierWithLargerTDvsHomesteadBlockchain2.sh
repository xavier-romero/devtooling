# PRV_KEY for master sender 0x14774ADccED361e80e94886790DBF11F3d22A616
PRV_KEY=df8da4b06f0c1911d8119429aecc734eaf3ef627cce1e4c89cd4fac7d9844e35
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test blockChainFrontierWithLargerTDvsHomesteadBlockchain2 (src/BlockchainTestsFiller/TransitionTests/bcFrontierToHomestead/blockChainFrontierWithLargerTDvsHomesteadBlockchain2Filler.json)"

AMOUNT=$((2*150000*2*$GAS_PRICE+40))
echo "[blockChainFrontierWithLargerTDvsHomesteadBlockchain2] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8FE7E4529BCfAA9683311b47f938841439B9693B) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x8FE7E4529BCfAA9683311b47f938841439B9693B | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[blockChainFrontierWithLargerTDvsHomesteadBlockchain2] Processing transaction number 876 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8FE7E4529BCfAA9683311b47f938841439B9693B) to None"...
echo "[blockChainFrontierWithLargerTDvsHomesteadBlockchain2] Processing transaction number 876 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8FE7E4529BCfAA9683311b47f938841439B9693B) to None"...
