# PRV_KEY for master sender 0x8795E68E46791DC49b756134419985e5d115aE85
PRV_KEY=a80b46c4e69472ff0540cd6102c525834418cc667b7419bda7b2f8e1faf02a11
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test oneUncleGeneration2 (src/BlockchainTestsFiller/InvalidBlocks/bcUncleTest/oneUncleGeneration2Filler.json)"

AMOUNT=$((2*150000*4*$GAS_PRICE+40))
echo "[oneUncleGeneration2] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xC72eEC3cA787e1CB9222B940D17C801533713389) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xC72eEC3cA787e1CB9222B940D17C801533713389 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration2] Processing transaction number 168 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xC72eEC3cA787e1CB9222B940D17C801533713389) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 647ff5403453925401ec2088c2bc454c32428843a38c6e917116c0346885e76a --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration2] Processing transaction number 169 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xC72eEC3cA787e1CB9222B940D17C801533713389) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 647ff5403453925401ec2088c2bc454c32428843a38c6e917116c0346885e76a --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration2] Processing transaction number 170 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xC72eEC3cA787e1CB9222B940D17C801533713389) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 647ff5403453925401ec2088c2bc454c32428843a38c6e917116c0346885e76a --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[oneUncleGeneration2] Processing transaction number 171 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xC72eEC3cA787e1CB9222B940D17C801533713389) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 647ff5403453925401ec2088c2bc454c32428843a38c6e917116c0346885e76a --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

