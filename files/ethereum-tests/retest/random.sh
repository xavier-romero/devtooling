# PRV_KEY for master sender 0x9DE9C1627D7D1bF56f8850F0Bd79f0aD7B4f9a00
PRV_KEY=76c622ef15e2593c30cae7beaaad6f3fcf50398bd44e9fb6314d60d39e8b76d3
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test random (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/randomFiller.yml)"

AMOUNT=$((2*150000*4*$GAS_PRICE+0))
echo "[random] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x93E5eD74eBf35977341C8937F73ae6EDb63c805a) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x93E5eD74eBf35977341C8937F73ae6EDb63c805a | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[random] Creating receiver 0xcccccccccccccccccccccccccccccccccccccccc with code and balance 17293822569102704640..."
ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 17293822569102704640 --create 6160a76001556160a76002556160a76003556160a76004556300000003602a60003963000000036000F3444355 | jq -r .contractAddress)
echo $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

echo "[random] Processing transaction number 1598 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x93E5eD74eBf35977341C8937F73ae6EDb63c805a) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 60f7a7909be692248754e63370e04fcc2d4d323702618f7d5f7f4ae780614134 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[random] Processing transaction number 1599 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x93E5eD74eBf35977341C8937F73ae6EDb63c805a) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 60f7a7909be692248754e63370e04fcc2d4d323702618f7d5f7f4ae780614134 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[random] Processing transaction number 1600 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x93E5eD74eBf35977341C8937F73ae6EDb63c805a) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 60f7a7909be692248754e63370e04fcc2d4d323702618f7d5f7f4ae780614134 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[random] Processing transaction number 1601 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x93E5eD74eBf35977341C8937F73ae6EDb63c805a) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 60f7a7909be692248754e63370e04fcc2d4d323702618f7d5f7f4ae780614134 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

