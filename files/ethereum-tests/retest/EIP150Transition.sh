# PRV_KEY for master sender 0x577479fFfAFe88bD337cA8Ce7AEC4FD1b25dFb2f
PRV_KEY=62455c8eec553e39e666f4a5b2c7af1c51a9176a0b2d85a29fae02547a927f09
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test EIP150Transition (src/BlockchainTestsFiller/TransitionTests/bcHomesteadToEIP150/EIP150TransitionFiller.json)"

AMOUNT=$((2*150000*13*$GAS_PRICE+31))
echo "[EIP150Transition] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE4a842189eCC97064e330b0A29f6C588dFbB5818) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xE4a842189eCC97064e330b0A29f6C588dFbB5818 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[EIP150Transition] Creating receiver 0x1000000000000000000000000000000000000010 with code and balance 111..."
ADDR_1000000000000000000000000000000000000010=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 111 --create 6300000020601260003963000000206000F31122334455667788991011121314151617181920212223242526272829303132 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000010

echo "[EIP150Transition] Creating receiver 0x1000000000000000000000000000000000000011 with code and balance 0..."
ADDR_1000000000000000000000000000000000000011=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6300000006601260003963000000066000F3601160645500 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000011

echo "[EIP150Transition] Creating receiver 0x1000000000000000000000000000000000000012 with code and balance 10000..."
ADDR_1000000000000000000000000000000000000012=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 10000 --create 6300000017601260003963000000176000F3731000000000000000000000000000000000000002ff00 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000012

echo "[EIP150Transition] Creating receiver 0x1000000000000000000000000000000000000013 with code and balance 10000..."
ADDR_1000000000000000000000000000000000000013=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 10000 --create 6300000017601260003963000000176000F3731000000000000000000000000000000000000003ff00 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000013

echo "[EIP150Transition] Creating receiver 0x1000000000000000000000000000000000000001 with code and balance 10000000000..."
ADDR_1000000000000000000000000000000000000001=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 10000000000 --create 6012600055630000010b6017600039630000010b6000F37310000000000000000000000000000000000000103b6001556014600060007310000000000000000000000000000000000000103c60005160025560005460045560006000600060006001731000000000000000000000000000000000000011617530f160055560006000600060006001731000000000000000000000000000000000000011617530f26006556000600060006000731000000000000000000000000000000000000011617530f460075560006000600060006000731000000000000000000000000000000000000012617530f160085573a94f5374fce5edbc8e2a8697c15331677e6ebf0b316003555a600a55635a60fd556000526004601c6000f0600b555a60095500 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000001

echo "[EIP150Transition] Creating receiver 0x1000000000000000000000000000000000000101 with code and balance 10000000000..."
ADDR_1000000000000000000000000000000000000101=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 10000000000 --create 6012600055630000010b6017600039630000010b6000F37310000000000000000000000000000000000000103b6001556014600060007310000000000000000000000000000000000000103c60005160025560005460045560006000600060006001731000000000000000000000000000000000000011617530f160055560006000600060006001731000000000000000000000000000000000000011617530f26006556000600060006000731000000000000000000000000000000000000011617530f460075560006000600060006000731000000000000000000000000000000000000013617530f160085573a94f5374fce5edbc8e2a8697c15331677e6ebf0b316003555a600a55635a60fd556000526004601c6000f0600b555a60095500 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000101

echo "[EIP150Transition] Creating receiver 0x1000000000000000000000000000000000000002 with code and balance 0..."
ADDR_1000000000000000000000000000000000000002=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6300000053601260003963000000536000F35a60085560006000600060006000731000000000000000000000000000000000000003620927c0f160095560006000600060006000731000000000000000000000000000000000000003620927c0f2600a5500 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000002

echo "[EIP150Transition] Creating receiver 0x1000000000000000000000000000000000000003 with code and balance 0..."
ADDR_1000000000000000000000000000000000000003=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6300000006601260003963000000066000F3601260005500 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000003

