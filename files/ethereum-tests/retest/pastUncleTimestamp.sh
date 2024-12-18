# PRV_KEY for master sender 0x0cdc8FA14fc6060189db3a9f99569fD30C2043F1
PRV_KEY=a3b36bcc725ebe356d75088a63625bbc13e16e6fd051fa6e48b1741d6eb7a70a
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test pastUncleTimestamp (src/BlockchainTestsFiller/InvalidBlocks/bcUncleHeaderValidity/pastUncleTimestampFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[pastUncleTimestamp] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x63b434BeFADB969ca788Cb1807F9BfD943d6D082) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x63b434BeFADB969ca788Cb1807F9BfD943d6D082 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[pastUncleTimestamp] Processing transaction number 109 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x63b434BeFADB969ca788Cb1807F9BfD943d6D082) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 9cae512ce7eee0bb8cb6de951767d5e34a88fbd80d93c6ea4c6d9ef5cde29493 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[pastUncleTimestamp] Processing transaction number 110 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x63b434BeFADB969ca788Cb1807F9BfD943d6D082) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 9cae512ce7eee0bb8cb6de951767d5e34a88fbd80d93c6ea4c6d9ef5cde29493 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[pastUncleTimestamp] Processing transaction number 111 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x63b434BeFADB969ca788Cb1807F9BfD943d6D082) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 9cae512ce7eee0bb8cb6de951767d5e34a88fbd80d93c6ea4c6d9ef5cde29493 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

