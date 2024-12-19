# PRV_KEY for master sender 0xEBdDE68866A066b63F7DBF24Fb2Fc7d5A8eE38c9
PRV_KEY=97729ed8382e54c86a41e364e9e4ffdbc9a6506577beba006f9ccb3ae57a3351
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test uncleBloomNot0_3 (src/BlockchainTestsFiller/InvalidBlocks/bcUncleSpecialTests/uncleBloomNot0_3Filler.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[uncleBloomNot0_3] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xBDA5Bd43B7902B57bbFeCE14bC3d8e31A7555a72) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xBDA5Bd43B7902B57bbFeCE14bC3d8e31A7555a72 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[uncleBloomNot0_3] Processing transaction number 10 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xBDA5Bd43B7902B57bbFeCE14bC3d8e31A7555a72) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 9e4852495d84a6999cf541cca93a423435eff9e441457a05b7fa95de013b5446 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[uncleBloomNot0_3] Processing transaction number 11 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xBDA5Bd43B7902B57bbFeCE14bC3d8e31A7555a72) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 9e4852495d84a6999cf541cca93a423435eff9e441457a05b7fa95de013b5446 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[uncleBloomNot0_3] Processing transaction number 12 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xBDA5Bd43B7902B57bbFeCE14bC3d8e31A7555a72) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 9e4852495d84a6999cf541cca93a423435eff9e441457a05b7fa95de013b5446 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

