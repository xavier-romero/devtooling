# PRV_KEY for master sender 0xb518702c52fC7005f76128E4ED71A306546F2C3E
PRV_KEY=56befd97fedaad00dde88752c36df3b3fc2ad9f06b3126cd55fb901f869230da
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test timestampTooLow (src/BlockchainTestsFiller/InvalidBlocks/bcUncleHeaderValidity/timestampTooLowFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[timestampTooLow] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x38b419c1e347D822C5936F0D6982da431aD2DD34) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x38b419c1e347D822C5936F0D6982da431aD2DD34 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[timestampTooLow] Processing transaction number 55 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x38b419c1e347D822C5936F0D6982da431aD2DD34) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key cd2ba0aa113db105f6fd01423ad6eeb5971e63150816eec818818e205c64ab45 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[timestampTooLow] Processing transaction number 56 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x38b419c1e347D822C5936F0D6982da431aD2DD34) to 0x0000000000000000000000000000000000000000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key cd2ba0aa113db105f6fd01423ad6eeb5971e63150816eec818818e205c64ab45 --timeout 20 --value 10 0x0000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[timestampTooLow] Processing transaction number 57 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x38b419c1e347D822C5936F0D6982da431aD2DD34) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key cd2ba0aa113db105f6fd01423ad6eeb5971e63150816eec818818e205c64ab45 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

