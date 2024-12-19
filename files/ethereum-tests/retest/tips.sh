# PRV_KEY for master sender 0xEC0E53741A80fcde833D59fbEBC9d3bA22718637
PRV_KEY=d7daefcb9c1bec5e22768f27fc41fae87d7a0590f08399bd4d7758326802c47f
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test tips (src/BlockchainTestsFiller/ValidBlocks/bcEIP1559/tipsFiller.yml)"

AMOUNT=$((2*150000*35*$GAS_PRICE+0))
echo "[tips] Funding sender 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x9dfa02F08A4566f30F95402Ee2F25bF2F35Dd4bC) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x9dfa02F08A4566f30F95402Ee2F25bF2F35Dd4bC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[tips] Creating receiver 0xcccccccccccccccccccccccccccccccccccccccc with code and balance 1099511627776..."
ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1099511627776 --create 630000004f6012600039630000004f6000F373ba5e000000000000000000000000000000000000600061ffff823160014303602757600092505b828254820303600143035560003603603d578082555b6000361115604a57600082555b50505050 | jq -r .contractAddress)
echo $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

echo "[tips] Creating receiver 0xcccccccccccccccccccccccccccccccccccccccd with code and balance 1099511627776..."
ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1099511627776 --create 6300000004601260003963000000046000F348435500 | jq -r .contractAddress)
echo $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD

echo "[tips] Creating receiver 0xccccccccccccccccccccccccccccccccccccccce with code and balance 1099511627776..."
ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCE=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1099511627776 --create 630000000d6012600039630000000d6000F3484355483a0361100043015500 | jq -r .contractAddress)
echo $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCE

echo "[tips] Creating receiver 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa with code and balance 1099511627776..."
ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1099511627776 --create 6300000003601260003963000000036000F360FF00 | jq -r .contractAddress)
echo $ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA

echo "[tips] Creating receiver 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaab with code and balance 1099511627776..."
ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1099511627776 --create 6300000001601260003963000000016000F3FE | jq -r .contractAddress)
echo $ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB

echo "[tips] Creating receiver 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaac with code and balance 1099511627776..."
ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAC=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1099511627776 --create 6300000004601260003963000000046000F3600080fd | jq -r .contractAddress)
echo $ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAC

