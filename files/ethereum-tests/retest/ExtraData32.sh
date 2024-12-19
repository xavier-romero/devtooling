# PRV_KEY for master sender 0xc2476EDb5AC7f25F22129DBB6ccdbE8a5C4714e1
PRV_KEY=ccfb733128bfab8d9effece324e8a6d484f8b06d45bbb6ca8f601a58ffad7f84
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test ExtraData32 (src/BlockchainTestsFiller/ValidBlocks/bcValidBlockTest/ExtraData32Filler.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+5000000000))
echo "[ExtraData32] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0E6A5Bb375E06Eb1D7Db3638D25dd786e6e9a637) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x0E6A5Bb375E06Eb1D7Db3638D25dd786e6e9a637 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[ExtraData32] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 100..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100 --create 630000002c6012600039630000002c6000F37fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff600052600060206000a100 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[ExtraData32] Processing transaction number 690 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0E6A5Bb375E06Eb1D7Db3638D25dd786e6e9a637) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 589838216482f0ee5870e1f83cf7a107f1249244d899906b033c16405ef4135e --timeout 20 --value 5000000000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

