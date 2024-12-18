# PRV_KEY for master sender 0x28FeBd413DdAbAEBb944558D0c64969405D269DF
PRV_KEY=74609fad4263f0dee23e06fc271a1223e76dbea4140b3565b76a09842a737639
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test OverflowGasRequire (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/OverflowGasRequireFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[OverflowGasRequire] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8dcb5e3134013681F395B13f9CCacc32b3fdc06A) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x8dcb5e3134013681F395B13f9CCacc32b3fdc06A | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[OverflowGasRequire] Processing transaction number 757 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x8dcb5e3134013681F395B13f9CCacc32b3fdc06A) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 83369a66b6597226728a1c42f68c7d361587716f9ed179e7ef561dd66c8f46c5 --timeout 20 --value 0 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b 0x3240349548983454 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

