# PRV_KEY for master sender 0x0F1e2ceaa564AdD93EDb21bb734Ef758dEc8A0d7
PRV_KEY=c744ee3566dbe15796ddac2df257b3a286fa5c0cbd5275d82d8bb094c5606e3c
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test HomesteadOverrideFrontier (src/BlockchainTestsFiller/TransitionTests/bcFrontierToHomestead/HomesteadOverrideFrontierFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+12))
echo "[HomesteadOverrideFrontier] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xDa4E383E14e6e5b3caaF8a3Cbe9B138D99E97F53) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xDa4E383E14e6e5b3caaF8a3Cbe9B138D99E97F53 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[HomesteadOverrideFrontier] Processing transaction number 876 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xDa4E383E14e6e5b3caaF8a3Cbe9B138D99E97F53) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key a846ccd614c1d5528d7b0b603d756607a07ded9c4f8c389ab5344eb186329396 --timeout 20 --value 1 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[HomesteadOverrideFrontier] Processing transaction number 877 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xDa4E383E14e6e5b3caaF8a3Cbe9B138D99E97F53) to None"...
echo "[HomesteadOverrideFrontier] Processing transaction number 877 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xDa4E383E14e6e5b3caaF8a3Cbe9B138D99E97F53) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key a846ccd614c1d5528d7b0b603d756607a07ded9c4f8c389ab5344eb186329396 --timeout 20 --value 10 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

