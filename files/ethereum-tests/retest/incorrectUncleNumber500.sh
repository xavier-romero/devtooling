# PRV_KEY for master sender 0x17046290A40D9F4563067D559fEED8Ad5F4744d7
PRV_KEY=470b0f78616042604e4000dae2a8a58261b3561ac14a78dca187cafa036c5654
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test incorrectUncleNumber500 (src/BlockchainTestsFiller/InvalidBlocks/bcUncleHeaderValidity/incorrectUncleNumber500Filler.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[incorrectUncleNumber500] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xcD619a7586fdd81881bDDe098F33975c96956Bf5) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xcD619a7586fdd81881bDDe098F33975c96956Bf5 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[incorrectUncleNumber500] Processing transaction number 67 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xcD619a7586fdd81881bDDe098F33975c96956Bf5) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 476faa943a0683fdf742a2d9539cc41d46595b0c69051f525aa9060b8a6a3c22 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[incorrectUncleNumber500] Processing transaction number 68 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xcD619a7586fdd81881bDDe098F33975c96956Bf5) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 476faa943a0683fdf742a2d9539cc41d46595b0c69051f525aa9060b8a6a3c22 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[incorrectUncleNumber500] Processing transaction number 69 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xcD619a7586fdd81881bDDe098F33975c96956Bf5) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 476faa943a0683fdf742a2d9539cc41d46595b0c69051f525aa9060b8a6a3c22 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

