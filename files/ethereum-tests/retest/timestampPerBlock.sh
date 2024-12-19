# PRV_KEY for master sender 0x83e8a24beBF9C536311E825bB76B0380C375Bb67
PRV_KEY=9c1d47b12ff688f5562e78dfa750678b4edae07faa15cb50fd1172c1d36c3484
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test timestampPerBlock (src/BlockchainTestsFiller/InvalidBlocks/bcEIP3675/timestampPerBlockFiller.yml)"

AMOUNT=$((2*150000*6*$GAS_PRICE+0))
echo "[timestampPerBlock] Funding sender 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x0c34a0530d8e3974383397d5d5074B252e60952d) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x0c34a0530d8e3974383397d5d5074B252e60952d | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[timestampPerBlock] Creating receiver 0xcccccccccccccccccccccccccccccccccccccccc with code and balance 1099511627776..."
ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1099511627776 --create 6300000003601260003963000000036000F3424355 | jq -r .contractAddress)
echo $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

echo "[timestampPerBlock] Processing transaction number 1125 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x0c34a0530d8e3974383397d5d5074B252e60952d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 39690c67027397cf7ec8e85d655546b6d20800900195f2d0406570fa31c1cd6d --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[timestampPerBlock] Processing transaction number 1126 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x0c34a0530d8e3974383397d5d5074B252e60952d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 39690c67027397cf7ec8e85d655546b6d20800900195f2d0406570fa31c1cd6d --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[timestampPerBlock] Processing transaction number 1127 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x0c34a0530d8e3974383397d5d5074B252e60952d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 39690c67027397cf7ec8e85d655546b6d20800900195f2d0406570fa31c1cd6d --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[timestampPerBlock] Processing transaction number 1128 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x0c34a0530d8e3974383397d5d5074B252e60952d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 39690c67027397cf7ec8e85d655546b6d20800900195f2d0406570fa31c1cd6d --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[timestampPerBlock] Processing transaction number 1129 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x0c34a0530d8e3974383397d5d5074B252e60952d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 39690c67027397cf7ec8e85d655546b6d20800900195f2d0406570fa31c1cd6d --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[timestampPerBlock] Processing transaction number 1130 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x0c34a0530d8e3974383397d5d5074B252e60952d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 39690c67027397cf7ec8e85d655546b6d20800900195f2d0406570fa31c1cd6d --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

