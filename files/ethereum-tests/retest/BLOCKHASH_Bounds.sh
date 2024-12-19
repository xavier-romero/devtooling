# PRV_KEY for master sender 0x58aa8b41ab068Cab4f6C8F94759319fB947f3869
PRV_KEY=90b3c411b73030feddb3fbb27ffc45a84070cba7bf2b25f62ede004d34a7608e
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test BLOCKHASH_Bounds (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/BLOCKHASH_BoundsFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+1))
echo "[BLOCKHASH_Bounds] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xA829419998e8a108f57E27AC6EbD4fcE7c22A615) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xA829419998e8a108f57E27AC6EbD4fcE7c22A615 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+1))
echo "[BLOCKHASH_Bounds] Funding sender 0x55d786DF68385b59b919E0BfeE2A8Ada2D23Ecf8(remapped to 0x6CFaDde36c4e08B1764b6Ea86a791AC34Ff04e6d) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x6CFaDde36c4e08B1764b6Ea86a791AC34Ff04e6d | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+1))
echo "[BLOCKHASH_Bounds] Funding sender 0x37c5D39d78433A054B0A470Ade8ac1998aBfcC06(remapped to 0x84AF0F22CA2D5bCC1577734bF518458e62538D51) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x84AF0F22CA2D5bCC1577734bF518458e62538D51 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[BLOCKHASH_Bounds] Creating receiver 0x1000000000000000000000000000000000000000 with code and balance 0..."
ADDR_1000000000000000000000000000000000000000=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6300000056601260003963000000566000F360004060005563ffffffff4060015567ffffffffffffffff406002556fffffffffffffffffffffffffffffffff406003557fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff40600455 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000000

echo "[BLOCKHASH_Bounds] Creating receiver 0x1000000000000000000000000000000000000001 with code and balance 0..."
ADDR_1000000000000000000000000000000000000001=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6300000056601260003963000000566000F360004060005563ffffffff4060015567ffffffffffffffff406002556fffffffffffffffffffffffffffffffff406003557fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff40600455 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000001

echo "[BLOCKHASH_Bounds] Processing transaction number 761 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xA829419998e8a108f57E27AC6EbD4fcE7c22A615) to 0x1000000000000000000000000000000000000000"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 896f4f8fea3669b9789a6ea2d4046d9b854108ca83809d2f1d8a2d79b68f10cf --timeout 20 --value 1 $ADDR_1000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[BLOCKHASH_Bounds] Processing transaction number 762 from 0x55d786DF68385b59b919E0BfeE2A8Ada2D23Ecf8(remapped to 0x6CFaDde36c4e08B1764b6Ea86a791AC34Ff04e6d) to 0x1000000000000000000000000000000000000001"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 92ccb8d976d02d631da21f247141852aa0d7b5a865d537435b34421f01655d53 --timeout 20 --value 1 $ADDR_1000000000000000000000000000000000000001 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[BLOCKHASH_Bounds] Processing transaction number 763 from 0x37c5D39d78433A054B0A470Ade8ac1998aBfcC06(remapped to 0x84AF0F22CA2D5bCC1577734bF518458e62538D51) to 0x1000000000000000000000000000000000000002"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 1ad1cdd4bdb4f93804e8dc31df8b86e7c415c5a02e52b19f2a240d2d08a4b0ad --timeout 20 --value 1 0x1000000000000000000000000000000000000002 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

