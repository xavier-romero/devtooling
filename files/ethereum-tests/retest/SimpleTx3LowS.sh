# PRV_KEY for master sender 0x886Ca92a0f3725C04dDB51906969643d376fDAeb
PRV_KEY=8f33424cd851a421b4984aa256cb69fb3044178c51063a5a8ddcc41d1a737e5a
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test SimpleTx3LowS (src/BlockchainTestsFiller/ValidBlocks/bcValidBlockTest/SimpleTx3LowSFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+10))
echo "[SimpleTx3LowS] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8683FBCA957D6dD5ac0aCd1A370Cb49Dc9252dBD) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x8683FBCA957D6dD5ac0aCd1A370Cb49Dc9252dBD | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[SimpleTx3LowS] Processing transaction number 695 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8683FBCA957D6dD5ac0aCd1A370Cb49Dc9252dBD) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 03cfac077eb98c76b6fd834884f2c5d8a0142aa9c19b1edc5f2f980da5e8be23 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

