# PRV_KEY for master sender 0x5EE5bB0FB0daa0C0aa53F7ACa55769f3182e0592
PRV_KEY=ce94971b535cc1a6389ac6fcaed55e7527b5ec6d22389c153fe597e5425d73b9
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test wrongGasUsed (src/BlockchainTestsFiller/InvalidBlocks/bcInvalidHeaderTest/wrongGasUsedFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+5000))
echo "[wrongGasUsed] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x72F7099634B83F48e0B0345B709b69A9A65e9684) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x72F7099634B83F48e0B0345B709b69A9A65e9684 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[wrongGasUsed] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 100..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100 --create 630000002c6012600039630000002c6000F37fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff600052600060206000a100 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[wrongGasUsed] Processing transaction number 267 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x72F7099634B83F48e0B0345B709b69A9A65e9684) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ae1efd0d25ee8ef95044a12e7282faaaeb9d042e9e45ae825aaffd564863bd97 --timeout 20 --value 5000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

