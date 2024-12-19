# PRV_KEY for master sender 0xEbBc40a29799a362B2938e368A1BddAC55f32471
PRV_KEY=506955c1a6d2f94c48cbe37bb0cff0b2c6d07ce5b2f7c8106a6cb037c6b844b8
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test valCausesOOF (src/BlockchainTestsFiller/InvalidBlocks/bcEIP1559/valCausesOOFFiller.yml)"

AMOUNT=$((2*150000*3*$GAS_PRICE+0))
echo "[valCausesOOF] Funding sender 0x12c76d0919D86f02524ec28c72236F1174162779(remapped to 0xf3F48386ADE88D92F81fFB05fB7ACb28050eD116) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xf3F48386ADE88D92F81fFB05fB7ACb28050eD116 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+1))
echo "[valCausesOOF] Funding sender 0x9B614ea711B30B3D54A1c45d2C6f9027EA696FE0(remapped to 0x04668E5be6e85db691b7867A3748B392C0eE2c3E) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x04668E5be6e85db691b7867A3748B392C0eE2c3E | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+50000000))
echo "[valCausesOOF] Funding sender 0x808338b1B333587960923cb3dEf6eC3069132eCD(remapped to 0x9979f4E2A94F1a279736E708A30a5e5b2808eB0a) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x9979f4E2A94F1a279736E708A30a5e5b2808eB0a | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+100000002))
echo "[valCausesOOF] Funding sender 0x0FaabbEc1CF7Bf8aE6369c53d56793aaf5421a85(remapped to 0xF0a40a605D131D1B0db78aa8e33DA08b3A1e77De) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xF0a40a605D131D1B0db78aa8e33DA08b3A1e77De | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+180000001))
echo "[valCausesOOF] Funding sender 0x1355D451e77E62FBE82194DF153f28754AbD5172(remapped to 0x563a14Ce29C2308BBe76F3DcBd0ffa314737091c) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x563a14Ce29C2308BBe76F3DcBd0ffa314737091c | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+20000001))
echo "[valCausesOOF] Funding sender 0x673585130E6dAbA3ce6ED8E33541835f95a7a5d9(remapped to 0x928E904a7b07A543302C22Fcd7424bFbea18DA9d) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x928E904a7b07A543302C22Fcd7424bFbea18DA9d | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*2*$GAS_PRICE+20000001))
echo "[valCausesOOF] Funding sender 0x1Fa60939bB376BF080e6C4F3e4544dAD8284331d(remapped to 0xA72c041E8FF04d817C99c7556C9Ee90cCC81Edb9) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xA72c041E8FF04d817C99c7556C9Ee90cCC81Edb9 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+10000))
echo "[valCausesOOF] Funding sender 0x40Fe9DDfC9aE9EB172F88a137432CC04C01CA5e5(remapped to 0x0f5e97dA02774fC386C55B1D1f5f09855C0C7Fd1) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x0f5e97dA02774fC386C55B1D1f5f09855C0C7Fd1 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+10000))
echo "[valCausesOOF] Funding sender 0xe498FbCc6667a818CbE096c503E64Bbd6207EA18(remapped to 0xCDCBe850666C46137392Cb1d2fBFC7B6ebd97606) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xCDCBe850666C46137392Cb1d2fBFC7B6ebd97606 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*3*$GAS_PRICE+900000000))
echo "[valCausesOOF] Funding sender 0xbC6C9ab197Ffd3CE7421DdcC0721959814b50826(remapped to 0xb1e008759a8B490c7a7f9E7ab4b93f9bEC732f49) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xb1e008759a8B490c7a7f9E7ab4b93f9bEC732f49 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[valCausesOOF] Creating receiver 0xcccccccccccccccccccccccccccccccccccccccc with code and balance 1099511627776..."
ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1099511627776 --create 6300000020601260003963000000206000F36004355b6000811115601a576160a781556001810390506003565b5033313355 | jq -r .contractAddress)
echo $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

