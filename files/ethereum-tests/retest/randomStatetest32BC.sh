# PRV_KEY for master sender 0xB323F8BCB790d0E1cE909CD432262A722FfdABFc
PRV_KEY=de1aa4b1f3bba201fe75b6e571dde7bcee48bf8820a2f83331c0b3b64f807ccb
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest32BC (src/BlockchainTestsFiller/ValidBlocks/bcRandomBlockhashTest/randomStatetest32BCFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+100000))
echo "[randomStatetest32BC] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x08d05FF8f44D5361887a773304Db3A3d4B07d15b) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x08d05FF8f44D5361887a773304Db3A3d4B07d15b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest32BC] Creating receiver 0x000f3df6d732807ef1319fb7b8bb8522d0beac02 with code and balance 0..."
ADDR_000F3DF6D732807EF1319FB7B8BB8522D0BEAC02=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6103b66103b6556103e86103e85561079e61079e556300000061602760003963000000616000F33373fffffffffffffffffffffffffffffffffffffffe14604d57602036146024575f5ffd5b5f35801560495762001fff810690815414603c575f5ffd5b62001fff01545f5260205ff35b5f5ffd5b62001fff42064281555f359062001fff015500 | jq -r .contractAddress)
echo $ADDR_000F3DF6D732807EF1319FB7B8BB8522D0BEAC02

echo "[randomStatetest32BC] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 1000000000000000000..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000000000000000000 --create 630000000a6012600039630000000a6000F3434142433a424440f26f | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest32BC] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest32BC] Processing transaction number 608 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x08d05FF8f44D5361887a773304Db3A3d4B07d15b) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key c90c76c76cd1ca74b7b3d1de30e6b6a7f4902e24286d06bec03be10848f984d0 --timeout 20 --value 100000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x42 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

