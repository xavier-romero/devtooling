# PRV_KEY for master sender 0x96f01f607ecC83ACB5Fce787d18f5b79Ea63D401
PRV_KEY=090ec987d6e7f7f52e1fa19d9d7b07798d33da87e3cd9d9c456107d5ff89b6f4
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test wrongGasLimit (src/BlockchainTestsFiller/InvalidBlocks/bcInvalidHeaderTest/wrongGasLimitFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+5000))
echo "[wrongGasLimit] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x84101313Bb2C3DecF9654E92363f64E42a42A91e) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x84101313Bb2C3DecF9654E92363f64E42a42A91e | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[wrongGasLimit] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 100..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100 --create 630000002c6012600039630000002c6000F37fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff600052600060206000a100 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[wrongGasLimit] Processing transaction number 272 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x84101313Bb2C3DecF9654E92363f64E42a42A91e) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d298f50ca1465b6fa51016ef386b61221373b97a1b8a9900ee7477c81de832fa --timeout 20 --value 5000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

