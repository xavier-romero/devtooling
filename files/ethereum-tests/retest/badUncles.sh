# PRV_KEY for master sender 0x96F2D6fd9D7D3a9D12c52F9A8662F08f32f2b7D8
PRV_KEY=81cd3bf8f67cc6b4742ab258d28bcc5f14baeff3a57ab7b0616b75000e1d866a
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test badUncles (src/BlockchainTestsFiller/InvalidBlocks/bcEIP1559/badUnclesFiller.yml)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[badUncles] Funding sender 0x9858EfFD232B4033E47d90003D41EC34EcaEda94(remapped to 0x6F7d92CA17AB3526F0B7b0778Fc45Ec77264d3a2) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x6F7d92CA17AB3526F0B7b0778Fc45Ec77264d3a2 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[badUncles] Creating receiver 0x1111111111111111111111111111111111111111 with code and balance 1099511627776..."
ADDR_1111111111111111111111111111111111111111=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1099511627776 --create 6300000001601260003963000000016000F3fe | jq -r .contractAddress)
echo $ADDR_1111111111111111111111111111111111111111

echo "[badUncles] Processing transaction number 936 from 0x9858EfFD232B4033E47d90003D41EC34EcaEda94(remapped to 0x6F7d92CA17AB3526F0B7b0778Fc45Ec77264d3a2) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key c5b0e306eb84351677426fd7b13b9b4f7c84f5d15f966e2e47b384d85ab8c990 --timeout 20 --value 0 0xcccccccccccccccccccccccccccccccccccccccc | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