echo "[EIP150Transition] Creating receiver 0x1000000000000000000000000000000000000102 with code and balance 0..."
ADDR_1000000000000000000000000000000000000102=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6300000053601260003963000000536000F35a60085560006000600060006000731000000000000000000000000000000000000103620927c0f160095560006000600060006000731000000000000000000000000000000000000103620927c0f2600a5500 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000102

echo "[EIP150Transition] Creating receiver 0x1000000000000000000000000000000000000103 with code and balance 0..."
ADDR_1000000000000000000000000000000000000103=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6300000006601260003963000000066000F3601260005500 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000103

echo "[EIP150Transition] Creating receiver 0x1000000000000000000000000000000000000004 with code and balance 0..."
ADDR_1000000000000000000000000000000000000004=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 630000002a6012600039630000002a6000F35a6008556000600060006000731000000000000000000000000000000000000005620927c0f460095500 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000004

echo "[EIP150Transition] Creating receiver 0x1000000000000000000000000000000000000005 with code and balance 0..."
ADDR_1000000000000000000000000000000000000005=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6300000006601260003963000000066000F3601260005500 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000005

echo "[EIP150Transition] Creating receiver 0x1000000000000000000000000000000000000104 with code and balance 0..."
ADDR_1000000000000000000000000000000000000104=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 630000002a6012600039630000002a6000F35a6008556000600060006000731000000000000000000000000000000000000105620927c0f460095500 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000104

echo "[EIP150Transition] Creating receiver 0x1000000000000000000000000000000000000105 with code and balance 0..."
ADDR_1000000000000000000000000000000000000105=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6300000006601260003963000000066000F3601260005500 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000105

echo "[EIP150Transition] Creating receiver 0x1000000000000000000000000000000000000006 with code and balance 0..."
ADDR_1000000000000000000000000000000000000006=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 630000002c6012600039630000002c6000F35a6008556000600060006000600073100000000000000000000000000000000000000762030d40f160095500 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000006

echo "[EIP150Transition] Creating receiver 0x1000000000000000000000000000000000000007 with code and balance 0..."
ADDR_1000000000000000000000000000000000000007=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 630000002c6012600039630000002c6000F35a60085560006000600060006000731000000000000000000000000000000000000008620927c0f160095500 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000007

echo "[EIP150Transition] Creating receiver 0x1000000000000000000000000000000000000008 with code and balance 0..."
ADDR_1000000000000000000000000000000000000008=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6300000005601260003963000000056000F35a60085500 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000008

echo "[EIP150Transition] Creating receiver 0x1000000000000000000000000000000000000106 with code and balance 0..."
ADDR_1000000000000000000000000000000000000106=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 630000002c6012600039630000002c6000F35a6008556000600060006000600073100000000000000000000000000000000000010762030d40f160095500 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000106

echo "[EIP150Transition] Creating receiver 0x1000000000000000000000000000000000000107 with code and balance 0..."
ADDR_1000000000000000000000000000000000000107=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 630000002c6012600039630000002c6000F35a60085560006000600060006000731000000000000000000000000000000000000108620927c0f160095500 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000107

echo "[EIP150Transition] Creating receiver 0x1000000000000000000000000000000000000108 with code and balance 0..."
ADDR_1000000000000000000000000000000000000108=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6300000005601260003963000000056000F35a60085500 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000108

echo "[EIP150Transition] Creating receiver 0x1000000000000000000000000000000000000109 with code and balance 0..."
ADDR_1000000000000000000000000000000000000109=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 630000002c6012600039630000002c6000F35a60085560006000600060006000731000000000000000000000000000000000000110620927c0f160095500 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000109

echo "[EIP150Transition] Creating receiver 0x1000000000000000000000000000000000000110 with code and balance 0..."
ADDR_1000000000000000000000000000000000000110=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 630000002c6012600039630000002c6000F35a60085560006000600060006000731000000000000000000000000000000000000111620927c0f160095500 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000110

