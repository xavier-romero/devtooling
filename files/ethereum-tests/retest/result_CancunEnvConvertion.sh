# PRV_KEY for master sender 0x3aa8a306b99B598B12B1EBC12c16540aDC22E170
PRV_KEY=36b462293cab30e75def72b22f945087de3f89519de87a2c376c1b208890407a
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test result_CancunEnvConvertion (src/BlockchainTestsFiller/InvalidBlocks/bcExpectSection/result_CancunEnvConvertionFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[result_CancunEnvConvertion] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x332bB014385026c9146d9A95061eFDD5709e02e3) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x332bB014385026c9146d9A95061eFDD5709e02e3 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[result_CancunEnvConvertion] Processing transaction number 113 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x332bB014385026c9146d9A95061eFDD5709e02e3) to None"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key e2e846c75507187a9875d459c67dab283e771443fe0b1ad4e2a07dad38578471 --timeout 20 --value 0 --create 0x600c60015560068060126000396000f300fe600f60005500 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