echo "[valCausesOOF] Processing transaction number 937 from 0x12c76d0919D86f02524ec28c72236F1174162779(remapped to 0xf3F48386ADE88D92F81fFB05fB7ACb28050eD116) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d168942a53642a050d84223a05646f0571a6e4ff2fc9dbc6a14551fdd5d67c1e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000002 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[valCausesOOF] Processing transaction number 938 from 0x12c76d0919D86f02524ec28c72236F1174162779(remapped to 0xf3F48386ADE88D92F81fFB05fB7ACb28050eD116) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d168942a53642a050d84223a05646f0571a6e4ff2fc9dbc6a14551fdd5d67c1e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000002 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[valCausesOOF] Processing transaction number 939 from 0x12c76d0919D86f02524ec28c72236F1174162779(remapped to 0xf3F48386ADE88D92F81fFB05fB7ACb28050eD116) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d168942a53642a050d84223a05646f0571a6e4ff2fc9dbc6a14551fdd5d67c1e --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000002 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[valCausesOOF] Processing transaction number 940 from 0x9B614ea711B30B3D54A1c45d2C6f9027EA696FE0(remapped to 0x04668E5be6e85db691b7867A3748B392C0eE2c3E) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 9ec7072eb3177391c4935099c4cd055c9545a92f10e86e8f1e8b87444ca6c2dd --timeout 20 --value 1 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000002 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[valCausesOOF] Processing transaction number 941 from 0x808338b1B333587960923cb3dEf6eC3069132eCD(remapped to 0x9979f4E2A94F1a279736E708A30a5e5b2808eB0a) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 3a93b3409a19e90bb95729d7cf5eeb616b8eeab5659c892f8478f3c23ed0fc63 --timeout 20 --value 50000000 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000002 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[valCausesOOF] Processing transaction number 942 from 0x0FaabbEc1CF7Bf8aE6369c53d56793aaf5421a85(remapped to 0xF0a40a605D131D1B0db78aa8e33DA08b3A1e77De) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ade53ebd4b0025f32fad7c3e473ca2e942b74d7a677e6c30b719eadd9702ff2c --timeout 20 --value 50000001 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000002 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[valCausesOOF] Processing transaction number 943 from 0x0FaabbEc1CF7Bf8aE6369c53d56793aaf5421a85(remapped to 0xF0a40a605D131D1B0db78aa8e33DA08b3A1e77De) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key ade53ebd4b0025f32fad7c3e473ca2e942b74d7a677e6c30b719eadd9702ff2c --timeout 20 --value 50000001 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000002 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[valCausesOOF] Processing transaction number 944 from 0x1355D451e77E62FBE82194DF153f28754AbD5172(remapped to 0x563a14Ce29C2308BBe76F3DcBd0ffa314737091c) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d03831fb71e33bed8292ef81dec96aa9efaa5f0d51dc89b3620288f6554960ba --timeout 20 --value 90000001 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000002 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[valCausesOOF] Processing transaction number 945 from 0x1355D451e77E62FBE82194DF153f28754AbD5172(remapped to 0x563a14Ce29C2308BBe76F3DcBd0ffa314737091c) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d03831fb71e33bed8292ef81dec96aa9efaa5f0d51dc89b3620288f6554960ba --timeout 20 --value 90000000 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000002 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[valCausesOOF] Processing transaction number 946 from 0x673585130E6dAbA3ce6ED8E33541835f95a7a5d9(remapped to 0x928E904a7b07A543302C22Fcd7424bFbea18DA9d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 9c439538cd6f0ea8c8c2884d8405c1704bb40e7dec323e764f727e6838d33ffe --timeout 20 --value 10000001 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000002 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[valCausesOOF] Processing transaction number 947 from 0x673585130E6dAbA3ce6ED8E33541835f95a7a5d9(remapped to 0x928E904a7b07A543302C22Fcd7424bFbea18DA9d) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 9c439538cd6f0ea8c8c2884d8405c1704bb40e7dec323e764f727e6838d33ffe --timeout 20 --value 10000000 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000002 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[valCausesOOF] Processing transaction number 948 from 0x1Fa60939bB376BF080e6C4F3e4544dAD8284331d(remapped to 0xA72c041E8FF04d817C99c7556C9Ee90cCC81Edb9) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 455527e8868357eb8c45a63554a6077102e1350ff6990a8c182c1e12dc82ad11 --timeout 20 --value 10000001 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000002 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[valCausesOOF] Processing transaction number 949 from 0x1Fa60939bB376BF080e6C4F3e4544dAD8284331d(remapped to 0xA72c041E8FF04d817C99c7556C9Ee90cCC81Edb9) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 455527e8868357eb8c45a63554a6077102e1350ff6990a8c182c1e12dc82ad11 --timeout 20 --value 10000000 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000002 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[valCausesOOF] Processing transaction number 950 from 0x40Fe9DDfC9aE9EB172F88a137432CC04C01CA5e5(remapped to 0x0f5e97dA02774fC386C55B1D1f5f09855C0C7Fd1) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 9dec8a3bc65200882beae8017c55b2f1ee1274471af9f82610d8e5960a57cca3 --timeout 20 --value 10000 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000002 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[valCausesOOF] Processing transaction number 951 from 0xe498FbCc6667a818CbE096c503E64Bbd6207EA18(remapped to 0xCDCBe850666C46137392Cb1d2fBFC7B6ebd97606) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 9b7b33cfc20aef6ceba030f7b53f7b11f910318700719c17021de952aad35fc4 --timeout 20 --value 10000 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000002 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[valCausesOOF] Processing transaction number 952 from 0xbC6C9ab197Ffd3CE7421DdcC0721959814b50826(remapped to 0xb1e008759a8B490c7a7f9E7ab4b93f9bEC732f49) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 7a11a36dadb7dc700c23b81d8c8b113d957dace4d2e27f70472de3fb54d9cdcf --timeout 20 --value 300000000 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000002 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[valCausesOOF] Processing transaction number 953 from 0xbC6C9ab197Ffd3CE7421DdcC0721959814b50826(remapped to 0xb1e008759a8B490c7a7f9E7ab4b93f9bEC732f49) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 7a11a36dadb7dc700c23b81d8c8b113d957dace4d2e27f70472de3fb54d9cdcf --timeout 20 --value 300000000 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000002 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[valCausesOOF] Processing transaction number 954 from 0xbC6C9ab197Ffd3CE7421DdcC0721959814b50826(remapped to 0xb1e008759a8B490c7a7f9E7ab4b93f9bEC732f49) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 7a11a36dadb7dc700c23b81d8c8b113d957dace4d2e27f70472de3fb54d9cdcf --timeout 20 --value 300000000 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC 693c61390000000000000000000000000000000000000000000000000000000000000002 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

