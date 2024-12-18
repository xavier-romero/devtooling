# PRV_KEY for master sender 0x6c6B8C4c6AA81434023AaEd2A3fE60656f93A633
PRV_KEY=912d312718901a281635fea519b9db78a0cf529609f1cebbf6ea3a40d848f98c
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test ZeroValue_TransactionCALL_ToEmpty_OOGRevert_Paris (src/BlockchainTestsFiller/InvalidBlocks/bcStateTests/ZeroValue_TransactionCALL_ToEmpty_OOGRevert_ParisFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[ZeroValue_TransactionCALL_ToEmpty_OOGRevert_Paris] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x4EB59c4BA68244c21bC03f13B8Fa94339CDb0F00) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x4EB59c4BA68244c21bC03f13B8Fa94339CDb0F00 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[ZeroValue_TransactionCALL_ToEmpty_OOGRevert_Paris] Processing transaction number 122 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x4EB59c4BA68244c21bC03f13B8Fa94339CDb0F00) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 3a5a5489ce382a4923c64d1a27830f3aa83986f6ec6093ae3bd99e954cdfee9f --timeout 20 --value 0 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

