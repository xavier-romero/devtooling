# PRV_KEY for master sender 0x62EDa390e2C27626E7C4cfd6f1CbC27371e912e8
PRV_KEY=09642aab02d6d58e5c1dc4fb82bd6cd0393e7d9cdda29ca8cabe03482b0de36b
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test eip2930 (src/BlockchainTestsFiller/ValidBlocks/bcValidBlockTest/eip2930Filler.yml)"

AMOUNT=$((2*150000*14*$GAS_PRICE+0))
echo "[eip2930] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x06EF1b1fadE199c1D854883050Ef1116459Fe59e) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x06EF1b1fadE199c1D854883050Ef1116459Fe59e | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[eip2930] Creating receiver 0xcccccccccccccccccccccccccccccccccccccccc with code and balance 195144142..."
ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 195144142 --create 6300000024601260003963000000246000F35a6000526160a76024355560175a60005103036000526000602435556000516004355500 | jq -r .contractAddress)
echo $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

echo "[eip2930] Creating receiver 0xcccccccccccccccccccccccccccccccccccccccd with code and balance 195144142..."
ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 195144142 --create 630000001e6012600039630000001e6000F35a60005260243554602052601d5a60005103036000526000516004355500 | jq -r .contractAddress)
echo $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD

echo "[eip2930] Processing transaction number 1438 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x06EF1b1fadE199c1D854883050Ef1116459Fe59e) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key cd1e254aebd35b9fe2443c9eba6cdaa0465ec69f589ca5a87812a1846277dc5e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 1a8451e600000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000001000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[eip2930] Processing transaction number 1439 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x06EF1b1fadE199c1D854883050Ef1116459Fe59e) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key cd1e254aebd35b9fe2443c9eba6cdaa0465ec69f589ca5a87812a1846277dc5e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 1a8451e600000000000000000000000000000000000000000000000000000000000000020000000000000000000000000000000000000000000000000000000000001000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[eip2930] Processing transaction number 1440 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x06EF1b1fadE199c1D854883050Ef1116459Fe59e) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key cd1e254aebd35b9fe2443c9eba6cdaa0465ec69f589ca5a87812a1846277dc5e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 1a8451e600000000000000000000000000000000000000000000000000000000000000030000000000000000000000000000000000000000000000000000000000001000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[eip2930] Processing transaction number 1441 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x06EF1b1fadE199c1D854883050Ef1116459Fe59e) to 0xcccccccccccccccccccccccccccccccccccccccd"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key cd1e254aebd35b9fe2443c9eba6cdaa0465ec69f589ca5a87812a1846277dc5e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD 1a8451e600000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000001000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[eip2930] Processing transaction number 1442 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x06EF1b1fadE199c1D854883050Ef1116459Fe59e) to 0xcccccccccccccccccccccccccccccccccccccccd"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key cd1e254aebd35b9fe2443c9eba6cdaa0465ec69f589ca5a87812a1846277dc5e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD 1a8451e600000000000000000000000000000000000000000000000000000000000000020000000000000000000000000000000000000000000000000000000000001000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[eip2930] Processing transaction number 1443 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x06EF1b1fadE199c1D854883050Ef1116459Fe59e) to 0xcccccccccccccccccccccccccccccccccccccccd"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key cd1e254aebd35b9fe2443c9eba6cdaa0465ec69f589ca5a87812a1846277dc5e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD 1a8451e600000000000000000000000000000000000000000000000000000000000000030000000000000000000000000000000000000000000000000000000000001000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[eip2930] Processing transaction number 1444 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x06EF1b1fadE199c1D854883050Ef1116459Fe59e) to 0xcccccccccccccccccccccccccccccccccccccccd"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key cd1e254aebd35b9fe2443c9eba6cdaa0465ec69f589ca5a87812a1846277dc5e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD 1a8451e600000000000000000000000000000000000000000000000000000000000000040000000000000000000000000000000000000000000000000000000000001000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[eip2930] Processing transaction number 1445 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x06EF1b1fadE199c1D854883050Ef1116459Fe59e) to 0xcccccccccccccccccccccccccccccccccccccccd"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key cd1e254aebd35b9fe2443c9eba6cdaa0465ec69f589ca5a87812a1846277dc5e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD 1a8451e600000000000000000000000000000000000000000000000000000000000000040000000000000000000000000000000000000000000000000000000000001000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[eip2930] Processing transaction number 1446 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x06EF1b1fadE199c1D854883050Ef1116459Fe59e) to 0xcccccccccccccccccccccccccccccccccccccccd"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key cd1e254aebd35b9fe2443c9eba6cdaa0465ec69f589ca5a87812a1846277dc5e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD 62ac2e9300000000000000000000000000000000000000000000000000000000000000050000000000000000000000000000000000000000000000000000000000001000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[eip2930] Processing transaction number 1447 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x06EF1b1fadE199c1D854883050Ef1116459Fe59e) to 0xcccccccccccccccccccccccccccccccccccccccd"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key cd1e254aebd35b9fe2443c9eba6cdaa0465ec69f589ca5a87812a1846277dc5e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD 1a8451e600000000000000000000000000000000000000000000000000000000000000050000000000000000000000000000000000000000000000000000000000001000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[eip2930] Processing transaction number 1448 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x06EF1b1fadE199c1D854883050Ef1116459Fe59e) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key cd1e254aebd35b9fe2443c9eba6cdaa0465ec69f589ca5a87812a1846277dc5e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 1a8451e600000000000000000000000000000000000000000000000000000000000000040000000000000000000000000000000000000000000000000000000000001000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[eip2930] Processing transaction number 1449 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x06EF1b1fadE199c1D854883050Ef1116459Fe59e) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key cd1e254aebd35b9fe2443c9eba6cdaa0465ec69f589ca5a87812a1846277dc5e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 1a8451e600000000000000000000000000000000000000000000000000000000000000040000000000000000000000000000000000000000000000000000000000001000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[eip2930] Processing transaction number 1450 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x06EF1b1fadE199c1D854883050Ef1116459Fe59e) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key cd1e254aebd35b9fe2443c9eba6cdaa0465ec69f589ca5a87812a1846277dc5e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 1a8451e600000000000000000000000000000000000000000000000000000000000000050000000000000000000000000000000000000000000000000000000000001000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[eip2930] Processing transaction number 1451 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x06EF1b1fadE199c1D854883050Ef1116459Fe59e) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key cd1e254aebd35b9fe2443c9eba6cdaa0465ec69f589ca5a87812a1846277dc5e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 1a8451e600000000000000000000000000000000000000000000000000000000000000050000000000000000000000000000000000000000000000000000000000001000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

