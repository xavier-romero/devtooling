# PRV_KEY for master sender 0xAe33949463d57d75Ab06F02744CBDDa994b5F2eC
PRV_KEY=6cee17805c7a2a232f7e9879ff4e4de85ba929eec58fdf4765afd781171cdf53
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test incorrectUncleTimestamp4 (src/BlockchainTestsFiller/InvalidBlocks/bcUncleHeaderValidity/incorrectUncleTimestamp4Filler.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[incorrectUncleTimestamp4] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0A91874477baeF1BC5F7015dd2397c5DD69E1775) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x0A91874477baeF1BC5F7015dd2397c5DD69E1775 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[incorrectUncleTimestamp4] Processing transaction number 103 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0A91874477baeF1BC5F7015dd2397c5DD69E1775) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 8ffb07758d827cd1fe52b598774170e5da639f4ac6f5be7db212d458ac84a49b --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[incorrectUncleTimestamp4] Processing transaction number 104 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0A91874477baeF1BC5F7015dd2397c5DD69E1775) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 8ffb07758d827cd1fe52b598774170e5da639f4ac6f5be7db212d458ac84a49b --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[incorrectUncleTimestamp4] Processing transaction number 105 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0A91874477baeF1BC5F7015dd2397c5DD69E1775) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 8ffb07758d827cd1fe52b598774170e5da639f4ac6f5be7db212d458ac84a49b --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

