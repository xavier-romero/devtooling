# PRV_KEY for master sender 0x897E11e9d9AfCa5360446E4ea06bC7DCD1E8D7d1
PRV_KEY=50464fefaadb69fcfe3c7b87a0ce4db6f6e1d7f5a6dfda61f6c7f3ef74af4ef4
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test createRevert (src/BlockchainTestsFiller/InvalidBlocks/bcStateTests/createRevertFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+10))
echo "[createRevert] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x3bE7a4d1190b2910DB52BCcB97110545e9572f70) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x3bE7a4d1190b2910DB52BCcB97110545e9572f70 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[createRevert] Processing transaction number 124 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x3bE7a4d1190b2910DB52BCcB97110545e9572f70) to None"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 4dd3a5308666d1ad96cd090ea85877b8003e803e9f20aeeb277b6040274ec119 --timeout 20 --value 10 --create 0x60006000fd | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

