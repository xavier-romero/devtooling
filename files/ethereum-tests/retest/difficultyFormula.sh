# PRV_KEY for master sender 0xC67463A0945B68a3De83cE8caC6dBB65815B80A2
PRV_KEY=bc1620d919dd5c5d48324d30e8919e35e48ec62c5ec8ca1b2e3fe6301f9f8d5d
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test difficultyFormula (src/BlockchainTestsFiller/TransitionTests/bcArrowGlacierToParis/difficultyFormulaFiller.yml)"

AMOUNT=$((2*150000*9*$GAS_PRICE+0))
echo "[difficultyFormula] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x9e8A665BA0F6f6E6A69ecB1ed8Fcbf76e7Aa7EFb) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x9e8A665BA0F6f6E6A69ecB1ed8Fcbf76e7Aa7EFb | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[difficultyFormula] Creating receiver 0xcccccccccccccccccccccccccccccccccccccccc with code and balance 195144142..."
ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 195144142 --create 6160a76001556160a76002556160a76003556160a76004556160a76005556160a76006556160a76007556160a76008556160a76009556300000003604860003963000000036000F3444355 | jq -r .contractAddress)
echo $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

echo "[difficultyFormula] Processing transaction number 1810 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x9e8A665BA0F6f6E6A69ecB1ed8Fcbf76e7Aa7EFb) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 866f6fcc2a22e300c918c7348ffdc75dfe405dcbf2f5e18d313816d8e5df9ea8 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[difficultyFormula] Processing transaction number 1811 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x9e8A665BA0F6f6E6A69ecB1ed8Fcbf76e7Aa7EFb) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 866f6fcc2a22e300c918c7348ffdc75dfe405dcbf2f5e18d313816d8e5df9ea8 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[difficultyFormula] Processing transaction number 1812 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x9e8A665BA0F6f6E6A69ecB1ed8Fcbf76e7Aa7EFb) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 866f6fcc2a22e300c918c7348ffdc75dfe405dcbf2f5e18d313816d8e5df9ea8 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[difficultyFormula] Processing transaction number 1813 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x9e8A665BA0F6f6E6A69ecB1ed8Fcbf76e7Aa7EFb) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 866f6fcc2a22e300c918c7348ffdc75dfe405dcbf2f5e18d313816d8e5df9ea8 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[difficultyFormula] Processing transaction number 1814 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x9e8A665BA0F6f6E6A69ecB1ed8Fcbf76e7Aa7EFb) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 866f6fcc2a22e300c918c7348ffdc75dfe405dcbf2f5e18d313816d8e5df9ea8 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[difficultyFormula] Processing transaction number 1815 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x9e8A665BA0F6f6E6A69ecB1ed8Fcbf76e7Aa7EFb) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 866f6fcc2a22e300c918c7348ffdc75dfe405dcbf2f5e18d313816d8e5df9ea8 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[difficultyFormula] Processing transaction number 1816 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x9e8A665BA0F6f6E6A69ecB1ed8Fcbf76e7Aa7EFb) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 866f6fcc2a22e300c918c7348ffdc75dfe405dcbf2f5e18d313816d8e5df9ea8 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[difficultyFormula] Processing transaction number 1817 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x9e8A665BA0F6f6E6A69ecB1ed8Fcbf76e7Aa7EFb) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 866f6fcc2a22e300c918c7348ffdc75dfe405dcbf2f5e18d313816d8e5df9ea8 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[difficultyFormula] Processing transaction number 1818 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x9e8A665BA0F6f6E6A69ecB1ed8Fcbf76e7Aa7EFb) to 0xcccccccccccccccccccccccccccccccccccccccc"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 866f6fcc2a22e300c918c7348ffdc75dfe405dcbf2f5e18d313816d8e5df9ea8 --timeout 20 --value 0 $ADDR_CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

