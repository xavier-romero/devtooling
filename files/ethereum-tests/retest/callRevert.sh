# PRV_KEY for master sender 0xf6DAAbE67836e398C328C8a40Ea31e6DdD6fA8f7
PRV_KEY=f9b3493c05291323fb8f855cdbf323ab8cb32ea17d0686617951c6713933d66c
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test callRevert (src/BlockchainTestsFiller/ValidBlocks/bcValidBlockTest/callRevertFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+10))
echo "[callRevert] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE1Bf4A6cAF51Ba81Fa558660D6B9e035e6f903b3) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xE1Bf4A6cAF51Ba81Fa558660D6B9e035e6f903b3 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[callRevert] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 10000000000..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 10000000000 --create 6300000006601260003963000000066000F360006000fd00 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[callRevert] Processing transaction number 711 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xE1Bf4A6cAF51Ba81Fa558660D6B9e035e6f903b3) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key b50b26f4535f161ac985fc2659cc3e37407a74f91357a97e6442e6dd78d7b980 --timeout 20 --value 10 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

