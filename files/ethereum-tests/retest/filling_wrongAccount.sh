# PRV_KEY for master sender 0x76f5f55C1eb8B4063E124Bd0A84eCb95464DD2db
PRV_KEY=3217233290eff9605c19db7b9b1db03c33c2a9fb4700bccd8e360d9bf8cc9b5e
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test filling_wrongAccount (src/BlockchainTestsFiller/InvalidBlocks/bcExpectSection/filling_wrongAccountFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+10))
echo "[filling_wrongAccount] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x2AaCbCCaA8A0F3859b4e08360d370Ef1016E0039) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x2AaCbCCaA8A0F3859b4e08360d370Ef1016E0039 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[filling_wrongAccount] Processing transaction number 118 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x2AaCbCCaA8A0F3859b4e08360d370Ef1016E0039) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 4007281d783e0881b0e35c7a7b478dc1a538f6331eaed87511a14bb5a9054d31 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

