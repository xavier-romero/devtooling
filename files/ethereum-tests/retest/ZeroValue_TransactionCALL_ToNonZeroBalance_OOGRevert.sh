# PRV_KEY for master sender 0x57DaBdeD5fc9b154306F051027132FeAEd053D26
PRV_KEY=d04e525fe78e7753726e8fe35cee675240c06f154082f8b27876b4254f695290
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test ZeroValue_TransactionCALL_ToNonZeroBalance_OOGRevert (src/BlockchainTestsFiller/InvalidBlocks/bcStateTests/ZeroValue_TransactionCALL_ToNonZeroBalance_OOGRevertFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[ZeroValue_TransactionCALL_ToNonZeroBalance_OOGRevert] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x194216B9Ab0FD238c4526cD4C403cBf4a8c38583) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x194216B9Ab0FD238c4526cD4C403cBf4a8c38583 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[ZeroValue_TransactionCALL_ToNonZeroBalance_OOGRevert] Processing transaction number 151 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x194216B9Ab0FD238c4526cD4C403cBf4a8c38583) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key b8fbe12f4e4036e9e5e78b3156cabc859c61c8bd8c3c813a15b9ff9b8ba8a2e6 --timeout 20 --value 0 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

