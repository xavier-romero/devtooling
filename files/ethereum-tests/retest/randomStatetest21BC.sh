# PRV_KEY for master sender 0xb7c24836c350CCC3547a16C109521CE9d3Ad110e
PRV_KEY=c10a587e1c2d9be31ab09eb6843fe4840271c6b9d916f32b61202827440ea0de
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest21BC (src/BlockchainTestsFiller/ValidBlocks/bcRandomBlockhashTest/randomStatetest21BCFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+100000))
echo "[randomStatetest21BC] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xb1A1eA02f2b2627d55072624FA8D698b1e5d5Ff4) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xb1A1eA02f2b2627d55072624FA8D698b1e5d5Ff4 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest21BC] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 1000000000000000000..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000000000000000000 --create 630000000e6012600039630000000e6000F34440444245414045913c63087c55 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest21BC] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest21BC] Processing transaction number 594 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xb1A1eA02f2b2627d55072624FA8D698b1e5d5Ff4) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 3b66e0597a3ac1506bacc9f7808cf103dd413915b7498c19dc589c0ece75267b --timeout 20 --value 100000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x42 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

