# PRV_KEY for master sender 0x331fC5f2424AF2b33A1F3e8c5187AE1776875F98
PRV_KEY=4ebba5267d6a2386153968f4e4ad4f3314a59e46565b9b8ad5c512153e96a7c0
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test TransactionFromCoinbaseHittingBlockGasLimit1 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/TransactionFromCoinbaseHittingBlockGasLimit1Filler.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+10))
echo "[TransactionFromCoinbaseHittingBlockGasLimit1] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x708E920f6899d1E6C12e8749E67A454e06ac2FC2) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x708E920f6899d1E6C12e8749E67A454e06ac2FC2 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[TransactionFromCoinbaseHittingBlockGasLimit1] Processing transaction number 766 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x708E920f6899d1E6C12e8749E67A454e06ac2FC2) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 2712688586d7acd79b3924291f2eb248c0742459c801a84db27905af37eb96c7 --timeout 20 --value 10 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

