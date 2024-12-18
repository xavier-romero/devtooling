# PRV_KEY for master sender 0xe6E5b48B36929fc12950b07c00E705E011923e59
PRV_KEY=f4e2d0d16d2e93a717483ccf2ad02fbb63eacad8731e84fe9a5682054d56d59f
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test shanghaiExample (src/BlockchainTestsFiller/ValidBlocks/bcExample/shanghaiExampleFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[shanghaiExample] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xb21700083840Bc8989BB92F1380BdbFce002f817) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xb21700083840Bc8989BB92F1380BdbFce002f817 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[shanghaiExample] Processing transaction number 786 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xb21700083840Bc8989BB92F1380BdbFce002f817) to None"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 8ef8fb05556b796c28d558a1310078aa45759fc121614f4684ea88898e72affa --timeout 20 --value 0 --create 0x600160015500 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

