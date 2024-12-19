# PRV_KEY for master sender 0x4d3595E41756DeDE07C1ED8F8fD5983b4b5E4b5f
PRV_KEY=cf0649296522bf4340a43b989c92ebe42bffd82ebf29c781534ea03ecd1398b9
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test suicideCoinbase (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/suicideCoinbaseFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+3003))
echo "[suicideCoinbase] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x5ba813E0A6939c79aaD993Bb6d13769B180EB35f) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x5ba813E0A6939c79aaD993Bb6d13769B180EB35f | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[suicideCoinbase] Creating receiver 0x8888f1f195afa192cfee860698584c030f4c9db1 with code and balance 1000..."
ADDR_8888F1F195AFA192CFEE860698584C030F4C9DB1=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000 --create 630000005d6012600039630000005d6000F360606040526000357c0100000000000000000000000000000000000000000000000000000000900480630c55699c146037576035565b005b60406004506042565b005b3373ffffffffffffffffffffffffffffffffffffffff16ff5b56 | jq -r .contractAddress)
echo $ADDR_8888F1F195AFA192CFEE860698584C030F4C9DB1

echo "[suicideCoinbase] Processing transaction number 767 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x5ba813E0A6939c79aaD993Bb6d13769B180EB35f) to 0x8888f1f195afa192cfee860698584c030f4c9db1"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 8902855fe5e3fad470fa80d74ac4b6db0a57626fecc945400701a39e8377a1fa --timeout 20 --value 1001 $ADDR_8888F1F195AFA192CFEE860698584C030F4C9DB1 0x0c55699c | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[suicideCoinbase] Processing transaction number 768 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x5ba813E0A6939c79aaD993Bb6d13769B180EB35f) to 0x0000000000000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 8902855fe5e3fad470fa80d74ac4b6db0a57626fecc945400701a39e8377a1fa --timeout 20 --value 1000 0x0000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[suicideCoinbase] Processing transaction number 769 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x5ba813E0A6939c79aaD993Bb6d13769B180EB35f) to 0x0000000000000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 8902855fe5e3fad470fa80d74ac4b6db0a57626fecc945400701a39e8377a1fa --timeout 20 --value 1002 0x0000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

