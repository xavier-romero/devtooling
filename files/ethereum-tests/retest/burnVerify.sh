# PRV_KEY for master sender 0x5569c36E876B8dC1eE7B5E70a5aB1df70328DCCa
PRV_KEY=4c339a69289ca2afe282809df7438f3ae55165a4b3a70cc4d0f57f98d3a27c0d
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test burnVerify (src/BlockchainTestsFiller/ValidBlocks/bcEIP1559/burnVerifyFiller.yml)"

AMOUNT=$((2*150000*22*$GAS_PRICE+0))
echo "[burnVerify] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x2F76eD6161aeF3Ce2F8dfd196CC7374F9d242060) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x2F76eD6161aeF3Ce2F8dfd196CC7374F9d242060 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[burnVerify] Creating receiver 0xcccccccccccccccccccccccccccccccccccccccc with code and balance 0..."
ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 61036b62ffffff55630000007f601a600039630000007f6000F373ba5e00000000000000000000000000000000000073a94f5374fce5edbc8e2a8697c15331677e6ebf0b670de0b6b3a7640000600062ffffff543a62ffffff556001430384318631013a620186a002810182850286018181038455600184035484540385810461100086015585810661200086015550505050505050505050 | jq -r .contractAddress)
echo $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

echo "[burnVerify] Creating receiver 0xcccccccccccccccccccccccccccccccccccccccd with code and balance 0..."
ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6300000004601260003963000000046000F348435500 | jq -r .contractAddress)
echo $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD

echo "[burnVerify] Creating receiver 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa with code and balance 0..."
ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6300000003601260003963000000036000F360FF00 | jq -r .contractAddress)
echo $ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA

echo "[burnVerify] Creating receiver 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaab with code and balance 0..."
ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6300000001601260003963000000016000F3fe | jq -r .contractAddress)
echo $ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB

echo "[burnVerify] Creating receiver 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaac with code and balance 0..."
ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAC=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6300000004601260003963000000046000F3600080fd | jq -r .contractAddress)
echo $ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAC

