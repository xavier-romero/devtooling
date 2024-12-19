# PRV_KEY for master sender 0x2f648085FDd7f4ab612C95487f6Cb6031C582214
PRV_KEY=0777c6132a35c93f20286f55680e9e3aef9b4836d76a1c306b201ea6ba5cc56f
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test diffTooHigh (src/BlockchainTestsFiller/InvalidBlocks/bcUncleHeaderValidity/diffTooHighFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[diffTooHigh] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xf8F1dD07F114B2D28DC8c516727687295Abf66E7) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xf8F1dD07F114B2D28DC8c516727687295Abf66E7 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[diffTooHigh] Processing transaction number 97 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xf8F1dD07F114B2D28DC8c516727687295Abf66E7) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 98b195a1736b81d55e25291a871c3204061ef17ed5d9d6b1358c475bfc0bad1a --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[diffTooHigh] Processing transaction number 98 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xf8F1dD07F114B2D28DC8c516727687295Abf66E7) to 0x0000000000000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 98b195a1736b81d55e25291a871c3204061ef17ed5d9d6b1358c475bfc0bad1a --timeout 20 --value 10 0x0000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[diffTooHigh] Processing transaction number 99 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xf8F1dD07F114B2D28DC8c516727687295Abf66E7) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 98b195a1736b81d55e25291a871c3204061ef17ed5d9d6b1358c475bfc0bad1a --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

