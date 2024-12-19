# PRV_KEY for master sender 0x58b92009A06DBfDF287D3000962d1283c6953b5D
PRV_KEY=449523a1a63ec8268ab0ced2d5e50717f06626de5dd2712819db90b5fd669235
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test logRevert (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/logRevertFiller.yml)"

AMOUNT=$((2*150000*8*$GAS_PRICE+90))
echo "[logRevert] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x1881AC8098C8d3974f6Bf38d18b8fdCb8F358221) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x1881AC8098C8d3974f6Bf38d18b8fdCb8F358221 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[logRevert] Creating receiver 0xccccccccccccccccccccccccccccccccccccccc0 with code and balance 195144142..."
ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC0=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 195144142 --create 630000003d6012600039630000003d6000F360206000a061beef60206000a161beef6160a760206000a261beef6160a761dead60206000a361beef6160a761dead61600d60206000a460106000fd00 | jq -r .contractAddress)
echo $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC0

echo "[logRevert] Creating receiver 0xccccccccccccccccccccccccccccccccccccccc1 with code and balance 195144142..."
ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC1=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 195144142 --create 6300000040601260003963000000406000F360206000a061beef60206000a161beef6160a760206000a261beef6160a761dead60206000a361beef6160a761dead61600d60206000a4600160000360002000 | jq -r .contractAddress)
echo $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC1

echo "[logRevert] Creating receiver 0xccccccccccccccccccccccccccccccccccccccc2 with code and balance 195144142..."
ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC2=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 195144142 --create 630000003c6012600039630000003c6000F360206000a061beef60206000a161beef6160a760206000a261beef6160a761dead60206000a361beef6160a761dead61600d60206000a460106000BA | jq -r .contractAddress)
echo $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC2

echo "[logRevert] Creating receiver 0xccccccccccccccccccccccccccccccccccccccc3 with code and balance 195144142..."
ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC3=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 195144142 --create 630000003b6012600039630000003b6000F360206000a061beef60206000a161beef6160a760206000a261beef6160a761dead60206000a361beef6160a761dead61600d60206000a401010101 | jq -r .contractAddress)
echo $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC3

echo "[logRevert] Creating receiver 0xccccccccccccccccccccccccccccccccccccccc4 with code and balance 195144142..."
ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC4=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 195144142 --create 630000003e6012600039630000003e6000F360206000a061beef60206000a161beef6160a760206000a261beef6160a761dead60206000a361beef6160a761dead61600d60206000a45B586004580356 | jq -r .contractAddress)
echo $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC4

echo "[logRevert] Creating receiver 0xccccccccccccccccccccccccccccccccccccccc5 with code and balance 195144142..."
ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC5=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 195144142 --create 630000003a6012600039630000003a6000F360206000a061beef60206000a161beef6160a760206000a261beef6160a761dead60206000a361beef6160a761dead61600d60206000a4600056 | jq -r .contractAddress)
echo $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC5

echo "[logRevert] Creating receiver 0xccccccccccccccccccccccccccccccccccccccc6 with code and balance 195144142..."
ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC6=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 195144142 --create 6300000040601260003963000000406000F360206000a061beef60206000a161beef6160a760206000a261beef6160a761dead60206000a361beef6160a761dead61600d60206000a4630100000060002000 | jq -r .contractAddress)
echo $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC6

echo "[logRevert] Creating receiver 0x6e70da7a00000000000000000000000000000000 with code and balance 195144142..."
ADDR_6E70DA7A00000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 195144142 --create 630000000d6012600039630000000d6000F343600055600143034060015500 | jq -r .contractAddress)
echo $ADDR_6E70DA7A00000000000000000000000000000000

echo "[logRevert] Processing transaction number 1694 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x1881AC8098C8d3974f6Bf38d18b8fdCb8F358221) to 0xccccccccccccccccccccccccccccccccccccccc0"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ea5bba360f0613716b6911ac32c9f63bc70c11981d4074ca870c8bc245b6d135 --timeout 20 --value 10 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC0 0x00 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[logRevert] Processing transaction number 1695 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x1881AC8098C8d3974f6Bf38d18b8fdCb8F358221) to 0xccccccccccccccccccccccccccccccccccccccc6"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ea5bba360f0613716b6911ac32c9f63bc70c11981d4074ca870c8bc245b6d135 --timeout 20 --value 10 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC6 0x00 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[logRevert] Processing transaction number 1696 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x1881AC8098C8d3974f6Bf38d18b8fdCb8F358221) to 0xccccccccccccccccccccccccccccccccccccccc1"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ea5bba360f0613716b6911ac32c9f63bc70c11981d4074ca870c8bc245b6d135 --timeout 20 --value 10 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC1 0x00 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[logRevert] Processing transaction number 1697 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x1881AC8098C8d3974f6Bf38d18b8fdCb8F358221) to 0xccccccccccccccccccccccccccccccccccccccc2"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ea5bba360f0613716b6911ac32c9f63bc70c11981d4074ca870c8bc245b6d135 --timeout 20 --value 10 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC2 0x00 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[logRevert] Processing transaction number 1698 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x1881AC8098C8d3974f6Bf38d18b8fdCb8F358221) to 0xccccccccccccccccccccccccccccccccccccccc3"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ea5bba360f0613716b6911ac32c9f63bc70c11981d4074ca870c8bc245b6d135 --timeout 20 --value 10 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC3 0x00 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[logRevert] Processing transaction number 1699 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x1881AC8098C8d3974f6Bf38d18b8fdCb8F358221) to 0xccccccccccccccccccccccccccccccccccccccc4"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ea5bba360f0613716b6911ac32c9f63bc70c11981d4074ca870c8bc245b6d135 --timeout 20 --value 10 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC4 0x00 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[logRevert] Processing transaction number 1700 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x1881AC8098C8d3974f6Bf38d18b8fdCb8F358221) to 0xccccccccccccccccccccccccccccccccccccccc5"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ea5bba360f0613716b6911ac32c9f63bc70c11981d4074ca870c8bc245b6d135 --timeout 20 --value 10 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC5 0x00 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[logRevert] Processing transaction number 1701 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x1881AC8098C8d3974f6Bf38d18b8fdCb8F358221) to 0x6e70da7a00000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ea5bba360f0613716b6911ac32c9f63bc70c11981d4074ca870c8bc245b6d135 --timeout 20 --value 20 $ADDR_6E70DA7A00000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

