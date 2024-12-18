# PRV_KEY for master sender 0x14FfeAe49CF87949005960dC41c87ef7dD80ee55
PRV_KEY=3aa22d96e935b83ed1f7de50e8acbc13df5895f2342e2a0215704ba3c747e3d6
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test wrongGasLimit (src/BlockchainTestsFiller/InvalidBlocks/bcInvalidHeaderTest/wrongGasLimitFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+5000))
echo "[wrongGasLimit] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x79cabC216aeC179771d74C47fE66aED5aD486A1E) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x79cabC216aeC179771d74C47fE66aED5aD486A1E | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[wrongGasLimit] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 100..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100 --create 630000002c6012600039630000002c6000F37fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff600052600060206000a100 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[wrongGasLimit] Processing transaction number 272 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x79cabC216aeC179771d74C47fE66aED5aD486A1E) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key dadc2052b9f1a0e06648a0dfd35d719af230fc64faabedbcdb26188c6448e6fb --timeout 20 --value 5000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

