# PRV_KEY for master sender 0xFAb5572979a3CE4c338c3f9409eF0036Bd165364
PRV_KEY=823300982dfbd11bb9e5095d04b0be2a983b5b8694fbde334865f64f6d4ff35b
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test difficultyFormula (src/BlockchainTestsFiller/TransitionTests/bcArrowGlacierToParis/difficultyFormulaFiller.yml)"

AMOUNT=$((2*150000*9*$GAS_PRICE+0))
echo "[difficultyFormula] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xA9EAe3b5bf77C61724508b60e8bb50Ec677b2FB9) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0xA9EAe3b5bf77C61724508b60e8bb50Ec677b2FB9 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[difficultyFormula] Creating receiver 0xcccccccccccccccccccccccccccccccccccccccc with code and balance 195144142..."
ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 195144142 --create 6160a76001556160a76002556160a76003556160a76004556160a76005556160a76006556160a76007556160a76008556160a76009556300000003604860003963000000036000F3444355 | jq -r .contractAddress)
echo $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

echo "[difficultyFormula] Processing transaction number 1810 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xA9EAe3b5bf77C61724508b60e8bb50Ec677b2FB9) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 38d06acbb74a7f617b1657e90510d454fb97269b6783f32f13457cde8d2f9c9d --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[difficultyFormula] Processing transaction number 1811 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xA9EAe3b5bf77C61724508b60e8bb50Ec677b2FB9) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 38d06acbb74a7f617b1657e90510d454fb97269b6783f32f13457cde8d2f9c9d --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[difficultyFormula] Processing transaction number 1812 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xA9EAe3b5bf77C61724508b60e8bb50Ec677b2FB9) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 38d06acbb74a7f617b1657e90510d454fb97269b6783f32f13457cde8d2f9c9d --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[difficultyFormula] Processing transaction number 1813 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xA9EAe3b5bf77C61724508b60e8bb50Ec677b2FB9) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 38d06acbb74a7f617b1657e90510d454fb97269b6783f32f13457cde8d2f9c9d --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[difficultyFormula] Processing transaction number 1814 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xA9EAe3b5bf77C61724508b60e8bb50Ec677b2FB9) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 38d06acbb74a7f617b1657e90510d454fb97269b6783f32f13457cde8d2f9c9d --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[difficultyFormula] Processing transaction number 1815 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xA9EAe3b5bf77C61724508b60e8bb50Ec677b2FB9) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 38d06acbb74a7f617b1657e90510d454fb97269b6783f32f13457cde8d2f9c9d --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[difficultyFormula] Processing transaction number 1816 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xA9EAe3b5bf77C61724508b60e8bb50Ec677b2FB9) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 38d06acbb74a7f617b1657e90510d454fb97269b6783f32f13457cde8d2f9c9d --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[difficultyFormula] Processing transaction number 1817 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xA9EAe3b5bf77C61724508b60e8bb50Ec677b2FB9) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 38d06acbb74a7f617b1657e90510d454fb97269b6783f32f13457cde8d2f9c9d --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[difficultyFormula] Processing transaction number 1818 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0xA9EAe3b5bf77C61724508b60e8bb50Ec677b2FB9) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 38d06acbb74a7f617b1657e90510d454fb97269b6783f32f13457cde8d2f9c9d --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

