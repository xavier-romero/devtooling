# PRV_KEY for master sender 0x5d622184e4B83660019cDCbDD1C81D9B1975497D
PRV_KEY=77d9ff91c6503865c1ca144612366e31b65eae873df15db2cf07fe5a27e6a1be
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test log1_wrongBlockNumber (src/BlockchainTestsFiller/InvalidBlocks/bcInvalidHeaderTest/log1_wrongBlockNumberFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+5000))
echo "[log1_wrongBlockNumber] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x815109777390e9dFC5575e50923662FC7B665f1b) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x815109777390e9dFC5575e50923662FC7B665f1b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[log1_wrongBlockNumber] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 100..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100 --create 630000002c6012600039630000002c6000F37fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff600052600060206000a100 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[log1_wrongBlockNumber] Processing transaction number 264 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x815109777390e9dFC5575e50923662FC7B665f1b) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ac8394c5167f171d825327d71c223830fc102161eb85174c9194f0be46d94d83 --timeout 20 --value 5000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

