# PRV_KEY for master sender 0xF838d541a22Fde83C73Fb61328ef9E9d029959AF
PRV_KEY=f23dd6c4883c3a5ef14e0570528cd1ece1615b88561050919b091bed3a11b787
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test UserTransactionGasLimitIsTooLowWhenZeroCost (src/BlockchainTestsFiller/InvalidBlocks/bcStateTests/UserTransactionGasLimitIsTooLowWhenZeroCostFiller.json)"

AMOUNT=$((2*150000*2*$GAS_PRICE+1800))
echo "[UserTransactionGasLimitIsTooLowWhenZeroCost] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xd7E0017d342D6080a3e92640f45B6503f2B229A4) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xd7E0017d342D6080a3e92640f45B6503f2B229A4 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[UserTransactionGasLimitIsTooLowWhenZeroCost] Processing transaction number 152 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xd7E0017d342D6080a3e92640f45B6503f2B229A4) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 0a077989467de133c170e8bbf56bc4e2c4326f4ee437264f7bd6468c7b1a4e8a --timeout 20 --value 900 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[UserTransactionGasLimitIsTooLowWhenZeroCost] Processing transaction number 153 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xd7E0017d342D6080a3e92640f45B6503f2B229A4) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 0a077989467de133c170e8bbf56bc4e2c4326f4ee437264f7bd6468c7b1a4e8a --timeout 20 --value 900 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

