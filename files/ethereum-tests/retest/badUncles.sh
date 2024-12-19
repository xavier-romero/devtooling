# PRV_KEY for master sender 0x45CD7AE159eF180E8956C2086Da3a883848A713d
PRV_KEY=d146c4fc1e5eb41ee5a1b7296898f236e765bd93305e05ba0d0168960f448ad3
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test badUncles (src/BlockchainTestsFiller/InvalidBlocks/bcEIP1559/badUnclesFiller.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[badUncles] Funding sender 0x9858EfFD232B4033E47d90003D41EC34EcaEda94(remapped to 0x87a95B0eE0f5E1b0011426e9e26D151BeeFa9398) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x87a95B0eE0f5E1b0011426e9e26D151BeeFa9398 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[badUncles] Creating receiver 0x1111111111111111111111111111111111111111 with code and balance 1099511627776..."
ADDR_1111111111111111111111111111111111111111=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1099511627776 --create 6300000001601260003963000000016000F3fe | jq -r .contractAddress)
echo $ADDR_1111111111111111111111111111111111111111

echo "[badUncles] Processing transaction number 936 from 0x9858EfFD232B4033E47d90003D41EC34EcaEda94(remapped to 0x87a95B0eE0f5E1b0011426e9e26D151BeeFa9398) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 42a40943ad0f414d866a26185e75e2a926b23b0511b1ce99d6258f705d2c3d4d --timeout 20 --value 0 0xcccccccccccccccccccccccccccccccccccccccc | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

