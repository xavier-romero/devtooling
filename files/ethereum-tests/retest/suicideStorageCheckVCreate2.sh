# PRV_KEY for master sender 0x14dC9DF8600291158d1F46981ba09a097b4Acb2C
PRV_KEY=75f195f2dfacc69bc07a7dafcffb222535236fa2439cdc93bf25d3368312ff99
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test suicideStorageCheckVCreate2 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/suicideStorageCheckVCreate2Filler.json)"

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[suicideStorageCheckVCreate2] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xe79546af13d6d26A8dF593D3E642C6f93278D18F) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xe79546af13d6d26A8dF593D3E642C6f93278D18F | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[suicideStorageCheckVCreate2] Creating receiver 0x03855fc81ba27fb87117ab961e6bef17f7e84250 with code and balance 1000..."
ADDR_03855FC81BA27FB87117AB961E6BEF17F7E84250=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000 --create 6300000009601260003963000000096000F360036001556001ff00 | jq -r .contractAddress)
echo $ADDR_03855FC81BA27FB87117AB961E6BEF17F7E84250

echo "[suicideStorageCheckVCreate2] Processing transaction number 726 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xe79546af13d6d26A8dF593D3E642C6f93278D18F) to 0x03855fc81ba27fb87117ab961e6bef17f7e84250"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key cacb9e32925498800b5092520559d8b3dbf30ac96b3836322053758d17ea3dd8 --timeout 20 --value 0 $ADDR_03855FC81BA27FB87117AB961E6BEF17F7E84250 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[suicideStorageCheckVCreate2] Processing transaction number 727 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xe79546af13d6d26A8dF593D3E642C6f93278D18F) to None"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key cacb9e32925498800b5092520559d8b3dbf30ac96b3836322053758d17ea3dd8 --timeout 20 --value 0 --create 0x6a60015460035560026002556000526000600b60156000f500 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

