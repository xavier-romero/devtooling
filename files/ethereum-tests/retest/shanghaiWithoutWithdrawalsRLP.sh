# PRV_KEY for master sender 0xd27554a7469DbB50F63a91cf059F53f8DDcFfd1f
PRV_KEY=63d4b7853eb31e09dfb80d7921f98505150b371473179a289f77ac55c4cd86ee
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test shanghaiWithoutWithdrawalsRLP (src/BlockchainTestsFiller/InvalidBlocks/bc4895-withdrawals/shanghaiWithoutWithdrawalsRLPFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[shanghaiWithoutWithdrawalsRLP] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x6a37F3e6D70E9e30812B0ec69E86c4a7bD056d60) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x6a37F3e6D70E9e30812B0ec69E86c4a7bD056d60 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[shanghaiWithoutWithdrawalsRLP] Processing transaction number 155 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x6a37F3e6D70E9e30812B0ec69E86c4a7bD056d60) to None"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key f2a578996b9fb9b175d2bf66819e0d75f3063ce2e85f68230daf6d00312eccc8 --timeout 20 --value 0 --create 0x600160015500 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

