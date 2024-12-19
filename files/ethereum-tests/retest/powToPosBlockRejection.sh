# PRV_KEY for master sender 0xc72919C6c18a0Cc260Ded5ca045aD0AA4E8A6e05
PRV_KEY=3400b5aa8218dae7e4d87681f5380a21e9ae6e7d88e68d4dd10b36af6bf9a32f
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test powToPosBlockRejection (src/BlockchainTestsFiller/TransitionTests/bcArrowGlacierToParis/powToPosBlockRejectionFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[powToPosBlockRejection] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x5F15970f42c75e73Ce1943C9700C154A6C75CCAe) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x5F15970f42c75e73Ce1943C9700C154A6C75CCAe | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[powToPosBlockRejection] Creating receiver 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b with code and balance 100000000000000000..."
ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100000000000000000 --create 6300000006601260003963000000066000F36001600c5500 | jq -r .contractAddress)
echo $ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B

echo "[powToPosBlockRejection] Processing transaction number 911 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x5F15970f42c75e73Ce1943C9700C154A6C75CCAe) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 77a1af53d220bf3c0219b749c170095a0d18d1b5f940596fe1d8580e88170a5e --timeout 20 --value 0 $ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

