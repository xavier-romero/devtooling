# PRV_KEY for master sender 0x1bFaAe9f4f820C42c8B228ecACDD60D942e38E61
PRV_KEY=58b4707234286b010e3fd8154f40043f12adb7c1430aab7b232a7af7f3773d89
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test GasLimitHigherThan2p63m1 (src/BlockchainTestsFiller/InvalidBlocks/bcInvalidHeaderTest/GasLimitHigherThan2p63m1Filler.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+10))
echo "[GasLimitHigherThan2p63m1] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xAd275620589cE5f5C27b46c7D35E90BB43faf6dB) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xAd275620589cE5f5C27b46c7D35E90BB43faf6dB | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[GasLimitHigherThan2p63m1] Creating receiver 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b with code and balance 0..."
ADDR_AAAF5374FCE5EDBC8E2A8697C15331677E6EBF0B=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6300000016601260003963000000166000F373a94f5374fce5edbc8e2a8697c15331677e6ebf0bff | jq -r .contractAddress)
echo $ADDR_AAAF5374FCE5EDBC8E2A8697C15331677E6EBF0B

echo "[GasLimitHigherThan2p63m1] Processing transaction number 279 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xAd275620589cE5f5C27b46c7D35E90BB43faf6dB) to 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key b6a6d15811c4450fbdf344babe54030ac60ba183cc7eee36acd79210f7d277c3 --timeout 20 --value 10 $ADDR_AAAF5374FCE5EDBC8E2A8697C15331677E6EBF0B | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

