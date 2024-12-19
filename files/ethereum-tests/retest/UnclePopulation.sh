# PRV_KEY for master sender 0xD7f7ca9c2c7b6A92fD97CA11f0A7b70718af0Ec3
PRV_KEY=16daab0313cbccddc01f76934e0e544f1310b4c560fd27be95870da06997f58d
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test UnclePopulation (src/BlockchainTestsFiller/TransitionTests/bcFrontierToHomestead/UnclePopulationFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+10))
echo "[UnclePopulation] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xCF23e28dDAf46dd0DC62336f917A3cbE5dA1D3cF) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xCF23e28dDAf46dd0DC62336f917A3cbE5dA1D3cF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[UnclePopulation] Processing transaction number 881 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xCF23e28dDAf46dd0DC62336f917A3cbE5dA1D3cF) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d7a487383839ce35e43c48baedf7014e588171715bc5fc66220bc0a986d61fdc --timeout 20 --value 10 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

