# PRV_KEY for master sender 0x102677f50521249c50C7FaEdA19176fdaFB6589D
PRV_KEY=cfeae98f2dba5e5712391cb530782ac20055c043adc3a47b4672833e9096d3be
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test incorrectUncleTimestamp (src/BlockchainTestsFiller/InvalidBlocks/bcUncleHeaderValidity/incorrectUncleTimestampFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[incorrectUncleTimestamp] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE215171EA752cEe2Ae621B94Dfbd9C0c62683e4C) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xE215171EA752cEe2Ae621B94Dfbd9C0c62683e4C | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[incorrectUncleTimestamp] Processing transaction number 46 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE215171EA752cEe2Ae621B94Dfbd9C0c62683e4C) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ac9f252e42e5c09bad3ac69b5ab1cac8da44a1775d8744660f086b3d037c9028 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[incorrectUncleTimestamp] Processing transaction number 47 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE215171EA752cEe2Ae621B94Dfbd9C0c62683e4C) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ac9f252e42e5c09bad3ac69b5ab1cac8da44a1775d8744660f086b3d037c9028 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[incorrectUncleTimestamp] Processing transaction number 48 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE215171EA752cEe2Ae621B94Dfbd9C0c62683e4C) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ac9f252e42e5c09bad3ac69b5ab1cac8da44a1775d8744660f086b3d037c9028 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

