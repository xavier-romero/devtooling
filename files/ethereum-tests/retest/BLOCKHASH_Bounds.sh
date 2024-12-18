# PRV_KEY for master sender 0x924889fF6c05b9503d51AB064F4416d79A5155A2
PRV_KEY=1896eb257f382ade4ccd390beaae57476482ebdc105e63b01727940cdb3951f4
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test BLOCKHASH_Bounds (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/BLOCKHASH_BoundsFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+1))
echo "[BLOCKHASH_Bounds] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xeA342d6be7DB2dD28C728c1e2E48f39f7107aea6) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xeA342d6be7DB2dD28C728c1e2E48f39f7107aea6 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+1))
echo "[BLOCKHASH_Bounds] Funding sender 0x55d786DF68385b59b919E0BfeE2A8Ada2D23Ecf8(remapped to 0xF8B07DE54ac549bF9B057d891ae85c2b7a7E03EF) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xF8B07DE54ac549bF9B057d891ae85c2b7a7E03EF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

AMOUNT=$((2*150000*1*$GAS_PRICE+1))
echo "[BLOCKHASH_Bounds] Funding sender 0x37c5D39d78433A054B0A470Ade8ac1998aBfcC06(remapped to 0xAb034A2913a0b2df9081555c6313269aec303430) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xAb034A2913a0b2df9081555c6313269aec303430 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[BLOCKHASH_Bounds] Creating receiver 0x1000000000000000000000000000000000000000 with code and balance 0..."
ADDR_1000000000000000000000000000000000000000=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6300000056601260003963000000566000F360004060005563ffffffff4060015567ffffffffffffffff406002556fffffffffffffffffffffffffffffffff406003557fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff40600455 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000000

echo "[BLOCKHASH_Bounds] Creating receiver 0x1000000000000000000000000000000000000001 with code and balance 0..."
ADDR_1000000000000000000000000000000000000001=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 6300000056601260003963000000566000F360004060005563ffffffff4060015567ffffffffffffffff406002556fffffffffffffffffffffffffffffffff406003557fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff40600455 | jq -r .contractAddress)
echo $ADDR_1000000000000000000000000000000000000001

echo "[BLOCKHASH_Bounds] Processing transaction number 761 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xeA342d6be7DB2dD28C728c1e2E48f39f7107aea6) to 0x1000000000000000000000000000000000000000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key d12ea019d0567ba8dcf1530092bbe6d2ca2c1f40d5890f619ddd5e3e024950c2 --timeout 20 --value 1 $ADDR_1000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[BLOCKHASH_Bounds] Processing transaction number 762 from 0x55d786DF68385b59b919E0BfeE2A8Ada2D23Ecf8(remapped to 0xF8B07DE54ac549bF9B057d891ae85c2b7a7E03EF) to 0x1000000000000000000000000000000000000001"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 79ffbf3b2b1015566c66df1841c811aea47a0faf1119a3dfcc0c3f94cb39b4f6 --timeout 20 --value 1 $ADDR_1000000000000000000000000000000000000001 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[BLOCKHASH_Bounds] Processing transaction number 763 from 0x37c5D39d78433A054B0A470Ade8ac1998aBfcC06(remapped to 0xAb034A2913a0b2df9081555c6313269aec303430) to 0x1000000000000000000000000000000000000002"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 92af61da85d21320cf9b1e4ef4284eece766aeebdbd30208e0857092c5484047 --timeout 20 --value 1 0x1000000000000000000000000000000000000002 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

