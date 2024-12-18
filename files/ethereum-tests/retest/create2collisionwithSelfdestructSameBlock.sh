# PRV_KEY for master sender 0xEBD4f3AF06B0bf48611f27f45277A1Cbd313377A
PRV_KEY=ae668213eaa935a079a8cdac4a9aafe235249b1a780a56fbea697022547ea709
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test create2collisionwithSelfdestructSameBlock (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/create2collisionwithSelfdestructSameBlockFiller.json)"

AMOUNT=$((2*150000*2*$GAS_PRICE+10))
echo "[create2collisionwithSelfdestructSameBlock] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x59969d0e2F5D209f9C54278e8b9625fCa76ba52e) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x59969d0e2F5D209f9C54278e8b9625fCa76ba52e | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[create2collisionwithSelfdestructSameBlock] Creating receiver 0xec0e71ad0a90ffe1909d27dac207f7680abba42d with code and balance 1..."
ADDR_EC0E71AD0A90FFE1909D27DAC207F7680ABBA42D=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1 --create 630000000a6012600039630000000a6000F36001546001556010ff00 | jq -r .contractAddress)
echo $ADDR_EC0E71AD0A90FFE1909D27DAC207F7680ABBA42D

echo "[create2collisionwithSelfdestructSameBlock] Processing transaction number 714 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x59969d0e2F5D209f9C54278e8b9625fCa76ba52e) to 0xec0e71ad0a90ffe1909d27dac207f7680abba42d"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key eab9f77161699d9bd7366128d029c9647b9ec68a7835005ab77c765cff276a63 --timeout 20 --value 0 $ADDR_EC0E71AD0A90FFE1909D27DAC207F7680ABBA42D | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[create2collisionwithSelfdestructSameBlock] Processing transaction number 715 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x59969d0e2F5D209f9C54278e8b9625fCa76ba52e) to None"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key eab9f77161699d9bd7366128d029c9647b9ec68a7835005ab77c765cff276a63 --timeout 20 --value 10 --create 0x6000600060006000f500 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

