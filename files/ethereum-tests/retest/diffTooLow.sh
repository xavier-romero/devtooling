# PRV_KEY for master sender 0x492B5D8f719c287eE2572F3ced6811BA83A5bC3f
PRV_KEY=49b914369fde54e98d90e7b06819af9c86d60b76e3396157f955779e21b05d81
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test diffTooLow (src/BlockchainTestsFiller/InvalidBlocks/bcUncleHeaderValidity/diffTooLowFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[diffTooLow] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x21333ff61C8C30B6b6A0E87fB077466654472173) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x21333ff61C8C30B6b6A0E87fB077466654472173 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[diffTooLow] Processing transaction number 85 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x21333ff61C8C30B6b6A0E87fB077466654472173) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 85787fc9f2d323e34fc8e4e66e6b56113034d9ec582503bd76e4760c9aba02bf --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[diffTooLow] Processing transaction number 86 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x21333ff61C8C30B6b6A0E87fB077466654472173) to 0x0000000000000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 85787fc9f2d323e34fc8e4e66e6b56113034d9ec582503bd76e4760c9aba02bf --timeout 20 --value 10 0x0000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[diffTooLow] Processing transaction number 87 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x21333ff61C8C30B6b6A0E87fB077466654472173) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 85787fc9f2d323e34fc8e4e66e6b56113034d9ec582503bd76e4760c9aba02bf --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

