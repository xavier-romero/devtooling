# PRV_KEY for master sender 0x98CD61F25c3aE3594F108B472C8d0c4Ef126f4D3
PRV_KEY=fe4c12717c848117a6d59443d20453ac88b89e60e5df4c158b06c21256a353c2
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test gasLimitTooHighExactBound (src/BlockchainTestsFiller/InvalidBlocks/bcUncleHeaderValidity/gasLimitTooHighExactBoundFiller.json)"

AMOUNT=$((2*150000*3*$GAS_PRICE+30))
echo "[gasLimitTooHighExactBound] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x2594eE22F3a8364074dcecd3C990Efe4EE77dD68) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x2594eE22F3a8364074dcecd3C990Efe4EE77dD68 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[gasLimitTooHighExactBound] Processing transaction number 40 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x2594eE22F3a8364074dcecd3C990Efe4EE77dD68) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key c3369cfab4eaa392e237d6317f8e4aaf5ed9beeff3c35f67d72738779f259561 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[gasLimitTooHighExactBound] Processing transaction number 41 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x2594eE22F3a8364074dcecd3C990Efe4EE77dD68) to 0x0000000000000000000000000000000000000000"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key c3369cfab4eaa392e237d6317f8e4aaf5ed9beeff3c35f67d72738779f259561 --timeout 20 --value 10 0x0000000000000000000000000000000000000000 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[gasLimitTooHighExactBound] Processing transaction number 42 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x2594eE22F3a8364074dcecd3C990Efe4EE77dD68) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key c3369cfab4eaa392e237d6317f8e4aaf5ed9beeff3c35f67d72738779f259561 --timeout 20 --value 10 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

