# PRV_KEY for master sender 0x582B6ee0D00b4e29AF5aD21DE2aD5EAE57a21d42
PRV_KEY=ccb08e3da146054a96705a6177f9326c2e2ce7dcf4948e8dbf6f1b905c7fa1e7
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test TransactionFromCoinbaseNotEnoughFounds (src/BlockchainTestsFiller/InvalidBlocks/bcStateTests/TransactionFromCoinbaseNotEnoughFoundsFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+115000))
echo "[TransactionFromCoinbaseNotEnoughFounds] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0c6cB05d541550792b4e6F49E32a085dF25A8d7D) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x0c6cB05d541550792b4e6F49E32a085dF25A8d7D | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[TransactionFromCoinbaseNotEnoughFounds] Processing transaction number 136 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0c6cB05d541550792b4e6F49E32a085dF25A8d7D) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key bcb5609bbf33fc78d3d162194ecc1537f3e0df0f2bf1c887873866eaae247f8f --timeout 20 --value 5000 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[TransactionFromCoinbaseNotEnoughFounds] Processing transaction number 137 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0c6cB05d541550792b4e6F49E32a085dF25A8d7D) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key bcb5609bbf33fc78d3d162194ecc1537f3e0df0f2bf1c887873866eaae247f8f --timeout 20 --value 30000 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[TransactionFromCoinbaseNotEnoughFounds] Processing transaction number 138 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0c6cB05d541550792b4e6F49E32a085dF25A8d7D) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key bcb5609bbf33fc78d3d162194ecc1537f3e0df0f2bf1c887873866eaae247f8f --timeout 20 --value 80000 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

