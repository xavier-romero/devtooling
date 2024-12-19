# PRV_KEY for master sender 0x335313d86bcc92Fb1592b107aaB72D11269a7929
PRV_KEY=bc173f64ef187450341552faa7b74278ba57524ac6bbffce2f1dadd474112e6e
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test suicideStorageCheckVCreate2 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/suicideStorageCheckVCreate2Filler.json)"

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[suicideStorageCheckVCreate2] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE6DCCc9bC6467593391771c5CBd425b5A9cee52A) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xE6DCCc9bC6467593391771c5CBd425b5A9cee52A | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[suicideStorageCheckVCreate2] Creating receiver 0x03855fc81ba27fb87117ab961e6bef17f7e84250 with code and balance 1000..."
ADDR_03855FC81BA27FB87117AB961E6BEF17F7E84250=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000 --create 6300000009601260003963000000096000F360036001556001ff00 | jq -r .contractAddress)
echo $ADDR_03855FC81BA27FB87117AB961E6BEF17F7E84250

echo "[suicideStorageCheckVCreate2] Processing transaction number 726 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE6DCCc9bC6467593391771c5CBd425b5A9cee52A) to 0x03855fc81ba27fb87117ab961e6bef17f7e84250"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key f75a8502aa03067e24129354c106a8f92865e67e866c0e1ee6e2a48786cdccfd --timeout 20 --value 0 $ADDR_03855FC81BA27FB87117AB961E6BEF17F7E84250 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[suicideStorageCheckVCreate2] Processing transaction number 727 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE6DCCc9bC6467593391771c5CBd425b5A9cee52A) to None"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key f75a8502aa03067e24129354c106a8f92865e67e866c0e1ee6e2a48786cdccfd --timeout 20 --value 0 --create 0x6a60015460035560026002556000526000600b60156000f500 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

