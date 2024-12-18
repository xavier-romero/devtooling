# PRV_KEY for master sender 0xD8Ea41B42892f89331b1BF21b117e980959904BF
PRV_KEY=04766418b3236f5a123d06bea035825b89848e392b1ebd3f58f2704cdfa8110a
GAS_PRICE=$(cast gas-price --rpc-url $RPC_URL)

echo "Test simpleSuicide (src/BlockchainTestsFiller/ValidBlocks/bcStateTests/simpleSuicideFiller.json)"

AMOUNT=$((2*150000*2*$GAS_PRICE+1010))
echo "[simpleSuicide] Funding sender 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x19A4E1d770Ac8AFa3BF1BfBA1dbF71878C162942) with $AMOUNT"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --value $AMOUNT 0x19A4E1d770Ac8AFa3BF1BfBA1dbF71878C162942 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[simpleSuicide] Creating receiver 0x095e7baea6a6c7c4c2dfeb977efac326af552d87 with code and balance 100000..."
ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87=$(cast send -j --legacy --rpc-url $RPC_URL --private-key $PRV_KEY --timeout 20 --value 100000 --create 6300000017601260003963000000176000F373a94f5374fce5edbc8e2a8697c15331677e6ebf0bff00 | jq -r .contractAddress)
echo $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87

echo "[simpleSuicide] Processing transaction number 745 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x19A4E1d770Ac8AFa3BF1BfBA1dbF71878C162942) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 3d465c2e39ce15980bcd9635fc0a44d15d323d62d2ee7c412bb9c88fa490e847 --timeout 20 --value 10 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

echo "[simpleSuicide] Processing transaction number 746 from 0xa94f5374Fce5edBC8E2a8697C15331677e6EbF0B(remapped to 0x19A4E1d770Ac8AFa3BF1BfBA1dbF71878C162942) to 0x095e7baea6a6c7c4c2dfeb977efac326af552d87"...
STATUS=$(cast send -j --legacy --rpc-url $RPC_URL --private-key 3d465c2e39ce15980bcd9635fc0a44d15d323d62d2ee7c412bb9c88fa490e847 --timeout 20 --value 1000 $ADDR_095E7BAEA6A6C7C4C2DFEB977EFAC326AF552D87 | jq -r .status)
if [ "$STATUS" == "0x1" ]; then echo "Success"; else echo "FAIL"; fi

