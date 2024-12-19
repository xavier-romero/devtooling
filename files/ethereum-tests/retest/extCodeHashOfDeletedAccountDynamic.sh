# PRV_KEY for master sender 0x56268A3604c056DEF1B6F6D5B18F885C6ac01504
PRV_KEY=4b61623df44f5dcf7f64ecadcc2e6335302a7ab9f1e998ca9f000888e882a9cb
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test extCodeHashOfDeletedAccountDynamic (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/extCodeHashOfDeletedAccountDynamicFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+0))
echo "[extCodeHashOfDeletedAccountDynamic] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0BA5bBe4d9bdAabB8b81e0B63dF22B14962F83c7) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x0BA5bBe4d9bdAabB8b81e0B63dF22B14962F83c7 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[extCodeHashOfDeletedAccountDynamic] Creating receiver 0x1000000000000000000000000000000000000000 with code and balance 1000..."
ADDR_1000000000000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000 --create 6300000044601260003963000000446000F36010601180603360803960806001f56005556005543f6000556005543b6001556020600060006005543c6000516002550000fe600480600d6000396000f300fe6001ff00 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000000

echo "[extCodeHashOfDeletedAccountDynamic] Creating receiver 0x1100000000000000000000000000000000000000 with code and balance 1000..."
ADDR_1100000000000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000 --create 6300000025601260003963000000256000F360006000600060006000734f98c6f3e2a2f459371291dedb508ef50f153994620186a0f100 | jq -r .contractAddress)
echo $ADDR_1100000000000000000000000000000000000000

echo "[extCodeHashOfDeletedAccountDynamic] Creating receiver 0x1200000000000000000000000000000000000000 with code and balance 1000..."
ADDR_1200000000000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000 --create 6300000038601260003963000000386000F3734f98c6f3e2a2f459371291dedb508ef50f1539946005556005543f6000556005543b6001556020600060006005543c6000516002550000 | jq -r .contractAddress)
echo $ADDR_1200000000000000000000000000000000000000

echo "[extCodeHashOfDeletedAccountDynamic] Processing transaction number 754 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0BA5bBe4d9bdAabB8b81e0B63dF22B14962F83c7) to 0x1000000000000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key da1be86c451928a11968a2b15c51164d132854470873820422c7aec43a7e14b3 --timeout 20 --value 0 $ADDR_1000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[extCodeHashOfDeletedAccountDynamic] Processing transaction number 755 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0BA5bBe4d9bdAabB8b81e0B63dF22B14962F83c7) to 0x1100000000000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key da1be86c451928a11968a2b15c51164d132854470873820422c7aec43a7e14b3 --timeout 20 --value 0 $ADDR_1100000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[extCodeHashOfDeletedAccountDynamic] Processing transaction number 756 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0BA5bBe4d9bdAabB8b81e0B63dF22B14962F83c7) to 0x1200000000000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key da1be86c451928a11968a2b15c51164d132854470873820422c7aec43a7e14b3 --timeout 20 --value 0 $ADDR_1200000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

