# PRV_KEY for master sender 0xf30D001dE07d6C231F5fF6123528bEAbe2e3D937
PRV_KEY=cf2ba7983ed989f0c7bc7422cc4782d4c7cb11999e300acd702cba33234c74cf
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test gasLimitLTGasUsageUncle (src/BlockchainTestsFiller/InvalidBlocks/bcUncleHeaderValidity/gasLimitLTGasUsageUncleFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[gasLimitLTGasUsageUncle] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD2501791FFA933204D8d3D91B111D0431b57d8F0) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xD2501791FFA933204D8d3D91B111D0431b57d8F0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[gasLimitLTGasUsageUncle] Processing transaction number 43 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD2501791FFA933204D8d3D91B111D0431b57d8F0) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 63e4bf87f403b892f1a74029a6a773c467417b0b177fc063d10182bc6ab02cd7 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[gasLimitLTGasUsageUncle] Processing transaction number 44 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD2501791FFA933204D8d3D91B111D0431b57d8F0) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 63e4bf87f403b892f1a74029a6a773c467417b0b177fc063d10182bc6ab02cd7 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[gasLimitLTGasUsageUncle] Processing transaction number 45 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xD2501791FFA933204D8d3D91B111D0431b57d8F0) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 63e4bf87f403b892f1a74029a6a773c467417b0b177fc063d10182bc6ab02cd7 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

