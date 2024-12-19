# PRV_KEY for master sender 0xB49f59C24Cbc07F3B954cd436bD215f2229eed84
PRV_KEY=88a17f1850e2a5ad5a286ef694a19210276fcc7f250994952c41c5829e23e669
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test refundReset (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/refundResetFiller.yml)"

AMOUNT=$((2*150000*38*$GAS_PRICE+0))
echo "[refundReset] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x84fade6975C5389F4fCBAB9DDCc90a482eaEf25e) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x84fade6975C5389F4fCBAB9DDCc90a482eaEf25e | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[refundReset] Creating receiver 0x0000000000000000000000000000000000000fee with code and balance 0..."
ADDR_0000000000000000000000000000000000000FEE=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 630000001d6012600039630000001d6000F360003560005b6010811015601a578181556001810190506005565b5050 | jq -r .contractAddress)
echo $ADDR_0000000000000000000000000000000000000FEE

echo "[refundReset] Creating receiver 0x000000000000000000000000000000000000600d with code and balance 0..."
ADDR_000000000000000000000000000000000000600D=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6300000004601260003963000000046000F3600080f3 | jq -r .contractAddress)
echo $ADDR_000000000000000000000000000000000000600D

echo "[refundReset] Creating receiver 0x0000000000000000000000000000000000ca1102 with code and balance 0..."
ADDR_0000000000000000000000000000000000CA1102=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6300000024601260003963000000246000F36000356000526000806020600080610fee5af150600080600080600061600d6155f0f150 | jq -r .contractAddress)
echo $ADDR_0000000000000000000000000000000000CA1102

echo "[refundReset] Creating receiver 0x000000000000000000000000000000000000bad3 with code and balance 0..."
ADDR_000000000000000000000000000000000000BAD3=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6300000004601260003963000000046000F3600080fd | jq -r .contractAddress)
echo $ADDR_000000000000000000000000000000000000BAD3

echo "[refundReset] Creating receiver 0x0000000000000000000000000000000000ca1103 with code and balance 0..."
ADDR_0000000000000000000000000000000000CA1103=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6300000024601260003963000000246000F36000356000526000806020600080610fee5af150600080600080600061bad36155f0f150 | jq -r .contractAddress)
echo $ADDR_0000000000000000000000000000000000CA1103

echo "[refundReset] Creating receiver 0x000000000000000000000000000000000000bad4 with code and balance 0..."
ADDR_000000000000000000000000000000000000BAD4=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6300000001601260003963000000016000F3fe | jq -r .contractAddress)
echo $ADDR_000000000000000000000000000000000000BAD4

echo "[refundReset] Creating receiver 0x0000000000000000000000000000000000ca1104 with code and balance 0..."
ADDR_0000000000000000000000000000000000CA1104=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6300000024601260003963000000246000F36000356000526000806020600080610fee5af150600080600080600061bad46155f0f150 | jq -r .contractAddress)
echo $ADDR_0000000000000000000000000000000000CA1104

echo "[refundReset] Creating receiver 0x0000000000000000000000000000000000ca1105 with code and balance 0..."
ADDR_0000000000000000000000000000000000CA1105=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6300000034601260003963000000346000F36000356000526000806020600080610fee5af150606060005360006001536060600253600060035360fd6004536005600080f050 | jq -r .contractAddress)
echo $ADDR_0000000000000000000000000000000000CA1105

echo "[refundReset] Creating receiver 0x000000000000000000000000000000000000bad6 with code and balance 0..."
ADDR_000000000000000000000000000000000000BAD6=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 630000000c6012600039630000000c6000F360fe6001536001600080f050 | jq -r .contractAddress)
echo $ADDR_000000000000000000000000000000000000BAD6

echo "[refundReset] Creating receiver 0x0000000000000000000000000000000000ca1106 with code and balance 0..."
ADDR_0000000000000000000000000000000000CA1106=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6300000024601260003963000000246000F36000356000526000806020600080610fee5af150600080600080600061bad66155f0f150 | jq -r .contractAddress)
echo $ADDR_0000000000000000000000000000000000CA1106

echo "[refundReset] Creating receiver 0x000000000000000000000000000000000000da7a with code and balance 0..."
ADDR_000000000000000000000000000000000000DA7A=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 60016000556300000061601760003963000000616000F360005473a94f5374fce5edbc8e2a8697c15331677e6ebf0b318155600181016000556000361115605f5760015b81811015605257600181015481540381610100015560006001820355600181019050602c565b5060006001820355600081555b50 | jq -r .contractAddress)
echo $ADDR_000000000000000000000000000000000000DA7A

