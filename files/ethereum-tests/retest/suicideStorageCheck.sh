# PRV_KEY for master sender 0x49A7FeA981cA81a200EEC17B60F45a7Aa3091514
PRV_KEY=4336a041728f6ed2bbd272f2a3dd41f8831ee92f52d2624c505962de9d22d4b4
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test suicideStorageCheck (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/suicideStorageCheckFiller.json)"

AMOUNT=$((2*150000*2*$GAS_PRICE+0))
echo "[suicideStorageCheck] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x31b03e26643317250c4D60C9db97845424C4C4AB) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x31b03e26643317250c4D60C9db97845424C4C4AB | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[suicideStorageCheck] Creating receiver 0xec0e71ad0a90ffe1909d27dac207f7680abba42d with code and balance 1000..."
ADDR_EC0E71AD0A90FFE1909D27DAC207F7680ABBA42D=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000 --create 6300000009601260003963000000096000F360036001556001ff00 | jq -r .contractAddress)
echo $ADDR_EC0E71AD0A90FFE1909D27DAC207F7680ABBA42D

echo "[suicideStorageCheck] Processing transaction number 718 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x31b03e26643317250c4D60C9db97845424C4C4AB) to 0xec0e71ad0a90ffe1909d27dac207f7680abba42d"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 65ff58fbc8439f23ac2aec03393149c1641a46d3bb17290b084813e4433921fc --timeout 20 --value 0 $ADDR_EC0E71AD0A90FFE1909D27DAC207F7680ABBA42D | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[suicideStorageCheck] Processing transaction number 719 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x31b03e26643317250c4D60C9db97845424C4C4AB) to None"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 65ff58fbc8439f23ac2aec03393149c1641a46d3bb17290b084813e4433921fc --timeout 20 --value 0 --create 0x600154600355600260025500 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

