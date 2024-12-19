# PRV_KEY for master sender 0xF9D372d29F9520d1c2C7Ee7e7844a68567651e84
PRV_KEY=9514d25fe6af93e9f211d74968339c7960e2d99b1339ed64638a8175444fa4b8
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test EqualUncleInTwoDifferentBlocks2 (src/BlockchainTestsFiller/InvalidBlocks/bcUncleTest/EqualUncleInTwoDifferentBlocks2Filler.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[EqualUncleInTwoDifferentBlocks2] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0c617967a462B855DB1234Eb025354aB5FA4fd89) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x0c617967a462B855DB1234Eb025354aB5FA4fd89 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[EqualUncleInTwoDifferentBlocks2] Processing transaction number 172 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0c617967a462B855DB1234Eb025354aB5FA4fd89) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key b3ad533eaeedc2d9fbfe5bfac290aaade6fcb8b4727721a9f982bf9e3d0d16eb --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[EqualUncleInTwoDifferentBlocks2] Processing transaction number 173 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0c617967a462B855DB1234Eb025354aB5FA4fd89) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key b3ad533eaeedc2d9fbfe5bfac290aaade6fcb8b4727721a9f982bf9e3d0d16eb --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[EqualUncleInTwoDifferentBlocks2] Processing transaction number 174 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0c617967a462B855DB1234Eb025354aB5FA4fd89) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key b3ad533eaeedc2d9fbfe5bfac290aaade6fcb8b4727721a9f982bf9e3d0d16eb --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

