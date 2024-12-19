# PRV_KEY for master sender 0xd68871720c7355475cD784D51Da4BCaE7A70102F
PRV_KEY=13122ddcc0a1c6e26728a37d7e7e6ae9b27b3f007822189c081a345af1b74402
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test pastUncleTimestamp (src/BlockchainTestsFiller/InvalidBlocks/bcUncleHeaderValidity/pastUncleTimestampFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[pastUncleTimestamp] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8436d5169a939f3C9b7A8Cc5629B93d3897e4302) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x8436d5169a939f3C9b7A8Cc5629B93d3897e4302 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[pastUncleTimestamp] Processing transaction number 109 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8436d5169a939f3C9b7A8Cc5629B93d3897e4302) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 7751c836df580b08aa14c9b8862b5603afff1776f3f42bac1069ea8eb5c8a423 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[pastUncleTimestamp] Processing transaction number 110 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8436d5169a939f3C9b7A8Cc5629B93d3897e4302) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 7751c836df580b08aa14c9b8862b5603afff1776f3f42bac1069ea8eb5c8a423 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[pastUncleTimestamp] Processing transaction number 111 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8436d5169a939f3C9b7A8Cc5629B93d3897e4302) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 7751c836df580b08aa14c9b8862b5603afff1776f3f42bac1069ea8eb5c8a423 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

