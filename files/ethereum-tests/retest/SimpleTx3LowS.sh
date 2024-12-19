# PRV_KEY for master sender 0xB4fE81a2903A1d4FB584fae2d84B0979A2688203
PRV_KEY=f2b8c98001ee76bed13802172e9da75e19cea5ee4e570765dec5a494960a0432
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test SimpleTx3LowS (src/BlockchainTestsFiller/ValidBlocks/bcValidBlockTest/SimpleTx3LowSFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+10))
echo "[SimpleTx3LowS] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x2CD1a24c997b08E2b9BA4A017607dF1D9900Ae5A) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x2CD1a24c997b08E2b9BA4A017607dF1D9900Ae5A | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[SimpleTx3LowS] Processing transaction number 695 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x2CD1a24c997b08E2b9BA4A017607dF1D9900Ae5A) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 4156e09a9f8ed92072871ca6ced2ab6f0ae6abcd3b85dd36868b8e1c3049278d --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

