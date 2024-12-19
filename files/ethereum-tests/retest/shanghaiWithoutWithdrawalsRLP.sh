# PRV_KEY for master sender 0x1994B1e68b9B221fe33360cF457256056bCFbd4F
PRV_KEY=8424611acce5cea3d9a11df32eab59453f19c2475544ac8f1675f988960fccb4
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test shanghaiWithoutWithdrawalsRLP (src/BlockchainTestsFiller/InvalidBlocks/bc4895-withdrawals/shanghaiWithoutWithdrawalsRLPFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[shanghaiWithoutWithdrawalsRLP] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xA8Af843C400a2149D5Cb271fE4C9Bee2646839Df) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xA8Af843C400a2149D5Cb271fE4C9Bee2646839Df | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[shanghaiWithoutWithdrawalsRLP] Processing transaction number 155 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xA8Af843C400a2149D5Cb271fE4C9Bee2646839Df) to None"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 0df970bb181e4d16bbb797eff3aef45876bdcd32c3e8b08cee9fbbce4f803c85 --timeout 20 --value 0 --create 0x600160015500 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

