# PRV_KEY for master sender 0xdCB1FACA8d221FCD925d1D7e322A127d9eB26B06
PRV_KEY=feda0f0f0d161a065b0c8aacfd277edfb31ff0fdb1f5dfc809332666b91f9f97
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test SuicideTransaction (src/BlockchainTestsFiller/ValidBlocks/bcBlockGasLimitTest/SuicideTransactionFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+10))
echo "[SuicideTransaction] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x3aD6def3d0657c9703EDd286fa7Add1C1333c9E7) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x3aD6def3d0657c9703EDd286fa7Add1C1333c9E7 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[SuicideTransaction] Creating receiver 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b with code and balance 10000000000..."
ADDR_AAAF5374FCE5EDBC8E2A8697C15331677E6EBF0B=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 10000000000 --create 6300000016601260003963000000166000F373a94f5374fce5edbc8e2a8697c15331677e6ebf0bff | jq -r .contractAddress)
echo $ADDR_AAAF5374FCE5EDBC8E2A8697C15331677E6EBF0B

echo "[SuicideTransaction] Processing transaction number 805 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x3aD6def3d0657c9703EDd286fa7Add1C1333c9E7) to 0xaaaf5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 84855f84d081cc5b150667c01b21d1f017fa08254f9d696f83f0faff02fe05ce --timeout 20 --value 10 $ADDR_AAAF5374FCE5EDBC8E2A8697C15331677E6EBF0B | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

