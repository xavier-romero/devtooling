# PRV_KEY for master sender 0x1D608433592b71C28452AA42e9687c90F0bca5EC
PRV_KEY=1c13301435e115fcd9e958d71b2b854badc31d5123b4247e539bc5d306b52e8b
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test uncleHeaderWithGeneration0 (src/BlockchainTestsFiller/InvalidBlocks/bcUncleTest/uncleHeaderWithGeneration0Filler.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[uncleHeaderWithGeneration0] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xbFB0Cd1656553fAD31b575CD63c2A476E1923AF6) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xbFB0Cd1656553fAD31b575CD63c2A476E1923AF6 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[uncleHeaderWithGeneration0] Processing transaction number 175 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xbFB0Cd1656553fAD31b575CD63c2A476E1923AF6) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 127eaedb7e423ae9974eafadeb49dc8a74b6216dc26d5dee8c131fb030b4dee7 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[uncleHeaderWithGeneration0] Processing transaction number 176 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xbFB0Cd1656553fAD31b575CD63c2A476E1923AF6) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 127eaedb7e423ae9974eafadeb49dc8a74b6216dc26d5dee8c131fb030b4dee7 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[uncleHeaderWithGeneration0] Processing transaction number 177 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xbFB0Cd1656553fAD31b575CD63c2A476E1923AF6) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 127eaedb7e423ae9974eafadeb49dc8a74b6216dc26d5dee8c131fb030b4dee7 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

