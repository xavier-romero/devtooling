# PRV_KEY for master sender 0x8eff9263801f81a6836a9C075216A18d0E6D3943
PRV_KEY=e91f0e3357b8f3b8620b3d544d25052808c572c79158624b397232940355c6c6
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test SimpleTx (src/BlockchainTestsFiller/ValidBlocks/bcValidBlockTest/SimpleTxFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+10))
echo "[SimpleTx] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x7bC28c545307ce0FEad60FAE5857b022494eE1d9) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x7bC28c545307ce0FEad60FAE5857b022494eE1d9 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[SimpleTx] Processing transaction number 712 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x7bC28c545307ce0FEad60FAE5857b022494eE1d9) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 5bd47f35e4a21af45592ffe798f97f78132939ce7b9d8035feb402591e203e81 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

