# PRV_KEY for master sender 0x32f05937c10527Fb00F6971C1c8dF53886B2552B
PRV_KEY=e5423ccd8eee03637ab2bcb8de10ff01ce49eacfdc22cc37acf4ace523434619
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest140BC (src/BlockchainTestsFiller/ValidBlocks/bcRandomBlockhashTest/randomStatetest140BCFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+1574880944))
echo "[randomStatetest140BC] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x9F6c58F53A21851B0B6C6a690EF57Aa53dE613F1) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x9F6c58F53A21851B0B6C6a690EF57Aa53dE613F1 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest140BC] Creating receiver 0x000f3df6d732807ef1319fb7b8bb8522d0beac02 with code and balance 0..."
ADDR_000F3DF6D732807EF1319FB7B8BB8522D0BEAC02=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6103b66103b6556103e86103e85561079e61079e556300000061602760003963000000616000F33373fffffffffffffffffffffffffffffffffffffffe14604d57602036146024575f5ffd5b5f35801560495762001fff810690815414603c575f5ffd5b62001fff01545f5260205ff35b5f5ffd5b62001fff42064281555f359062001fff015500 | jq -r .contractAddress)
echo $ADDR_000F3DF6D732807EF1319FB7B8BB8522D0BEAC02

echo "[randomStatetest140BC] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 0..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 63000000dd601260003963000000dd6000F37f000000000000000000000000945304eb96065b2a98b57a48a06ae28d285a71b57ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe447f0000000000000000000000000000000000000000000000000000000000000001407ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe7f000000000000000000000000945304eb96065b2a98b57a48a06ae28d285a71b57f000000000000000000000000ffffffffffffffffffffffffffffffffffffffff6f2d6f4162696d5767078708977c37545560005155 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest140BC] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest140BC] Processing transaction number 642 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x9F6c58F53A21851B0B6C6a690EF57Aa53dE613F1) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key d7118b204e586c759c7d8511c406c30b1b3f08879e32aaa676638f6236e9dbfe --timeout 20 --value 1574880944 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x7f000000000000000000000000945304eb96065b2a98b57a48a06ae28d285a71b57ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe447f0000000000000000000000000000000000000000000000000000000000000001407ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe7f000000000000000000000000945304eb96065b2a98b57a48a06ae28d285a71b57f000000000000000000000000ffffffffffffffffffffffffffffffffffffffff6f2d6f4162696d5767078708977c3754 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

