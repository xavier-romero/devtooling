# PRV_KEY for master sender 0x9CFB7270859716d895A108EDE8859AFd2644ce23
PRV_KEY=861f0352b376ed22c24e4579e4300d8edb2a7ccd625bd1a432ffdaea0549725c
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test log1_correct (src/BlockchainTestsFiller/ValidBlocks/bcValidBlockTest/log1_correctFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+5000000000))
echo "[log1_correct] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x995a0F738a4c9f2Fbc06a9Ad8509dCBbf03D875a) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x995a0F738a4c9f2Fbc06a9Ad8509dCBbf03D875a | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[log1_correct] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 100..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100 --create 630000002c6012600039630000002c6000F37fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff600052600060206000a100 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[log1_correct] Processing transaction number 693 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x995a0F738a4c9f2Fbc06a9Ad8509dCBbf03D875a) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 75fce5e463ecc29d76ca835dde5da165483badbfbd2262c850c60c3874b8b845 --timeout 20 --value 5000000000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

