# PRV_KEY for master sender 0xcf6609f83d0110BF1d0274ba5e9b877Ca91FcbE6
PRV_KEY=74cc0caa720cca1637a148e75a1c4ccd5d0e048150c3ced5e907a882a45b4bfc
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test gasLimitTooHigh2 (src/BlockchainTestsFiller/ValidBlocks/bcValidBlockTest/gasLimitTooHigh2Filler.json)"

AMOUNT=$((2*150000*4*$GAS_PRICE+40))
echo "[gasLimitTooHigh2] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x52EaB43cd04c29B9EcFe56DA4719Dd8E024eB33A) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x52EaB43cd04c29B9EcFe56DA4719Dd8E024eB33A | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[gasLimitTooHigh2] Processing transaction number 699 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x52EaB43cd04c29B9EcFe56DA4719Dd8E024eB33A) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key dcd13a2080a32c4c41a1f81f2935657bf9d73c7b4640f645e307a702c513dec7 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[gasLimitTooHigh2] Processing transaction number 700 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x52EaB43cd04c29B9EcFe56DA4719Dd8E024eB33A) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key dcd13a2080a32c4c41a1f81f2935657bf9d73c7b4640f645e307a702c513dec7 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[gasLimitTooHigh2] Processing transaction number 701 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x52EaB43cd04c29B9EcFe56DA4719Dd8E024eB33A) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key dcd13a2080a32c4c41a1f81f2935657bf9d73c7b4640f645e307a702c513dec7 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[gasLimitTooHigh2] Processing transaction number 702 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x52EaB43cd04c29B9EcFe56DA4719Dd8E024eB33A) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key dcd13a2080a32c4c41a1f81f2935657bf9d73c7b4640f645e307a702c513dec7 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

