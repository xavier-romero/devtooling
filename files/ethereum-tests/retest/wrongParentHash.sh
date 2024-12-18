# PRV_KEY for master sender 0x412855e9C6149b318b908de6Ac92ecd5F5652F8B
PRV_KEY=4b8ef82103608e22d73d53f3dd9f2b03ee8009c7b796197636912f9415a44e04
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test wrongParentHash (src/BlockchainTestsFiller/InvalidBlocks/bcUncleHeaderValidity/wrongParentHashFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[wrongParentHash] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x42c7c31fF123F5DcCF3eBBD0B3c2f02C88440f95) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x42c7c31fF123F5DcCF3eBBD0B3c2f02C88440f95 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[wrongParentHash] Processing transaction number 49 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x42c7c31fF123F5DcCF3eBBD0B3c2f02C88440f95) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 5105f9eb2c3078e48ec88039b8a67222f0d31aac90e52991a1ea7fb0ed9fc014 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[wrongParentHash] Processing transaction number 50 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x42c7c31fF123F5DcCF3eBBD0B3c2f02C88440f95) to 0x0000000000000000000000000000000000000000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 5105f9eb2c3078e48ec88039b8a67222f0d31aac90e52991a1ea7fb0ed9fc014 --timeout 20 --value 10 0x0000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[wrongParentHash] Processing transaction number 51 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x42c7c31fF123F5DcCF3eBBD0B3c2f02C88440f95) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 5105f9eb2c3078e48ec88039b8a67222f0d31aac90e52991a1ea7fb0ed9fc014 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

