# PRV_KEY for master sender 0x15bcBF3ac095Cd3c46Cf915B120cCE3bcab44629
PRV_KEY=02fc41ca94b78b0ed3252d868a4a1893cd8eb9daa7a6988da3af872000c1e26e
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test extcodehashEmptySuicide (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/extcodehashEmptySuicideFiller.yml)"

AMOUNT=$((2*150000*6*$GAS_PRICE+0))
echo "[extcodehashEmptySuicide] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x80229a08fB6E9363D155e63f036bDbd0fF4Ae754) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x80229a08fB6E9363D155e63f036bDbd0fF4Ae754 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[extcodehashEmptySuicide] Creating receiver 0x000000000000000000000000000000000000dead with code and balance 100..."
ADDR_000000000000000000000000000000000000DEAD=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100 --create 6300000004601260003963000000046000F36160A7FF | jq -r .contractAddress)
echo $ADDR_000000000000000000000000000000000000DEAD

echo "[extcodehashEmptySuicide] Creating receiver 0xcccccccccccccccccccccccccccccccccccccccc with code and balance 100..."
ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100 --create 6001600055630000001e6017600039630000001e6000F361dead3f600054556160a73f600054610100015560016000540160005500 | jq -r .contractAddress)
echo $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

echo "[extcodehashEmptySuicide] Creating receiver 0xdddddddddddddddddddddddddddddddddddddddd with code and balance 100..."
ADDR_DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100 --create 6300000010601260003963000000106000F36000600060006000600161dead5af100 | jq -r .contractAddress)
echo $ADDR_DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD

echo "[extcodehashEmptySuicide] Processing transaction number 1672 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x80229a08fB6E9363D155e63f036bDbd0fF4Ae754) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key e01122a950f3eaa6f37cc7a79f3e77a282990f085410740ffb94b98854957197 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[extcodehashEmptySuicide] Processing transaction number 1673 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x80229a08fB6E9363D155e63f036bDbd0fF4Ae754) to 0x000000000000000000000000000000000000dead"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key e01122a950f3eaa6f37cc7a79f3e77a282990f085410740ffb94b98854957197 --timeout 20 --value 0 $ADDR_000000000000000000000000000000000000DEAD | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[extcodehashEmptySuicide] Processing transaction number 1674 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x80229a08fB6E9363D155e63f036bDbd0fF4Ae754) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key e01122a950f3eaa6f37cc7a79f3e77a282990f085410740ffb94b98854957197 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[extcodehashEmptySuicide] Processing transaction number 1675 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x80229a08fB6E9363D155e63f036bDbd0fF4Ae754) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key e01122a950f3eaa6f37cc7a79f3e77a282990f085410740ffb94b98854957197 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[extcodehashEmptySuicide] Processing transaction number 1676 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x80229a08fB6E9363D155e63f036bDbd0fF4Ae754) to 0xdddddddddddddddddddddddddddddddddddddddd"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key e01122a950f3eaa6f37cc7a79f3e77a282990f085410740ffb94b98854957197 --timeout 20 --value 0 $ADDR_DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[extcodehashEmptySuicide] Processing transaction number 1677 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x80229a08fB6E9363D155e63f036bDbd0fF4Ae754) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key e01122a950f3eaa6f37cc7a79f3e77a282990f085410740ffb94b98854957197 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

