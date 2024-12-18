# PRV_KEY for master sender 0x526B02AAE4EDd41A36B2DD5Ed173048A3F57a718
PRV_KEY=14390564396fa62c847e9c1ec9792dad3f632c6d38e0f04f6c8e29810064dc2c
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test mergeExample (src/BlockchainTestsFiller/ValidBlocks/bcExample/mergeExampleFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[mergeExample] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x7Ab0d19fCD0374B8F03CeCe21B8F128DFC2E0D4F) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x7Ab0d19fCD0374B8F03CeCe21B8F128DFC2E0D4F | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[mergeExample] Processing transaction number 784 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x7Ab0d19fCD0374B8F03CeCe21B8F128DFC2E0D4F) to None"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 1afd184fdce5c1aed8fb1072b25751059f64dfdbadaf48b64c8e6a66aed7599b --timeout 20 --value 0 --create 0x4460015560068060116000396000f300fe600f60005500 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

