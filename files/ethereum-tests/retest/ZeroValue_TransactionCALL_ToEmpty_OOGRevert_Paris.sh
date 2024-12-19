# PRV_KEY for master sender 0x95AF9a669f542ab6dFD000d5AC62c90555F0CD0b
PRV_KEY=0fecaca422f258ca76380306e209c0c88e75beb5f18b3ecad79fae087d90ca1f
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test ZeroValue_TransactionCALL_ToEmpty_OOGRevert_Paris (src/BlockchainTestsFiller/InvalidBlocks/bcStateTests/ZeroValue_TransactionCALL_ToEmpty_OOGRevert_ParisFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[ZeroValue_TransactionCALL_ToEmpty_OOGRevert_Paris] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x434F998Bfd7E5A08c1de6D4c70B424AE09bBa981) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x434F998Bfd7E5A08c1de6D4c70B424AE09bBa981 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[ZeroValue_TransactionCALL_ToEmpty_OOGRevert_Paris] Processing transaction number 122 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x434F998Bfd7E5A08c1de6D4c70B424AE09bBa981) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key bc11c1a9300464037ebf1c5412b5064f8ac041ff0ace1ec707ea37b64544b0f7 --timeout 20 --value 0 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

