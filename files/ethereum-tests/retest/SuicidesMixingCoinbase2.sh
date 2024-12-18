# PRV_KEY for master sender 0x60d72662d6F9Aa172E91F5e74C9Fa7d879cb9890
PRV_KEY=e1b94cc4d170835159985ea873e0130cb62d75c253c84ff5eaa80a85e16d0346
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test SuicidesMixingCoinbase2 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/SuicidesMixingCoinbase2Filler.json)"

AMOUNT=$((2*150000*2*$GAS_PRICE+20))
echo "[SuicidesMixingCoinbase2] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x37F3859fED150bBb769c63E480FaCb86C1E22D8b) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x37F3859fED150bBb769c63E480FaCb86C1E22D8b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[SuicidesMixingCoinbase2] Creating receiver 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b with code and balance 1000..."
ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000 --create 6300000017601260003963000000176000F373c94f5374fce5edbc8e2a8697c15331677e6ebf0bff00 | jq -r .contractAddress)
echo $ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B

echo "[SuicidesMixingCoinbase2] Creating receiver 0xb24f5374fce5edbc8e2a8697c15331677e6ebf0b with code and balance 1000..."
ADDR_B24F5374FCE5EDBC8E2A8697C15331677E6EBF0B=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000 --create 6300000017601260003963000000176000F373c24f5374fce5edbc8e2a8697c15331677e6ebf0bff00 | jq -r .contractAddress)
echo $ADDR_B24F5374FCE5EDBC8E2A8697C15331677E6EBF0B

echo "[SuicidesMixingCoinbase2] Processing transaction number 720 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x37F3859fED150bBb769c63E480FaCb86C1E22D8b) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ee5aed70ead23904f06c390548df2b5af17afe6702cb619282c064ad9e0432fb --timeout 20 --value 10 $ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[SuicidesMixingCoinbase2] Processing transaction number 721 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x37F3859fED150bBb769c63E480FaCb86C1E22D8b) to 0xb24f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key ee5aed70ead23904f06c390548df2b5af17afe6702cb619282c064ad9e0432fb --timeout 20 --value 10 $ADDR_B24F5374FCE5EDBC8E2A8697C15331677E6EBF0B | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

