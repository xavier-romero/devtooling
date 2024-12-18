# PRV_KEY for master sender 0x447db36AA1C7dD9642668D3434896250fd03b81a
PRV_KEY=8058910b5601e583c65c22986704332f235210aea9cfcdb5eb7bfa1a7018b9b3
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test ExtraData32 (src/BlockchainTestsFiller/ValidBlocks/bcValidBlockTest/ExtraData32Filler.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+5000000000))
echo "[ExtraData32] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x79396835f67475D5Dc2c5e89441b5B4b45455AE9) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x79396835f67475D5Dc2c5e89441b5B4b45455AE9 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[ExtraData32] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 100..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100 --create 630000002c6012600039630000002c6000F37fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff600052600060206000a100 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[ExtraData32] Processing transaction number 690 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x79396835f67475D5Dc2c5e89441b5B4b45455AE9) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 63143347f7a6b81df6dcb6f88ab6a78e7a2a342499d1beb4b863e70a5501c13c --timeout 20 --value 5000000000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

