# PRV_KEY for master sender 0xD1Dbd97543984bcFB83B6429C06f9a7ED05b037f
PRV_KEY=6eed92ac558a2485dad77c8c76bc5810d921e3c8143563b11ec374ecac604f8e
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test besuBaseFeeBug (src/BlockchainTestsFiller/ValidBlocks/bcEIP1559/besuBaseFeeBugFiller.json)"

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[besuBaseFeeBug] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xFa686f7a73c239578A247556cbFF8bE3209011a2) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xFa686f7a73c239578A247556cbFF8bE3209011a2 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[besuBaseFeeBug] Creating receiver 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b with code and balance 0..."
ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6300000008601260003963000000086000F3623fffff60002000 | jq -r .contractAddress)
echo $ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B

echo "[besuBaseFeeBug] Processing transaction number 297 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xFa686f7a73c239578A247556cbFF8bE3209011a2) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 68b9b7813ed9e0ceaf0b9ad2948136a5985948298b296d7372ceec7a0fd8dff2 --timeout 20 --value 0 $ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[besuBaseFeeBug] Processing transaction number 298 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xFa686f7a73c239578A247556cbFF8bE3209011a2) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 68b9b7813ed9e0ceaf0b9ad2948136a5985948298b296d7372ceec7a0fd8dff2 --timeout 20 --value 0 $ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

