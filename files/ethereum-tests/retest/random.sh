# PRV_KEY for master sender 0x4e7C6e45Ceb10fEace139DDFF9370a9d8AF254B6
PRV_KEY=26762b0e0e2db38f73d4b420179e021925a1913cc0d636bb1e547540264044b9
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test random (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/randomFiller.yml)"

AMOUNT=$((2*150000*4*$GAS_PRICE+0))
echo "[random] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD39AB4177Dd786c7FdC9363697B1659019C86345) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xD39AB4177Dd786c7FdC9363697B1659019C86345 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[random] Creating receiver 0xcccccccccccccccccccccccccccccccccccccccc with code and balance 17293822569102704640..."
ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 17293822569102704640 --create 6160a76001556160a76002556160a76003556160a76004556300000003602a60003963000000036000F3444355 | jq -r .contractAddress)
echo $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

echo "[random] Processing transaction number 1598 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD39AB4177Dd786c7FdC9363697B1659019C86345) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 2c44c60b8f2b0b5872ab7b571500fbe9541e462b4f9a32d16de2165c3b2ba80f --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[random] Processing transaction number 1599 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD39AB4177Dd786c7FdC9363697B1659019C86345) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 2c44c60b8f2b0b5872ab7b571500fbe9541e462b4f9a32d16de2165c3b2ba80f --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[random] Processing transaction number 1600 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD39AB4177Dd786c7FdC9363697B1659019C86345) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 2c44c60b8f2b0b5872ab7b571500fbe9541e462b4f9a32d16de2165c3b2ba80f --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[random] Processing transaction number 1601 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD39AB4177Dd786c7FdC9363697B1659019C86345) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 2c44c60b8f2b0b5872ab7b571500fbe9541e462b4f9a32d16de2165c3b2ba80f --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

