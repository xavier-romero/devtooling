# PRV_KEY for master sender 0xc5f167AF0792502D391B0422094DD801F5571Ee0
PRV_KEY=7d6de4326fcaf8c006ea99e4a00d095343244b31de1a404ba30ed822110c0635
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test uncleHeaderAtBlock2 (src/BlockchainTestsFiller/InvalidBlocks/bcUncleTest/uncleHeaderAtBlock2Filler.json)"

AMOUNT=$((2*150000*2*$GAS_PRICE+20))
echo "[uncleHeaderAtBlock2] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x9cbffA06a26D3Ba3293767CA343703A5f4188c01) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x9cbffA06a26D3Ba3293767CA343703A5f4188c01 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[uncleHeaderAtBlock2] Processing transaction number 214 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x9cbffA06a26D3Ba3293767CA343703A5f4188c01) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 071319920687ba40c28357233b990b7f0b370bf7f418c8d5dbf4d31f74f17e2e --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[uncleHeaderAtBlock2] Processing transaction number 215 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x9cbffA06a26D3Ba3293767CA343703A5f4188c01) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 071319920687ba40c28357233b990b7f0b370bf7f418c8d5dbf4d31f74f17e2e --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

