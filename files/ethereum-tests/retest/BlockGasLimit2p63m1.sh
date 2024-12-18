# PRV_KEY for master sender 0x5c4AdDB8813dbDbcAd1fC1C38D6bF8d7BDBB2863
PRV_KEY=983f6032e68a0f442f52a297bf12bff44aaedabbea9e04be93b65f9a8d5c9ffa
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test BlockGasLimit2p63m1 (src/BlockchainTestsFiller/ValidBlocks/bcBlockGasLimitTest/BlockGasLimit2p63m1Filler.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+10))
echo "[BlockGasLimit2p63m1] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x726415CD93981160767C062A13fb61Ec7559a364) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x726415CD93981160767C062A13fb61Ec7559a364 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[BlockGasLimit2p63m1] Processing transaction number 791 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x726415CD93981160767C062A13fb61Ec7559a364) to 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 8deb3d57173300559f5e31a8e42aa0605dff8f9fc8fca474cc537f37d8599b1f --timeout 20 --value 10 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

