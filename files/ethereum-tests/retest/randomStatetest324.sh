# PRV_KEY for master sender 0x6e5ABc90873B518a333E34bdCd947eeCBDe58017
PRV_KEY=32dee0df62c6d243ab4f2a5333d4df6079b261be96daedb57365927b6000ba0d
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test randomStatetest324 (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/randomStatetest324Filler.json)"

AMOUNT=$((2*150000*1*$GAS_PRICE+1211446051))
echo "[randomStatetest324] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0Cfe738c924016Db7d98Cbe10177D81d94701f17) with $AMOUNT"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x0Cfe738c924016Db7d98Cbe10177D81d94701f17 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[randomStatetest324] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 0..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 0 --create 63000000d2601260003963000000d26000F37f00000000000000000000000000000000000000000000000000000000000000007f000000000000000000000000000000000000000000000000000000000000c3507f000000000000000000000000ffffffffffffffffffffffffffffffffffffffff827ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe7f0000000000000000000000000000000000000000000000000000000000000001457fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff620a445643a20543a055 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[randomStatetest324] Creating receiver 0x945304eb96065b2a98b57a48a06ae28d285a71b5 with code and balance 46..."
ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5=$(cast send --json --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 46 --create 6300000011601260003963000000116000F36000355415600957005b60203560003555 | jq -r .contractAddress)
echo $ADDR_945304EB96065B2A98B57A48A06AE28D285A71B5

echo "[randomStatetest324] Processing transaction number 742 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x0Cfe738c924016Db7d98Cbe10177D81d94701f17) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send --json --legacy --rpc-url $RPC_URL --private-key 4d979ae06a57cee19703dd32c4faa790a6fcc1aba4eb2c5f660713713061f394 --timeout 20 --value 1211446051 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 0x7f00000000000000000000000000000000000000000000000000000000000000007f000000000000000000000000000000000000000000000000000000000000c3507f000000000000000000000000ffffffffffffffffffffffffffffffffffffffff827ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe7f0000000000000000000000000000000000000000000000000000000000000001457fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff620a445643a20543a0 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