echo "[refundReset] Processing transaction number 1634 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x84fade6975C5389F4fCBAB9DDCc90a482eaEf25e) to 0x000000000000000000000000000000000000da7a"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 95a180cddac70eeba705e2bc7a177c61c1d00fc139e632f691c4d195516a1282 --timeout 20 --value 0 $ADDR_000000000000000000000000000000000000DA7A | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[refundReset] Processing transaction number 1635 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x84fade6975C5389F4fCBAB9DDCc90a482eaEf25e) to 0x0000000000000000000000000000000000000fee"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 95a180cddac70eeba705e2bc7a177c61c1d00fc139e632f691c4d195516a1282 --timeout 20 --value 0 $ADDR_0000000000000000000000000000000000000FEE 0x60a7 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[refundReset] Processing transaction number 1636 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x84fade6975C5389F4fCBAB9DDCc90a482eaEf25e) to 0x000000000000000000000000000000000000da7a"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 95a180cddac70eeba705e2bc7a177c61c1d00fc139e632f691c4d195516a1282 --timeout 20 --value 0 $ADDR_000000000000000000000000000000000000DA7A | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[refundReset] Processing transaction number 1637 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x84fade6975C5389F4fCBAB9DDCc90a482eaEf25e) to 0x0000000000000000000000000000000000000fee"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 95a180cddac70eeba705e2bc7a177c61c1d00fc139e632f691c4d195516a1282 --timeout 20 --value 0 $ADDR_0000000000000000000000000000000000000FEE 0x01 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[refundReset] Processing transaction number 1638 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x84fade6975C5389F4fCBAB9DDCc90a482eaEf25e) to 0x000000000000000000000000000000000000da7a"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 95a180cddac70eeba705e2bc7a177c61c1d00fc139e632f691c4d195516a1282 --timeout 20 --value 0 $ADDR_000000000000000000000000000000000000DA7A | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[refundReset] Processing transaction number 1639 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x84fade6975C5389F4fCBAB9DDCc90a482eaEf25e) to 0x0000000000000000000000000000000000000fee"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 95a180cddac70eeba705e2bc7a177c61c1d00fc139e632f691c4d195516a1282 --timeout 20 --value 0 $ADDR_0000000000000000000000000000000000000FEE 0x00 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[refundReset] Processing transaction number 1640 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x84fade6975C5389F4fCBAB9DDCc90a482eaEf25e) to 0x000000000000000000000000000000000000da7a"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 95a180cddac70eeba705e2bc7a177c61c1d00fc139e632f691c4d195516a1282 --timeout 20 --value 0 $ADDR_000000000000000000000000000000000000DA7A | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[refundReset] Processing transaction number 1641 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x84fade6975C5389F4fCBAB9DDCc90a482eaEf25e) to 0x0000000000000000000000000000000000000fee"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 95a180cddac70eeba705e2bc7a177c61c1d00fc139e632f691c4d195516a1282 --timeout 20 --value 0 $ADDR_0000000000000000000000000000000000000FEE 0x0BAD | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[refundReset] Processing transaction number 1642 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x84fade6975C5389F4fCBAB9DDCc90a482eaEf25e) to 0x000000000000000000000000000000000000da7a"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 95a180cddac70eeba705e2bc7a177c61c1d00fc139e632f691c4d195516a1282 --timeout 20 --value 0 $ADDR_000000000000000000000000000000000000DA7A | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[refundReset] Processing transaction number 1643 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x84fade6975C5389F4fCBAB9DDCc90a482eaEf25e) to 0x0000000000000000000000000000000000ca1102"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 95a180cddac70eeba705e2bc7a177c61c1d00fc139e632f691c4d195516a1282 --timeout 20 --value 0 $ADDR_0000000000000000000000000000000000CA1102 0x60A7 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[refundReset] Processing transaction number 1644 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x84fade6975C5389F4fCBAB9DDCc90a482eaEf25e) to 0x000000000000000000000000000000000000da7a"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 95a180cddac70eeba705e2bc7a177c61c1d00fc139e632f691c4d195516a1282 --timeout 20 --value 0 $ADDR_000000000000000000000000000000000000DA7A | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[refundReset] Processing transaction number 1645 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x84fade6975C5389F4fCBAB9DDCc90a482eaEf25e) to 0x0000000000000000000000000000000000ca1102"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 95a180cddac70eeba705e2bc7a177c61c1d00fc139e632f691c4d195516a1282 --timeout 20 --value 0 $ADDR_0000000000000000000000000000000000CA1102 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[refundReset] Processing transaction number 1646 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x84fade6975C5389F4fCBAB9DDCc90a482eaEf25e) to 0x000000000000000000000000000000000000da7a"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 95a180cddac70eeba705e2bc7a177c61c1d00fc139e632f691c4d195516a1282 --timeout 20 --value 0 $ADDR_000000000000000000000000000000000000DA7A | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[refundReset] Processing transaction number 1647 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x84fade6975C5389F4fCBAB9DDCc90a482eaEf25e) to 0x0000000000000000000000000000000000000fee"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 95a180cddac70eeba705e2bc7a177c61c1d00fc139e632f691c4d195516a1282 --timeout 20 --value 0 $ADDR_0000000000000000000000000000000000000FEE 0x0BAD | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[refundReset] Processing transaction number 1648 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x84fade6975C5389F4fCBAB9DDCc90a482eaEf25e) to 0x000000000000000000000000000000000000da7a"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 95a180cddac70eeba705e2bc7a177c61c1d00fc139e632f691c4d195516a1282 --timeout 20 --value 0 $ADDR_000000000000000000000000000000000000DA7A | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[refundReset] Processing transaction number 1649 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x84fade6975C5389F4fCBAB9DDCc90a482eaEf25e) to 0x0000000000000000000000000000000000ca1103"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 95a180cddac70eeba705e2bc7a177c61c1d00fc139e632f691c4d195516a1282 --timeout 20 --value 0 $ADDR_0000000000000000000000000000000000CA1103 0x60A7 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[refundReset] Processing transaction number 1650 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x84fade6975C5389F4fCBAB9DDCc90a482eaEf25e) to 0x000000000000000000000000000000000000da7a"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 95a180cddac70eeba705e2bc7a177c61c1d00fc139e632f691c4d195516a1282 --timeout 20 --value 0 $ADDR_000000000000000000000000000000000000DA7A | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[refundReset] Processing transaction number 1651 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x84fade6975C5389F4fCBAB9DDCc90a482eaEf25e) to 0x0000000000000000000000000000000000ca1103"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 95a180cddac70eeba705e2bc7a177c61c1d00fc139e632f691c4d195516a1282 --timeout 20 --value 0 $ADDR_0000000000000000000000000000000000CA1103 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[refundReset] Processing transaction number 1652 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x84fade6975C5389F4fCBAB9DDCc90a482eaEf25e) to 0x000000000000000000000000000000000000da7a"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 95a180cddac70eeba705e2bc7a177c61c1d00fc139e632f691c4d195516a1282 --timeout 20 --value 0 $ADDR_000000000000000000000000000000000000DA7A | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[refundReset] Processing transaction number 1653 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x84fade6975C5389F4fCBAB9DDCc90a482eaEf25e) to 0x0000000000000000000000000000000000000fee"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 95a180cddac70eeba705e2bc7a177c61c1d00fc139e632f691c4d195516a1282 --timeout 20 --value 0 $ADDR_0000000000000000000000000000000000000FEE 0x0BAD | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[refundReset] Processing transaction number 1654 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x84fade6975C5389F4fCBAB9DDCc90a482eaEf25e) to 0x000000000000000000000000000000000000da7a"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 95a180cddac70eeba705e2bc7a177c61c1d00fc139e632f691c4d195516a1282 --timeout 20 --value 0 $ADDR_000000000000000000000000000000000000DA7A | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[refundReset] Processing transaction number 1655 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x84fade6975C5389F4fCBAB9DDCc90a482eaEf25e) to 0x0000000000000000000000000000000000ca1104"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 95a180cddac70eeba705e2bc7a177c61c1d00fc139e632f691c4d195516a1282 --timeout 20 --value 0 $ADDR_0000000000000000000000000000000000CA1104 0x60A7 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[refundReset] Processing transaction number 1656 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x84fade6975C5389F4fCBAB9DDCc90a482eaEf25e) to 0x000000000000000000000000000000000000da7a"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 95a180cddac70eeba705e2bc7a177c61c1d00fc139e632f691c4d195516a1282 --timeout 20 --value 0 $ADDR_000000000000000000000000000000000000DA7A | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[refundReset] Processing transaction number 1657 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x84fade6975C5389F4fCBAB9DDCc90a482eaEf25e) to 0x0000000000000000000000000000000000ca1104"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 95a180cddac70eeba705e2bc7a177c61c1d00fc139e632f691c4d195516a1282 --timeout 20 --value 0 $ADDR_0000000000000000000000000000000000CA1104 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[refundReset] Processing transaction number 1658 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x84fade6975C5389F4fCBAB9DDCc90a482eaEf25e) to 0x000000000000000000000000000000000000da7a"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 95a180cddac70eeba705e2bc7a177c61c1d00fc139e632f691c4d195516a1282 --timeout 20 --value 0 $ADDR_000000000000000000000000000000000000DA7A | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[refundReset] Processing transaction number 1659 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x84fade6975C5389F4fCBAB9DDCc90a482eaEf25e) to 0x0000000000000000000000000000000000000fee"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 95a180cddac70eeba705e2bc7a177c61c1d00fc139e632f691c4d195516a1282 --timeout 20 --value 0 $ADDR_0000000000000000000000000000000000000FEE 0x0BAD | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[refundReset] Processing transaction number 1660 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x84fade6975C5389F4fCBAB9DDCc90a482eaEf25e) to 0x000000000000000000000000000000000000da7a"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 95a180cddac70eeba705e2bc7a177c61c1d00fc139e632f691c4d195516a1282 --timeout 20 --value 0 $ADDR_000000000000000000000000000000000000DA7A | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[refundReset] Processing transaction number 1661 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x84fade6975C5389F4fCBAB9DDCc90a482eaEf25e) to 0x0000000000000000000000000000000000ca1105"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 95a180cddac70eeba705e2bc7a177c61c1d00fc139e632f691c4d195516a1282 --timeout 20 --value 0 $ADDR_0000000000000000000000000000000000CA1105 0x60A7 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[refundReset] Processing transaction number 1662 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x84fade6975C5389F4fCBAB9DDCc90a482eaEf25e) to 0x000000000000000000000000000000000000da7a"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 95a180cddac70eeba705e2bc7a177c61c1d00fc139e632f691c4d195516a1282 --timeout 20 --value 0 $ADDR_000000000000000000000000000000000000DA7A | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[refundReset] Processing transaction number 1663 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x84fade6975C5389F4fCBAB9DDCc90a482eaEf25e) to 0x0000000000000000000000000000000000ca1105"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 95a180cddac70eeba705e2bc7a177c61c1d00fc139e632f691c4d195516a1282 --timeout 20 --value 0 $ADDR_0000000000000000000000000000000000CA1105 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[refundReset] Processing transaction number 1664 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x84fade6975C5389F4fCBAB9DDCc90a482eaEf25e) to 0x000000000000000000000000000000000000da7a"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 95a180cddac70eeba705e2bc7a177c61c1d00fc139e632f691c4d195516a1282 --timeout 20 --value 0 $ADDR_000000000000000000000000000000000000DA7A | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[refundReset] Processing transaction number 1665 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x84fade6975C5389F4fCBAB9DDCc90a482eaEf25e) to 0x0000000000000000000000000000000000000fee"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 95a180cddac70eeba705e2bc7a177c61c1d00fc139e632f691c4d195516a1282 --timeout 20 --value 0 $ADDR_0000000000000000000000000000000000000FEE 0x0BAD | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[refundReset] Processing transaction number 1666 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x84fade6975C5389F4fCBAB9DDCc90a482eaEf25e) to 0x000000000000000000000000000000000000da7a"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 95a180cddac70eeba705e2bc7a177c61c1d00fc139e632f691c4d195516a1282 --timeout 20 --value 0 $ADDR_000000000000000000000000000000000000DA7A | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[refundReset] Processing transaction number 1667 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x84fade6975C5389F4fCBAB9DDCc90a482eaEf25e) to 0x0000000000000000000000000000000000ca1106"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 95a180cddac70eeba705e2bc7a177c61c1d00fc139e632f691c4d195516a1282 --timeout 20 --value 0 $ADDR_0000000000000000000000000000000000CA1106 0x60A7 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[refundReset] Processing transaction number 1668 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x84fade6975C5389F4fCBAB9DDCc90a482eaEf25e) to 0x000000000000000000000000000000000000da7a"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 95a180cddac70eeba705e2bc7a177c61c1d00fc139e632f691c4d195516a1282 --timeout 20 --value 0 $ADDR_000000000000000000000000000000000000DA7A | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[refundReset] Processing transaction number 1669 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x84fade6975C5389F4fCBAB9DDCc90a482eaEf25e) to 0x0000000000000000000000000000000000ca1106"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 95a180cddac70eeba705e2bc7a177c61c1d00fc139e632f691c4d195516a1282 --timeout 20 --value 0 $ADDR_0000000000000000000000000000000000CA1106 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[refundReset] Processing transaction number 1670 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x84fade6975C5389F4fCBAB9DDCc90a482eaEf25e) to 0x000000000000000000000000000000000000da7a"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 95a180cddac70eeba705e2bc7a177c61c1d00fc139e632f691c4d195516a1282 --timeout 20 --value 0 $ADDR_000000000000000000000000000000000000DA7A | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[refundReset] Processing transaction number 1671 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x84fade6975C5389F4fCBAB9DDCc90a482eaEf25e) to 0x000000000000000000000000000000000000da7a"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 95a180cddac70eeba705e2bc7a177c61c1d00fc139e632f691c4d195516a1282 --timeout 20 --value 0 $ADDR_000000000000000000000000000000000000DA7A 0xBEEF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

