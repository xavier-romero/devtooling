# PRV_KEY for master sender 0xFa54e6ffde4c3101844960E1733C53B35C5b846F
PRV_KEY=a409f3307ede9ac0ad5cd3a94b20ebeafba77de6d372756e74a621132102b6fb
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test createNameRegistratorPerTxsNotEnoughGasBefore (src/BlockchainTestsFiller/InvalidBlocks/bcStateTests/createNameRegistratorPerTxsNotEnoughGasBeforeFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+100000))
echo "[createNameRegistratorPerTxsNotEnoughGasBefore] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x3bF0086A9DB598DbB763edf1ABBC28C1ca21ce3B) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x3bF0086A9DB598DbB763edf1ABBC28C1ca21ce3B | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[createNameRegistratorPerTxsNotEnoughGasBefore] Processing transaction number 127 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x3bF0086A9DB598DbB763edf1ABBC28C1ca21ce3B) to None"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ad1346ec29d6f6c3ca1a5b73dc8e29709ff521e8bba338c3ac7de69c7458f22b --timeout 20 --value 100000 --create 0x6001600155601080600c6000396000f3006000355415600957005b60203560003555 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

