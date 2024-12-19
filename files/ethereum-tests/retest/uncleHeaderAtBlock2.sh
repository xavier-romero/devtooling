# PRV_KEY for master sender 0x5BA50A42878925a46A8DE3907fdB3F53319D4b20
PRV_KEY=4742d770cefbf05f6fc8ea214cc7d302cb7a189651252e5c58352b4742ad6dff
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test uncleHeaderAtBlock2 (src/BlockchainTestsFiller/InvalidBlocks/bcUncleTest/uncleHeaderAtBlock2Filler.json)"

AMOUNT=$((2*150000*2*$GAS_PRICE+20))
echo "[uncleHeaderAtBlock2] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x32882F2C4cF44df882124582E78FE93D93057B73) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x32882F2C4cF44df882124582E78FE93D93057B73 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[uncleHeaderAtBlock2] Processing transaction number 214 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x32882F2C4cF44df882124582E78FE93D93057B73) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key e97e5ccfed2104351e196e888f2c6d43ff2eae87e9d1b7635d395844862dbfd8 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[uncleHeaderAtBlock2] Processing transaction number 215 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x32882F2C4cF44df882124582E78FE93D93057B73) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key e97e5ccfed2104351e196e888f2c6d43ff2eae87e9d1b7635d395844862dbfd8 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