echo "[burnVerify] Processing transaction number 1228 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x2F76eD6161aeF3Ce2F8dfd196CC7374F9d242060) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 082583f956d7eb0ab37818259cf717c4547a9251ad70eb2b0a8a178d2cdd594e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[burnVerify] Processing transaction number 1229 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x2F76eD6161aeF3Ce2F8dfd196CC7374F9d242060) to 0xcccccccccccccccccccccccccccccccccccccccd"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 082583f956d7eb0ab37818259cf717c4547a9251ad70eb2b0a8a178d2cdd594e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[burnVerify] Processing transaction number 1230 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x2F76eD6161aeF3Ce2F8dfd196CC7374F9d242060) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 082583f956d7eb0ab37818259cf717c4547a9251ad70eb2b0a8a178d2cdd594e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[burnVerify] Processing transaction number 1231 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x2F76eD6161aeF3Ce2F8dfd196CC7374F9d242060) to 0xcccccccccccccccccccccccccccccccccccccccd"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 082583f956d7eb0ab37818259cf717c4547a9251ad70eb2b0a8a178d2cdd594e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[burnVerify] Processing transaction number 1232 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x2F76eD6161aeF3Ce2F8dfd196CC7374F9d242060) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 082583f956d7eb0ab37818259cf717c4547a9251ad70eb2b0a8a178d2cdd594e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[burnVerify] Processing transaction number 1233 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x2F76eD6161aeF3Ce2F8dfd196CC7374F9d242060) to 0xcccccccccccccccccccccccccccccccccccccccd"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 082583f956d7eb0ab37818259cf717c4547a9251ad70eb2b0a8a178d2cdd594e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[burnVerify] Processing transaction number 1234 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x2F76eD6161aeF3Ce2F8dfd196CC7374F9d242060) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 082583f956d7eb0ab37818259cf717c4547a9251ad70eb2b0a8a178d2cdd594e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[burnVerify] Processing transaction number 1235 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x2F76eD6161aeF3Ce2F8dfd196CC7374F9d242060) to 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 082583f956d7eb0ab37818259cf717c4547a9251ad70eb2b0a8a178d2cdd594e --timeout 20 --value 0 $ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[burnVerify] Processing transaction number 1236 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x2F76eD6161aeF3Ce2F8dfd196CC7374F9d242060) to 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaab"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 082583f956d7eb0ab37818259cf717c4547a9251ad70eb2b0a8a178d2cdd594e --timeout 20 --value 0 $ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[burnVerify] Processing transaction number 1237 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x2F76eD6161aeF3Ce2F8dfd196CC7374F9d242060) to 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaac"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 082583f956d7eb0ab37818259cf717c4547a9251ad70eb2b0a8a178d2cdd594e --timeout 20 --value 0 $ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[burnVerify] Processing transaction number 1238 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x2F76eD6161aeF3Ce2F8dfd196CC7374F9d242060) to 0xcccccccccccccccccccccccccccccccccccccccd"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 082583f956d7eb0ab37818259cf717c4547a9251ad70eb2b0a8a178d2cdd594e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[burnVerify] Processing transaction number 1239 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x2F76eD6161aeF3Ce2F8dfd196CC7374F9d242060) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 082583f956d7eb0ab37818259cf717c4547a9251ad70eb2b0a8a178d2cdd594e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[burnVerify] Processing transaction number 1240 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x2F76eD6161aeF3Ce2F8dfd196CC7374F9d242060) to 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 082583f956d7eb0ab37818259cf717c4547a9251ad70eb2b0a8a178d2cdd594e --timeout 20 --value 0 $ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[burnVerify] Processing transaction number 1241 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x2F76eD6161aeF3Ce2F8dfd196CC7374F9d242060) to 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaab"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 082583f956d7eb0ab37818259cf717c4547a9251ad70eb2b0a8a178d2cdd594e --timeout 20 --value 0 $ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[burnVerify] Processing transaction number 1242 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x2F76eD6161aeF3Ce2F8dfd196CC7374F9d242060) to 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaac"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 082583f956d7eb0ab37818259cf717c4547a9251ad70eb2b0a8a178d2cdd594e --timeout 20 --value 0 $ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[burnVerify] Processing transaction number 1243 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x2F76eD6161aeF3Ce2F8dfd196CC7374F9d242060) to 0xcccccccccccccccccccccccccccccccccccccccd"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 082583f956d7eb0ab37818259cf717c4547a9251ad70eb2b0a8a178d2cdd594e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[burnVerify] Processing transaction number 1244 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x2F76eD6161aeF3Ce2F8dfd196CC7374F9d242060) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 082583f956d7eb0ab37818259cf717c4547a9251ad70eb2b0a8a178d2cdd594e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[burnVerify] Processing transaction number 1245 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x2F76eD6161aeF3Ce2F8dfd196CC7374F9d242060) to 0xcccccccccccccccccccccccccccccccccccccccd"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 082583f956d7eb0ab37818259cf717c4547a9251ad70eb2b0a8a178d2cdd594e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[burnVerify] Processing transaction number 1246 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x2F76eD6161aeF3Ce2F8dfd196CC7374F9d242060) to 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 082583f956d7eb0ab37818259cf717c4547a9251ad70eb2b0a8a178d2cdd594e --timeout 20 --value 0 $ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[burnVerify] Processing transaction number 1247 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x2F76eD6161aeF3Ce2F8dfd196CC7374F9d242060) to 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaab"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 082583f956d7eb0ab37818259cf717c4547a9251ad70eb2b0a8a178d2cdd594e --timeout 20 --value 0 $ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[burnVerify] Processing transaction number 1248 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x2F76eD6161aeF3Ce2F8dfd196CC7374F9d242060) to 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaac"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 082583f956d7eb0ab37818259cf717c4547a9251ad70eb2b0a8a178d2cdd594e --timeout 20 --value 0 $ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[burnVerify] Processing transaction number 1249 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x2F76eD6161aeF3Ce2F8dfd196CC7374F9d242060) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 082583f956d7eb0ab37818259cf717c4547a9251ad70eb2b0a8a178d2cdd594e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

