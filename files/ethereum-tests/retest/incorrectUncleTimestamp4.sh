# PRV_KEY for master sender 0x25797059dfd0c6627E0150CF65a19360481A42ab
PRV_KEY=ca34d6eaff21f3b060a6ae1a80327eaf4ddcd7b2db92461c1b82f31130f3d6b3
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test incorrectUncleTimestamp4 (src/BlockchainTestsFiller/InvalidBlocks/bcUncleHeaderValidity/incorrectUncleTimestamp4Filler.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[incorrectUncleTimestamp4] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xc540F8Ac7f41c25A8B0B6dC17aC879742B027c17) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xc540F8Ac7f41c25A8B0B6dC17aC879742B027c17 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[incorrectUncleTimestamp4] Processing transaction number 103 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xc540F8Ac7f41c25A8B0B6dC17aC879742B027c17) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key a460112574b703ef6c4c6c6348b05fdc484aafa30741eeed99a8f4b3729c935a --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[incorrectUncleTimestamp4] Processing transaction number 104 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xc540F8Ac7f41c25A8B0B6dC17aC879742B027c17) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key a460112574b703ef6c4c6c6348b05fdc484aafa30741eeed99a8f4b3729c935a --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[incorrectUncleTimestamp4] Processing transaction number 105 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xc540F8Ac7f41c25A8B0B6dC17aC879742B027c17) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key a460112574b703ef6c4c6c6348b05fdc484aafa30741eeed99a8f4b3729c935a --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

