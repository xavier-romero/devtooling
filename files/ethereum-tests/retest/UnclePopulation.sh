# PRV_KEY for master sender 0xa210D38f98Aa62Eb804c8a7320977520E8a464f8
PRV_KEY=c876dbcdfd6aad43b79509afb408ff3ca04b42e2cffd0c41d10a5e23da137a55
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test UnclePopulation (src/BlockchainTestsFiller/TransitionTests/bcFrontierToHomestead/UnclePopulationFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+10))
echo "[UnclePopulation] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xeb74E4CE7b4af0Edbf1ee0294f4816AD9375487F) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xeb74E4CE7b4af0Edbf1ee0294f4816AD9375487F | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[UnclePopulation] Processing transaction number 881 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xeb74E4CE7b4af0Edbf1ee0294f4816AD9375487F) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key e52be9bedfce99baf293f8cf5e8c6fb89d8d95fc227c17792b741a817fa7eabc --timeout 20 --value 10 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

