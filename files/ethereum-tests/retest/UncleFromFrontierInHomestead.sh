# PRV_KEY for master sender 0xC54385FE0c08963673776F0307159216407db6ed
PRV_KEY=e45b13a691050cb3895ad10e1d6a939280504d5cb2224e1bfdad60bb121e0c58
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test UncleFromFrontierInHomestead (src/BlockchainTestsFiller/TransitionTests/bcFrontierToHomestead/UncleFromFrontierInHomesteadFiller.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+10))
echo "[UncleFromFrontierInHomestead] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xFF229f8236a4CEd2a089C90bC7b03a3F0Cd82b59) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xFF229f8236a4CEd2a089C90bC7b03a3F0Cd82b59 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[UncleFromFrontierInHomestead] Processing transaction number 878 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xFF229f8236a4CEd2a089C90bC7b03a3F0Cd82b59) to 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 189dafe0b4d1ee8d79762aaacbdf7eb534c36680df9c572154009dd012514fd6 --timeout 20 --value 10 0xb94f5374fce5edbc8e2a8697c15331677e6ebf0b | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

