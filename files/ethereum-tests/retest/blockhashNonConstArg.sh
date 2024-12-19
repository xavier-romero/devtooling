# PRV_KEY for master sender 0xB2Baf63fa701208169205eF5CB92B669e775a6Cf
PRV_KEY=8c5cce7b781e36082f415f57926de5b86168beb528ea656fcfd785e860d5a1ff
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test blockhashNonConstArg (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/blockhashNonConstArgFiller.json)"

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[blockhashNonConstArg] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x6DC1FBe309c84d9deD7f6E66480ACd92A9a9FC01) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x6DC1FBe309c84d9deD7f6E66480ACd92A9a9FC01 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[blockhashNonConstArg] Creating receiver 0x1000000000000000000000000000000000000000 with code and balance 0..."
ADDR_1000000000000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 630000001b6012600039630000001b6000F3731000000000000000000000000000000000000000314060015500 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000000

echo "[blockhashNonConstArg] Creating receiver 0x1000000000000000000000000000000000000001 with code and balance 1..."
ADDR_1000000000000000000000000000000000000001=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1 --create 630000001b6012600039630000001b6000F3731000000000000000000000000000000000000001314060015500 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000001

echo "[blockhashNonConstArg] Processing transaction number 773 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x6DC1FBe309c84d9deD7f6E66480ACd92A9a9FC01) to 0x1000000000000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 08eb23f5a48112942a884e2dbd4b9c93b5aa5e0a49d878a5ce5bfcb2ad9f3909 --timeout 20 --value 0 $ADDR_1000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[blockhashNonConstArg] Processing transaction number 774 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x6DC1FBe309c84d9deD7f6E66480ACd92A9a9FC01) to 0x1000000000000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 08eb23f5a48112942a884e2dbd4b9c93b5aa5e0a49d878a5ce5bfcb2ad9f3909 --timeout 20 --value 0 $ADDR_1000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