echo "[EIP150Transition] Creating receiver 0x1000000000000000000000000000000000000111 with code and balance 0..."
ADDR_1000000000000000000000000000000000000111=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 630000001d6012600039630000001d6000F35a600855600060006000f050600060006000f0505a6009555a600a5500 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000111

echo "[EIP150Transition] Creating receiver 0x1000000000000000000000000000000000000112 with code and balance 0..."
ADDR_1000000000000000000000000000000000000112=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 630000002c6012600039630000002c6000F35a60085560006000600060006000731000000000000000000000000000000000000113620927c0f160095500 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000112

echo "[EIP150Transition] Creating receiver 0x1000000000000000000000000000000000000113 with code and balance 0..."
ADDR_1000000000000000000000000000000000000113=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 630000002c6012600039630000002c6000F35a60085560006000600060006000731000000000000000000000000000000000000114620927c0f160095500 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000113

echo "[EIP150Transition] Creating receiver 0x1000000000000000000000000000000000000114 with code and balance 0..."
ADDR_1000000000000000000000000000000000000114=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 630000000d6012600039630000000d6000F35a6008555a6009555a600a5500 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000114

echo "[EIP150Transition] Creating receiver 0x1000000000000000000000000000000000000015 with code and balance 0..."
ADDR_1000000000000000000000000000000000000015=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6300000029601260003963000000296000F36000600060006000600073100000000000000000000000000000000000001661ea60f1505a60015500 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000015

echo "[EIP150Transition] Creating receiver 0x1000000000000000000000000000000000000016 with code and balance 0..."
ADDR_1000000000000000000000000000000000000016=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6300000017601260003963000000176000F3732000000000000000000000000000000000000015ff00 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000016

echo "[EIP150Transition] Creating receiver 0x1000000000000000000000000000000000000115 with code and balance 0..."
ADDR_1000000000000000000000000000000000000115=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6300000029601260003963000000296000F36000600060006000600073100000000000000000000000000000000000011661ea60f1505a60015500 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000115

echo "[EIP150Transition] Creating receiver 0x1000000000000000000000000000000000000116 with code and balance 0..."
ADDR_1000000000000000000000000000000000000116=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6300000017601260003963000000176000F3732000000000000000000000000000000000000115ff00 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000116

echo "[EIP150Transition] Creating receiver 0x1000000000000000000000000000000000000117 with code and balance 0..."
ADDR_1000000000000000000000000000000000000117=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6300000029601260003963000000296000F36000600060006000600073100000000000000000000000000000000000011861ea60f1505a60015500 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000117

echo "[EIP150Transition] Creating receiver 0x1000000000000000000000000000000000000118 with code and balance 0..."
ADDR_1000000000000000000000000000000000000118=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6300000017601260003963000000176000F3731000000000000000000000000000000000000117ff00 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000118

