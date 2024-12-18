# PRV_KEY for master sender 0x3592Da7198FC9a26dc17873384f010487E0093e2
PRV_KEY=38cd4ccbc3f19511ad4945715b7424cd3df14f8c9fca7a94680bcfc460d9e374
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test UncleIsBrother (src/BlockchainTestsFiller/InvalidBlocks/bcUncleTest/UncleIsBrotherFiller.json)"

AMOUNT=$((2*150000*2*$GAS_PRICE+20))
echo "[UncleIsBrother] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x5aBf876C6B470Af11Bc159578D67EC7cB7147Fb0) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x5aBf876C6B470Af11Bc159578D67EC7cB7147Fb0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[UncleIsBrother] Processing transaction number 219 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x5aBf876C6B470Af11Bc159578D67EC7cB7147Fb0) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 0935248937eaad8a87f824e5f2866592226b0ed52b5f065b4efcefa22b06bd5a --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[UncleIsBrother] Processing transaction number 220 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x5aBf876C6B470Af11Bc159578D67EC7cB7147Fb0) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 0935248937eaad8a87f824e5f2866592226b0ed52b5f065b4efcefa22b06bd5a --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

