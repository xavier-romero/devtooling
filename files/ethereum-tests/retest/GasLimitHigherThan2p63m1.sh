# PRV_KEY for master sender 0xbcec6A5C9207300b57377E5197C40ed09427F6A4
PRV_KEY=3ed2b1ca10818d4d2f4c57a91aefbf25dc48895eee5ab6ea6c70f6ffb7d6947c
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test GasLimitHigherThan2p63m1 (src/BlockchainTestsFiller/InvalidBlocks/bcInvalidHeaderTest/GasLimitHigherThan2p63m1Filler.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+10))
echo "[GasLimitHigherThan2p63m1] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x27530A1A0eF402DDCD4A51A46Be454D0b0153Fc2) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x27530A1A0eF402DDCD4A51A46Be454D0b0153Fc2 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[GasLimitHigherThan2p63m1] Creating receiver 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b with code and balance 0..."
ADDR_AAAF5374FCE5EDBC8E2A8697C15331677E6EBF0B=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6300000016601260003963000000166000F373a94f5374fce5edbc8e2a8697c15331677e6ebf0bff | jq -r .contractAddress)
echo $ADDR_AAAF5374FCE5EDBC8E2A8697C15331677E6EBF0B

echo "[GasLimitHigherThan2p63m1] Processing transaction number 279 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x27530A1A0eF402DDCD4A51A46Be454D0b0153Fc2) to 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key de9fee3d028665211a9639341bbb03f30e5220010459edad6c8d3d69d3946518 --timeout 20 --value 10 $ADDR_AAAF5374FCE5EDBC8E2A8697C15331677E6EBF0B | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

