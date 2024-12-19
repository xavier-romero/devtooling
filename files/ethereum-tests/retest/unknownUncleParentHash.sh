# PRV_KEY for master sender 0x3D576067eFc413246242db23F597C4303544b6AD
PRV_KEY=a5fe35fd8ed14d3c90deb76b8f08e10c8fdcc0c8576471b4f77127679e41e8dc
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test unknownUncleParentHash (src/BlockchainTestsFiller/InvalidBlocks/bcUncleHeaderValidity/unknownUncleParentHashFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[unknownUncleParentHash] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xFE0dA011f059C3CcA428Adaa782EFF6a9Fb91C6a) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xFE0dA011f059C3CcA428Adaa782EFF6a9Fb91C6a | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[unknownUncleParentHash] Processing transaction number 88 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xFE0dA011f059C3CcA428Adaa782EFF6a9Fb91C6a) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key e086320463b61cda3ebb96a12e205697aac43d6914ad8c7d19e1af4228fb702d --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[unknownUncleParentHash] Processing transaction number 89 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xFE0dA011f059C3CcA428Adaa782EFF6a9Fb91C6a) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key e086320463b61cda3ebb96a12e205697aac43d6914ad8c7d19e1af4228fb702d --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[unknownUncleParentHash] Processing transaction number 90 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xFE0dA011f059C3CcA428Adaa782EFF6a9Fb91C6a) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key e086320463b61cda3ebb96a12e205697aac43d6914ad8c7d19e1af4228fb702d --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

