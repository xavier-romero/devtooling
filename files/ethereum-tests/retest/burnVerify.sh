# PRV_KEY for master sender 0x30a3eafC3E695815cE71b7e04908D16d2251E910
PRV_KEY=745a4d670908c5ab2dcb24fa06fdcf75737c5fd9607e549e1634e65c09248eb2
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test burnVerify (src/BlockchainTestsFiller/ValidBlocks/bcEIP1559/burnVerifyFiller.yml)"

AMOUNT=$((2*150000*22*$GAS_PRICE+0))
echo "[burnVerify] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xfc7128E59903be30199770d32E186267874Dec2d) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xfc7128E59903be30199770d32E186267874Dec2d | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[burnVerify] Creating receiver 0xcccccccccccccccccccccccccccccccccccccccc with code and balance 0..."
ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 61036b62ffffff55630000007f601a600039630000007f6000F373ba5e00000000000000000000000000000000000073a94f5374fce5edbc8e2a8697c15331677e6ebf0b670de0b6b3a7640000600062ffffff543a62ffffff556001430384318631013a620186a002810182850286018181038455600184035484540385810461100086015585810661200086015550505050505050505050 | jq -r .contractAddress)
echo $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

echo "[burnVerify] Creating receiver 0xcccccccccccccccccccccccccccccccccccccccd with code and balance 0..."
ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6300000004601260003963000000046000F348435500 | jq -r .contractAddress)
echo $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD

echo "[burnVerify] Creating receiver 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa with code and balance 0..."
ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6300000003601260003963000000036000F360FF00 | jq -r .contractAddress)
echo $ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA

echo "[burnVerify] Creating receiver 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaab with code and balance 0..."
ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6300000001601260003963000000016000F3fe | jq -r .contractAddress)
echo $ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB

echo "[burnVerify] Creating receiver 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaac with code and balance 0..."
ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAC=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6300000004601260003963000000046000F3600080fd | jq -r .contractAddress)
echo $ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAC

echo "[burnVerify] Processing transaction number 1228 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xfc7128E59903be30199770d32E186267874Dec2d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key c39bef425772b8730f46468820ea81521c11fb3c0e48ac9ccb514e3820bdb27b --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[burnVerify] Processing transaction number 1229 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xfc7128E59903be30199770d32E186267874Dec2d) to 0xcccccccccccccccccccccccccccccccccccccccd"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key c39bef425772b8730f46468820ea81521c11fb3c0e48ac9ccb514e3820bdb27b --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[burnVerify] Processing transaction number 1230 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xfc7128E59903be30199770d32E186267874Dec2d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key c39bef425772b8730f46468820ea81521c11fb3c0e48ac9ccb514e3820bdb27b --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[burnVerify] Processing transaction number 1231 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xfc7128E59903be30199770d32E186267874Dec2d) to 0xcccccccccccccccccccccccccccccccccccccccd"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key c39bef425772b8730f46468820ea81521c11fb3c0e48ac9ccb514e3820bdb27b --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[burnVerify] Processing transaction number 1232 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xfc7128E59903be30199770d32E186267874Dec2d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key c39bef425772b8730f46468820ea81521c11fb3c0e48ac9ccb514e3820bdb27b --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[burnVerify] Processing transaction number 1233 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xfc7128E59903be30199770d32E186267874Dec2d) to 0xcccccccccccccccccccccccccccccccccccccccd"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key c39bef425772b8730f46468820ea81521c11fb3c0e48ac9ccb514e3820bdb27b --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[burnVerify] Processing transaction number 1234 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xfc7128E59903be30199770d32E186267874Dec2d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key c39bef425772b8730f46468820ea81521c11fb3c0e48ac9ccb514e3820bdb27b --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[burnVerify] Processing transaction number 1235 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xfc7128E59903be30199770d32E186267874Dec2d) to 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key c39bef425772b8730f46468820ea81521c11fb3c0e48ac9ccb514e3820bdb27b --timeout 20 --value 0 $ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[burnVerify] Processing transaction number 1236 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xfc7128E59903be30199770d32E186267874Dec2d) to 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaab"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key c39bef425772b8730f46468820ea81521c11fb3c0e48ac9ccb514e3820bdb27b --timeout 20 --value 0 $ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[burnVerify] Processing transaction number 1237 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xfc7128E59903be30199770d32E186267874Dec2d) to 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaac"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key c39bef425772b8730f46468820ea81521c11fb3c0e48ac9ccb514e3820bdb27b --timeout 20 --value 0 $ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[burnVerify] Processing transaction number 1238 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xfc7128E59903be30199770d32E186267874Dec2d) to 0xcccccccccccccccccccccccccccccccccccccccd"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key c39bef425772b8730f46468820ea81521c11fb3c0e48ac9ccb514e3820bdb27b --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[burnVerify] Processing transaction number 1239 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xfc7128E59903be30199770d32E186267874Dec2d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key c39bef425772b8730f46468820ea81521c11fb3c0e48ac9ccb514e3820bdb27b --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[burnVerify] Processing transaction number 1240 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xfc7128E59903be30199770d32E186267874Dec2d) to 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key c39bef425772b8730f46468820ea81521c11fb3c0e48ac9ccb514e3820bdb27b --timeout 20 --value 0 $ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[burnVerify] Processing transaction number 1241 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xfc7128E59903be30199770d32E186267874Dec2d) to 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaab"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key c39bef425772b8730f46468820ea81521c11fb3c0e48ac9ccb514e3820bdb27b --timeout 20 --value 0 $ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[burnVerify] Processing transaction number 1242 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xfc7128E59903be30199770d32E186267874Dec2d) to 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaac"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key c39bef425772b8730f46468820ea81521c11fb3c0e48ac9ccb514e3820bdb27b --timeout 20 --value 0 $ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[burnVerify] Processing transaction number 1243 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xfc7128E59903be30199770d32E186267874Dec2d) to 0xcccccccccccccccccccccccccccccccccccccccd"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key c39bef425772b8730f46468820ea81521c11fb3c0e48ac9ccb514e3820bdb27b --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[burnVerify] Processing transaction number 1244 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xfc7128E59903be30199770d32E186267874Dec2d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key c39bef425772b8730f46468820ea81521c11fb3c0e48ac9ccb514e3820bdb27b --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[burnVerify] Processing transaction number 1245 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xfc7128E59903be30199770d32E186267874Dec2d) to 0xcccccccccccccccccccccccccccccccccccccccd"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key c39bef425772b8730f46468820ea81521c11fb3c0e48ac9ccb514e3820bdb27b --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[burnVerify] Processing transaction number 1246 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xfc7128E59903be30199770d32E186267874Dec2d) to 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key c39bef425772b8730f46468820ea81521c11fb3c0e48ac9ccb514e3820bdb27b --timeout 20 --value 0 $ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[burnVerify] Processing transaction number 1247 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xfc7128E59903be30199770d32E186267874Dec2d) to 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaab"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key c39bef425772b8730f46468820ea81521c11fb3c0e48ac9ccb514e3820bdb27b --timeout 20 --value 0 $ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[burnVerify] Processing transaction number 1248 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xfc7128E59903be30199770d32E186267874Dec2d) to 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaac"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key c39bef425772b8730f46468820ea81521c11fb3c0e48ac9ccb514e3820bdb27b --timeout 20 --value 0 $ADDR_AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[burnVerify] Processing transaction number 1249 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xfc7128E59903be30199770d32E186267874Dec2d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key c39bef425772b8730f46468820ea81521c11fb3c0e48ac9ccb514e3820bdb27b --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

