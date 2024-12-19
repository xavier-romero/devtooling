# PRV_KEY for master sender 0x6071693D6C0c7DFFae92eC1559854bdFC82FD5D6
PRV_KEY=58912725f64defc7c36943b7a7719a6d077925b6f38272cf0da7a6ed10ee7d94
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test create2collisionwithSelfdestructSameBlock (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/create2collisionwithSelfdestructSameBlockFiller.json)"

AMOUNT=$((2*150000*2*$GAS_PRICE+10))
echo "[create2collisionwithSelfdestructSameBlock] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8A9ED057686ef0e68B68429520E7100E1deeE096) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x8A9ED057686ef0e68B68429520E7100E1deeE096 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[create2collisionwithSelfdestructSameBlock] Creating receiver 0xec0e71ad0a90ffe1909d27dac207f7680abba42d with code and balance 1..."
ADDR_EC0E71AD0A90FFE1909D27DAC207F7680ABBA42D=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1 --create 630000000a6012600039630000000a6000F36001546001556010ff00 | jq -r .contractAddress)
echo $ADDR_EC0E71AD0A90FFE1909D27DAC207F7680ABBA42D

echo "[create2collisionwithSelfdestructSameBlock] Processing transaction number 714 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8A9ED057686ef0e68B68429520E7100E1deeE096) to 0xec0e71ad0a90ffe1909d27dac207f7680abba42d"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key c4426475c77e879f8e453f063a5200e02d01b5f9a65b9fbb05634e28636ac33b --timeout 20 --value 0 $ADDR_EC0E71AD0A90FFE1909D27DAC207F7680ABBA42D | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[create2collisionwithSelfdestructSameBlock] Processing transaction number 715 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8A9ED057686ef0e68B68429520E7100E1deeE096) to None"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key c4426475c77e879f8e453f063a5200e02d01b5f9a65b9fbb05634e28636ac33b --timeout 20 --value 10 --create 0x6000600060006000f500 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

