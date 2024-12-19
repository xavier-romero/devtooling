# PRV_KEY for master sender 0x87dEcBbd49Ac068cFd95aa150fA76ff215ceC1BB
PRV_KEY=6e61a0205a67c352c12d740935948e4cdd1c77ed980fd66a04f4486539e3131a
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test transType (src/BlockchainTestsFiller/ValidBlocks/bcEIP1559/transTypeFiller.yml)"

AMOUNT=$((2*150000*7*$GAS_PRICE+0))
echo "[transType] Funding sender 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x3DA2266F4ABD8d0D0cb23ac23E70ed8e023b8bb0) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x3DA2266F4ABD8d0D0cb23ac23E70ed8e023b8bb0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transType] Processing transaction number 1424 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x3DA2266F4ABD8d0D0cb23ac23E70ed8e023b8bb0) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key bc017ac775db960a356e0723e3a2b1bef7293c94f8da390233ec14d812fafd76 --timeout 20 --value 0 0xcccccccccccccccccccccccccccccccccccccccc | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transType] Processing transaction number 1425 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x3DA2266F4ABD8d0D0cb23ac23E70ed8e023b8bb0) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key bc017ac775db960a356e0723e3a2b1bef7293c94f8da390233ec14d812fafd76 --timeout 20 --value 0 0xcccccccccccccccccccccccccccccccccccccccc | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transType] Processing transaction number 1426 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x3DA2266F4ABD8d0D0cb23ac23E70ed8e023b8bb0) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key bc017ac775db960a356e0723e3a2b1bef7293c94f8da390233ec14d812fafd76 --timeout 20 --value 0 0xcccccccccccccccccccccccccccccccccccccccc | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transType] Processing transaction number 1427 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x3DA2266F4ABD8d0D0cb23ac23E70ed8e023b8bb0) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key bc017ac775db960a356e0723e3a2b1bef7293c94f8da390233ec14d812fafd76 --timeout 20 --value 0 0xcccccccccccccccccccccccccccccccccccccccc | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transType] Processing transaction number 1428 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x3DA2266F4ABD8d0D0cb23ac23E70ed8e023b8bb0) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key bc017ac775db960a356e0723e3a2b1bef7293c94f8da390233ec14d812fafd76 --timeout 20 --value 0 0xcccccccccccccccccccccccccccccccccccccccc | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transType] Processing transaction number 1429 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x3DA2266F4ABD8d0D0cb23ac23E70ed8e023b8bb0) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key bc017ac775db960a356e0723e3a2b1bef7293c94f8da390233ec14d812fafd76 --timeout 20 --value 0 0xcccccccccccccccccccccccccccccccccccccccc | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[transType] Processing transaction number 1430 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x3DA2266F4ABD8d0D0cb23ac23E70ed8e023b8bb0) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key bc017ac775db960a356e0723e3a2b1bef7293c94f8da390233ec14d812fafd76 --timeout 20 --value 0 0xcccccccccccccccccccccccccccccccccccccccc | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

