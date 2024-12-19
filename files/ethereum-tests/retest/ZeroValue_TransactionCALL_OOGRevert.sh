# PRV_KEY for master sender 0x1B293617E835A58ce415f0AaDC5E7f0856Fb82F7
PRV_KEY=fab83e8a72463ae9a68fbbffa803f6221bd931f556977b37d39ad3651269a494
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test ZeroValue_TransactionCALL_OOGRevert (src/BlockchainTestsFiller/InvalidBlocks/bcStateTests/ZeroValue_TransactionCALL_OOGRevertFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+0))
echo "[ZeroValue_TransactionCALL_OOGRevert] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x2d47C970D90Cde0347259aA0FFD2BdCf49c4fFfF) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x2d47C970D90Cde0347259aA0FFD2BdCf49c4fFfF | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[ZeroValue_TransactionCALL_OOGRevert] Processing transaction number 132 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x2d47C970D90Cde0347259aA0FFD2BdCf49c4fFfF) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key a78ab97d7eb0cd124b9f00553251fab5b170909ed4886472428fd86aae753964 --timeout 20 --value 0 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