echo "[EIP150Transition] Processing transaction number 863 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE4a842189eCC97064e330b0A29f6C588dFbB5818) to 0x1000000000000000000000000000000000000001"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 769c0604fc7c44a2e97c8d6d20678d23b0dc8a44cfb6cd44b37b65c8c0c9563a --timeout 20 --value 10 $ADDR_1000000000000000000000000000000000000001 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[EIP150Transition] Processing transaction number 864 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE4a842189eCC97064e330b0A29f6C588dFbB5818) to 0x1000000000000000000000000000000000000002"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 769c0604fc7c44a2e97c8d6d20678d23b0dc8a44cfb6cd44b37b65c8c0c9563a --timeout 20 --value 1 $ADDR_1000000000000000000000000000000000000002 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[EIP150Transition] Processing transaction number 865 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE4a842189eCC97064e330b0A29f6C588dFbB5818) to 0x1000000000000000000000000000000000000004"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 769c0604fc7c44a2e97c8d6d20678d23b0dc8a44cfb6cd44b37b65c8c0c9563a --timeout 20 --value 1 $ADDR_1000000000000000000000000000000000000004 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[EIP150Transition] Processing transaction number 866 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE4a842189eCC97064e330b0A29f6C588dFbB5818) to 0x1000000000000000000000000000000000000006"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 769c0604fc7c44a2e97c8d6d20678d23b0dc8a44cfb6cd44b37b65c8c0c9563a --timeout 20 --value 1 $ADDR_1000000000000000000000000000000000000006 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[EIP150Transition] Processing transaction number 867 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE4a842189eCC97064e330b0A29f6C588dFbB5818) to 0x1000000000000000000000000000000000000015"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 769c0604fc7c44a2e97c8d6d20678d23b0dc8a44cfb6cd44b37b65c8c0c9563a --timeout 20 --value 1 $ADDR_1000000000000000000000000000000000000015 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[EIP150Transition] Processing transaction number 868 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE4a842189eCC97064e330b0A29f6C588dFbB5818) to 0x1000000000000000000000000000000000000101"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 769c0604fc7c44a2e97c8d6d20678d23b0dc8a44cfb6cd44b37b65c8c0c9563a --timeout 20 --value 10 $ADDR_1000000000000000000000000000000000000101 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[EIP150Transition] Processing transaction number 869 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE4a842189eCC97064e330b0A29f6C588dFbB5818) to 0x1000000000000000000000000000000000000102"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 769c0604fc7c44a2e97c8d6d20678d23b0dc8a44cfb6cd44b37b65c8c0c9563a --timeout 20 --value 1 $ADDR_1000000000000000000000000000000000000102 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[EIP150Transition] Processing transaction number 870 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE4a842189eCC97064e330b0A29f6C588dFbB5818) to 0x1000000000000000000000000000000000000104"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 769c0604fc7c44a2e97c8d6d20678d23b0dc8a44cfb6cd44b37b65c8c0c9563a --timeout 20 --value 1 $ADDR_1000000000000000000000000000000000000104 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[EIP150Transition] Processing transaction number 871 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE4a842189eCC97064e330b0A29f6C588dFbB5818) to 0x1000000000000000000000000000000000000106"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 769c0604fc7c44a2e97c8d6d20678d23b0dc8a44cfb6cd44b37b65c8c0c9563a --timeout 20 --value 1 $ADDR_1000000000000000000000000000000000000106 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[EIP150Transition] Processing transaction number 872 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE4a842189eCC97064e330b0A29f6C588dFbB5818) to 0x1000000000000000000000000000000000000109"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 769c0604fc7c44a2e97c8d6d20678d23b0dc8a44cfb6cd44b37b65c8c0c9563a --timeout 20 --value 1 $ADDR_1000000000000000000000000000000000000109 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[EIP150Transition] Processing transaction number 873 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE4a842189eCC97064e330b0A29f6C588dFbB5818) to 0x1000000000000000000000000000000000000112"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 769c0604fc7c44a2e97c8d6d20678d23b0dc8a44cfb6cd44b37b65c8c0c9563a --timeout 20 --value 1 $ADDR_1000000000000000000000000000000000000112 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[EIP150Transition] Processing transaction number 874 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE4a842189eCC97064e330b0A29f6C588dFbB5818) to 0x1000000000000000000000000000000000000115"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 769c0604fc7c44a2e97c8d6d20678d23b0dc8a44cfb6cd44b37b65c8c0c9563a --timeout 20 --value 1 $ADDR_1000000000000000000000000000000000000115 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[EIP150Transition] Processing transaction number 875 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE4a842189eCC97064e330b0A29f6C588dFbB5818) to 0x1000000000000000000000000000000000000117"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 769c0604fc7c44a2e97c8d6d20678d23b0dc8a44cfb6cd44b37b65c8c0c9563a --timeout 20 --value 1 $ADDR_1000000000000000000000000000000000000117 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi
