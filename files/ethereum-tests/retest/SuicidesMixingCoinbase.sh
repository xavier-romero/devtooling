# PRV_KEY for master sender 0xABEfc3F8c78B29f37E6A9BBC126cb477edAE2eDd
PRV_KEY=0803eba5f466c248f2bc12b2738ac388a322e9db88e933e98644ceb5cb89a77f
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test SuicidesMixingCoinbase (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/SuicidesMixingCoinbaseFiller.json)"

AMOUNT=$((2*150000*2*$GAS_PRICE+20))
echo "[SuicidesMixingCoinbase] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x870dfEec618fe2fb01eEfC306A323EE74Ad41A87) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x870dfEec618fe2fb01eEfC306A323EE74Ad41A87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[SuicidesMixingCoinbase] Creating receiver 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b with code and balance 1000..."
ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000 --create 6300000017601260003963000000176000F373c94f5374fce5edbc8e2a8697c15331677e6ebf0bff00 | jq -r .contractAddress)
echo $ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B

echo "[SuicidesMixingCoinbase] Creating receiver 0xb24f5374fce5edbc8e2a8697c15331677e6ebf0b with code and balance 1000..."
ADDR_B24F5374FCE5EDBC8E2A8697C15331677E6EBF0B=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 1000 --create 6300000017601260003963000000176000F373c24f5374fce5edbc8e2a8697c15331677e6ebf0bff00 | jq -r .contractAddress)
echo $ADDR_B24F5374FCE5EDBC8E2A8697C15331677E6EBF0B

echo "[SuicidesMixingCoinbase] Processing transaction number 723 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x870dfEec618fe2fb01eEfC306A323EE74Ad41A87) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key b387b681efcb90db3c5e70b4fe8b0e7859a7177ce0b248595a4c500dbe7959db --timeout 20 --value 10 $ADDR_B94F5374FCE5EDBC8E2A8697C15331677E6EBF0B | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[SuicidesMixingCoinbase] Processing transaction number 724 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x870dfEec618fe2fb01eEfC306A323EE74Ad41A87) to 0xb24f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key b387b681efcb90db3c5e70b4fe8b0e7859a7177ce0b248595a4c500dbe7959db --timeout 20 --value 10 $ADDR_B24F5374FCE5EDBC8E2A8697C15331677E6EBF0B | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

