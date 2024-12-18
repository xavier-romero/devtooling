# PRV_KEY for master sender 0x4B7BEC04E60490FB8E9d46Bfd26521ef2f3F9C46
PRV_KEY=a936571c3253871532e9f18a7d8225dde05bec1703064c1cbbf4fbd4724bba45
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test ZeroValue_TransactionCALL_ToNonZeroBalance_OOGRevert (src/BlockchainTestsFiller/InvalidBlocks/bcStateTests/ZeroValue_TransactionCALL_ToNonZeroBalance_OOGRevertFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[ZeroValue_TransactionCALL_ToNonZeroBalance_OOGRevert] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x542Cc7694516a31051681EE34490456640998010) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x542Cc7694516a31051681EE34490456640998010 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[ZeroValue_TransactionCALL_ToNonZeroBalance_OOGRevert] Processing transaction number 151 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x542Cc7694516a31051681EE34490456640998010) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key e2aa9a6f774d933f93f28f3c07ce048e51c001efa10c7ea830e97382a63cd370 --timeout 20 --value 0 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

