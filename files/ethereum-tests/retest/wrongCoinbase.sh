# PRV_KEY for master sender 0x6D52463A9e849a7bC53bA93E23f10d147e295CDd
PRV_KEY=10ac96b420e085d17f297db310b38757bed28c0b1853717a1329d3931a781f8f
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test wrongCoinbase (src/BlockchainTestsFiller/InvalidBlocks/bcInvalidHeaderTest/wrongCoinbaseFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+5000))
echo "[wrongCoinbase] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x96A9ceDb3e23bCB6b885619763A03e6aabA5a974) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x96A9ceDb3e23bCB6b885619763A03e6aabA5a974 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[wrongCoinbase] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 100..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100 --create 630000002c6012600039630000002c6000F37fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff600052600060206000a100 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[wrongCoinbase] Processing transaction number 278 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x96A9ceDb3e23bCB6b885619763A03e6aabA5a974) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 3664b68b6baa143063b23fb0a0a5c51cd81a7a2a9875ffac8c014c8939836998 --timeout 20 --value 5000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

