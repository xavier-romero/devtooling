# PRV_KEY for master sender 0xf667F584295791b096ae4Fb7E197d78FF464c83b
PRV_KEY=6685e5289a6944fd947f2f272f55327fe4f20b591694cdbc73c421593fe470f4
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test filling_unexpectedException (src/BlockchainTestsFiller/InvalidBlocks/bcExpectSection/filling_unexpectedExceptionFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+10))
echo "[filling_unexpectedException] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xDA88eb3324a93ced3820Be912f4E83dF150D401a) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xDA88eb3324a93ced3820Be912f4E83dF150D401a | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[filling_unexpectedException] Processing transaction number 114 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xDA88eb3324a93ced3820Be912f4E83dF150D401a) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 4eb98775ffe82e4c730d570161057bf498758c306102880e230ade79e6d33fea --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

