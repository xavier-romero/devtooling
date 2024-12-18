# PRV_KEY for master sender 0xd2B1DE5d73d87593dA45F4274Dba98666e584b7b
PRV_KEY=f6e3265dab2f80c243d90c55be615bbece8a6b3fa9691b7c1237e63e3cdc6e2a
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test AmIOnEIP150 (src/BlockchainTestsFiller/ValidBlocks/bcForkStressTest/AmIOnEIP150Filler.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+10))
echo "[AmIOnEIP150] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD6a24DB8410Fb91121275D7288342e0aB5120aF6) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xD6a24DB8410Fb91121275D7288342e0aB5120aF6 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[AmIOnEIP150] Creating receiver 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b with code and balance 0..."
ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6300000025601260003963000000256000F36000600060006000600073c94f5374fce5edbc8e2a8697c15331677e6ebf0b620f4240f100 | jq -r .contractAddress)
echo $ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B

echo "[AmIOnEIP150] Creating receiver 0xc94f5374fce5edbc8e2a8697c15331677e6ebf0b with code and balance 0..."
ADDR_C94F5374FCE5EDBC8E2A8697C15331677E6EBF0B=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6300000006601260003963000000066000F3600c60015500 | jq -r .contractAddress)
echo $ADDR_C94F5374FCE5EDBC8E2A8697C15331677E6EBF0B

echo "[AmIOnEIP150] Processing transaction number 713 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD6a24DB8410Fb91121275D7288342e0aB5120aF6) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 2153450af7368157938e14329a3e1b52de7a1c34881aa32905043f804f0dfcca --timeout 20 --value 10 $ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