echo "[tips] Processing transaction number 1193 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x9dfa02F08A4566f30F95402Ee2F25bF2F35Dd4bC) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d10d52db24436d2cb30a9b40ee19876de7c97de1dbf0b7f0a79e14d2ed949998 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[tips] Processing transaction number 1194 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x9dfa02F08A4566f30F95402Ee2F25bF2F35Dd4bC) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d10d52db24436d2cb30a9b40ee19876de7c97de1dbf0b7f0a79e14d2ed949998 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[tips] Processing transaction number 1195 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x9dfa02F08A4566f30F95402Ee2F25bF2F35Dd4bC) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d10d52db24436d2cb30a9b40ee19876de7c97de1dbf0b7f0a79e14d2ed949998 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[tips] Processing transaction number 1196 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x9dfa02F08A4566f30F95402Ee2F25bF2F35Dd4bC) to 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d10d52db24436d2cb30a9b40ee19876de7c97de1dbf0b7f0a79e14d2ed949998 --timeout 20 --value 0 $ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[tips] Processing transaction number 1197 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x9dfa02F08A4566f30F95402Ee2F25bF2F35Dd4bC) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d10d52db24436d2cb30a9b40ee19876de7c97de1dbf0b7f0a79e14d2ed949998 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[tips] Processing transaction number 1198 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x9dfa02F08A4566f30F95402Ee2F25bF2F35Dd4bC) to 0xcccccccccccccccccccccccccccccccccccccccd"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d10d52db24436d2cb30a9b40ee19876de7c97de1dbf0b7f0a79e14d2ed949998 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[tips] Processing transaction number 1199 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x9dfa02F08A4566f30F95402Ee2F25bF2F35Dd4bC) to 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d10d52db24436d2cb30a9b40ee19876de7c97de1dbf0b7f0a79e14d2ed949998 --timeout 20 --value 0 $ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[tips] Processing transaction number 1200 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x9dfa02F08A4566f30F95402Ee2F25bF2F35Dd4bC) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d10d52db24436d2cb30a9b40ee19876de7c97de1dbf0b7f0a79e14d2ed949998 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[tips] Processing transaction number 1201 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x9dfa02F08A4566f30F95402Ee2F25bF2F35Dd4bC) to 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d10d52db24436d2cb30a9b40ee19876de7c97de1dbf0b7f0a79e14d2ed949998 --timeout 20 --value 0 $ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[tips] Processing transaction number 1202 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x9dfa02F08A4566f30F95402Ee2F25bF2F35Dd4bC) to 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d10d52db24436d2cb30a9b40ee19876de7c97de1dbf0b7f0a79e14d2ed949998 --timeout 20 --value 0 $ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[tips] Processing transaction number 1203 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x9dfa02F08A4566f30F95402Ee2F25bF2F35Dd4bC) to 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d10d52db24436d2cb30a9b40ee19876de7c97de1dbf0b7f0a79e14d2ed949998 --timeout 20 --value 0 $ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[tips] Processing transaction number 1204 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x9dfa02F08A4566f30F95402Ee2F25bF2F35Dd4bC) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d10d52db24436d2cb30a9b40ee19876de7c97de1dbf0b7f0a79e14d2ed949998 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[tips] Processing transaction number 1205 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x9dfa02F08A4566f30F95402Ee2F25bF2F35Dd4bC) to 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d10d52db24436d2cb30a9b40ee19876de7c97de1dbf0b7f0a79e14d2ed949998 --timeout 20 --value 0 $ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[tips] Processing transaction number 1206 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x9dfa02F08A4566f30F95402Ee2F25bF2F35Dd4bC) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d10d52db24436d2cb30a9b40ee19876de7c97de1dbf0b7f0a79e14d2ed949998 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[tips] Processing transaction number 1207 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x9dfa02F08A4566f30F95402Ee2F25bF2F35Dd4bC) to 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d10d52db24436d2cb30a9b40ee19876de7c97de1dbf0b7f0a79e14d2ed949998 --timeout 20 --value 0 $ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[tips] Processing transaction number 1208 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x9dfa02F08A4566f30F95402Ee2F25bF2F35Dd4bC) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d10d52db24436d2cb30a9b40ee19876de7c97de1dbf0b7f0a79e14d2ed949998 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[tips] Processing transaction number 1209 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x9dfa02F08A4566f30F95402Ee2F25bF2F35Dd4bC) to 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d10d52db24436d2cb30a9b40ee19876de7c97de1dbf0b7f0a79e14d2ed949998 --timeout 20 --value 0 $ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[tips] Processing transaction number 1210 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x9dfa02F08A4566f30F95402Ee2F25bF2F35Dd4bC) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d10d52db24436d2cb30a9b40ee19876de7c97de1dbf0b7f0a79e14d2ed949998 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[tips] Processing transaction number 1211 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x9dfa02F08A4566f30F95402Ee2F25bF2F35Dd4bC) to 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d10d52db24436d2cb30a9b40ee19876de7c97de1dbf0b7f0a79e14d2ed949998 --timeout 20 --value 0 $ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[tips] Processing transaction number 1212 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x9dfa02F08A4566f30F95402Ee2F25bF2F35Dd4bC) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d10d52db24436d2cb30a9b40ee19876de7c97de1dbf0b7f0a79e14d2ed949998 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[tips] Processing transaction number 1213 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x9dfa02F08A4566f30F95402Ee2F25bF2F35Dd4bC) to 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d10d52db24436d2cb30a9b40ee19876de7c97de1dbf0b7f0a79e14d2ed949998 --timeout 20 --value 0 $ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[tips] Processing transaction number 1214 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x9dfa02F08A4566f30F95402Ee2F25bF2F35Dd4bC) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d10d52db24436d2cb30a9b40ee19876de7c97de1dbf0b7f0a79e14d2ed949998 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[tips] Processing transaction number 1215 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x9dfa02F08A4566f30F95402Ee2F25bF2F35Dd4bC) to 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d10d52db24436d2cb30a9b40ee19876de7c97de1dbf0b7f0a79e14d2ed949998 --timeout 20 --value 0 $ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[tips] Processing transaction number 1216 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x9dfa02F08A4566f30F95402Ee2F25bF2F35Dd4bC) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d10d52db24436d2cb30a9b40ee19876de7c97de1dbf0b7f0a79e14d2ed949998 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[tips] Processing transaction number 1217 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x9dfa02F08A4566f30F95402Ee2F25bF2F35Dd4bC) to 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d10d52db24436d2cb30a9b40ee19876de7c97de1dbf0b7f0a79e14d2ed949998 --timeout 20 --value 0 $ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[tips] Processing transaction number 1218 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x9dfa02F08A4566f30F95402Ee2F25bF2F35Dd4bC) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d10d52db24436d2cb30a9b40ee19876de7c97de1dbf0b7f0a79e14d2ed949998 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[tips] Processing transaction number 1219 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x9dfa02F08A4566f30F95402Ee2F25bF2F35Dd4bC) to 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d10d52db24436d2cb30a9b40ee19876de7c97de1dbf0b7f0a79e14d2ed949998 --timeout 20 --value 0 $ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[tips] Processing transaction number 1220 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x9dfa02F08A4566f30F95402Ee2F25bF2F35Dd4bC) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d10d52db24436d2cb30a9b40ee19876de7c97de1dbf0b7f0a79e14d2ed949998 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[tips] Processing transaction number 1221 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x9dfa02F08A4566f30F95402Ee2F25bF2F35Dd4bC) to 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaab"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d10d52db24436d2cb30a9b40ee19876de7c97de1dbf0b7f0a79e14d2ed949998 --timeout 20 --value 0 $ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[tips] Processing transaction number 1222 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x9dfa02F08A4566f30F95402Ee2F25bF2F35Dd4bC) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d10d52db24436d2cb30a9b40ee19876de7c97de1dbf0b7f0a79e14d2ed949998 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[tips] Processing transaction number 1223 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x9dfa02F08A4566f30F95402Ee2F25bF2F35Dd4bC) to 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaac"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d10d52db24436d2cb30a9b40ee19876de7c97de1dbf0b7f0a79e14d2ed949998 --timeout 20 --value 0 $ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[tips] Processing transaction number 1224 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x9dfa02F08A4566f30F95402Ee2F25bF2F35Dd4bC) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d10d52db24436d2cb30a9b40ee19876de7c97de1dbf0b7f0a79e14d2ed949998 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[tips] Processing transaction number 1225 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x9dfa02F08A4566f30F95402Ee2F25bF2F35Dd4bC) to 0xccccccccccccccccccccccccccccccccccccccce"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d10d52db24436d2cb30a9b40ee19876de7c97de1dbf0b7f0a79e14d2ed949998 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCE | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[tips] Processing transaction number 1226 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x9dfa02F08A4566f30F95402Ee2F25bF2F35Dd4bC) to 0xccccccccccccccccccccccccccccccccccccccce"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d10d52db24436d2cb30a9b40ee19876de7c97de1dbf0b7f0a79e14d2ed949998 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCE | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[tips] Processing transaction number 1227 from 0xd02d72E067e77158444ef2020Ff2d325f929B363(remapped to 0x9dfa02F08A4566f30F95402Ee2F25bF2F35Dd4bC) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d10d52db24436d2cb30a9b40ee19876de7c97de1dbf0b7f0a79e14d2ed949998 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 0x60A7 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

